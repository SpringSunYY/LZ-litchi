package com.lz.framework.common.biz.infra.file.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 文件简单信息 vo
 *
 * @Project: LZ-Order
 * @Author: YY
 * @CreateTime: 2026-07-15  18:13
 * @Version: 1.0
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class FileSimpVo {
    private Long id;

    private String name;

    private String relativePath;
}
