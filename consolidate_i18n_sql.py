#!/usr/bin/env python3
"""
i18n SQL Consolidation Script

直接拼接所有 i18n/*.sql 文件内容到一个文件。

Usage:
    python consolidate_i18n_sql.py [project_root] [output_path]
"""

import os
import sys
from datetime import datetime
from pathlib import Path

BOM = "\ufeff"


def strip_bom(content: str) -> str:
    """去掉 UTF-8 BOM"""
    return content.lstrip(BOM)


def get_sort_key(rel_path: str) -> tuple:
    """排序：先按模块名，再按 errorCode -> validation -> field 分组。"""
    parts = rel_path.split("/")
    filename = parts[-1] if parts else ""
    if parts[0].startswith("litchi-module-"):
        module = parts[0][len("litchi-module-") :]
    elif parts[0] == "litchi-framework":
        module = "framework"
    else:
        module = parts[0]

    if filename == "errorCode.sql":
        order = 0
    elif filename == "validation.sql":
        order = 1
    elif filename == "field.sql":
        order = 2
    else:
        order = 9

    return (module, order, filename)


def consolidate(project_root: str, output_path: str):
    project_root = Path(project_root).resolve()

    # 收集所有 i18n 目录下的 .sql 文件
    sql_files: list[Path] = []
    skip_dirs = {
        "node_modules", "target", ".git", ".idea",
        ".cursor", ".mvn", "venv", ".venv", "__pycache__",
    }

    for root, dirs, files in os.walk(project_root):
        root_parts = Path(root).parts
        if skip_dirs & set(root_parts):
            continue
        if "i18n" not in root:
            continue
        for f in files:
            if f in ("errorCode.sql", "validation.sql", "field.sql"):
                sql_files.append(Path(root) / f)

    sql_files.sort(key=lambda p: get_sort_key(p.relative_to(project_root).as_posix()))
    print(f"[INFO] 找到 {len(sql_files)} 个 SQL 文件")

    with open(output_path, "w", encoding="utf-8") as out:
        out.write("-- =============================================\n")
        out.write("-- i18n SQL 合并文件\n")
        out.write(f"-- 生成时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        out.write("-- =============================================\n\n")

        for sf in sql_files:
            rel = sf.relative_to(project_root).as_posix()
            try:
                content = strip_bom(sf.read_text(encoding="utf-8"))
            except Exception as e:
                print(f"[WARN] 无法读取 {rel}: {e}")
                continue

            out.write(f"-- ===== {rel} =====\n")
            out.write(content)
            out.write("\n")

    print(f"[INFO] 输出文件: {output_path}")


if __name__ == "__main__":
    project_root = sys.argv[1] if len(sys.argv) > 1 else "."
    output_path = sys.argv[2] if len(sys.argv) > 2 else "i18n_consolidated.sql"
    consolidate(project_root, output_path)
