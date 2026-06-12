package com.lz.framework.ip.core.utils;

import cn.hutool.core.util.StrUtil;
import com.lz.framework.common.biz.infra.area.AreaCommonApi;
import com.lz.framework.common.biz.infra.area.dto.AreaSimpleVO;
import com.lz.framework.ip.core.Area;
import com.lz.framework.ip.core.enums.AreaTypeEnum;
import lombok.NonNull;
import lombok.extern.slf4j.Slf4j;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

import static com.lz.framework.common.util.collection.CollectionUtils.convertList;
import static com.lz.framework.common.util.collection.CollectionUtils.findFirst;

/**
 * 区域工具类
 *
 * 数据来源：数据库中的 infra_area 表，通过 AreaCommonApi 获取
 *
 * @author 荔枝源码
 */
@Slf4j
public class AreaUtils {

    /**
     * Area 内存缓存，提升访问速度
     * key: 行政编码
     */
    private static Map<String, Area> areas;

    /**
     * 静态 API 引用
     */
    private static AreaCommonApi areaCommonApi;

    /**
     * 设置 API 实现（供外部调用初始化）
     */
    public static void init(AreaCommonApi api) {
        AreaUtils.areaCommonApi = api;
    }

    public AreaUtils() {
        // 等待 API 初始化后再加载数据
        initAreas();
    }

    /**
     * 初始化地区数据
     */
    public static synchronized void initAreas() {
        if (areaCommonApi == null) {
            log.warn("[AreaUtils] AreaCommonApi 未设置，无法加载地区数据");
            return;
        }

        long now = System.currentTimeMillis();
        areas = new HashMap<>();

        // 添加全球节点
        areas.put(Area.CODE_GLOBAL, new Area(Area.CODE_GLOBAL, "全球", 0, null, new ArrayList<>()));

        // 从数据库加载数据
        List<AreaSimpleVO> areaVOList = areaCommonApi.getAllAreas();
        for (AreaSimpleVO vo : areaVOList) {
            if (StrUtil.isBlank(vo.getCode())) {
                continue;
            }
            // 根据 level 确定 type
            Integer type = convertLevelToType(vo.getLevel());
            Area area = new Area(vo.getCode(), vo.getName(), type, null, new ArrayList<>());
            areas.put(vo.getCode(), area);
        }

        // 构建父子关系：通过 parentCode 关联
        for (AreaSimpleVO vo : areaVOList) {
            if (StrUtil.isBlank(vo.getCode())) {
                continue;
            }
            Area area = areas.get(vo.getCode());
            if (area == null) continue;

            if (vo.getParentCode() != null && !vo.getParentCode().equals(Area.CODE_GLOBAL)) {
                // 通过 parentCode 查找父节点
                Area parentArea = areas.get(vo.getParentCode());
                if (parentArea != null) {
                    area.setParent(parentArea);
                    parentArea.getChildren().add(area);
                }
            }
        }

        log.info("[AreaUtils] 启动加载地区数据成功，共 {} 条，耗时 ({}) 毫秒", areas.size(), System.currentTimeMillis() - now);
    }

    /**
     * 将 level 转换为 AreaTypeEnum 的 type
     * AreaDO.level: 0-国家, 1-省份, 2-城市, 3-区县
     * AreaTypeEnum: 0-国家, 1-省份, 2-城市, 3-地区
     */
    private static Integer convertLevelToType(Integer level) {
        if (level == null) return AreaTypeEnum.COUNTRY.getType();
        return level;
    }

    /**
     * 获得指定编码对应的区域
     *
     * @param code 行政编码
     * @return 区域
     */
    public static Area getArea(String code) {
        if (code == null || areas == null) return null;
        return areas.get(code);
    }

    /**
     * 获得指定编码对应的区域
     *
     * @param id 区域编号（兼容旧接口，优先尝试 code 查找）
     * @return 区域
     * @deprecated 使用 {@link #getArea(String)} 代替
     */
    @Deprecated
    public static Area getArea(Integer id) {
        if (id == null) return null;
        return getArea(String.valueOf(id));
    }

    /**
     * 根据编码和类型获取上级区域编码
     *
     * @param code 区域编码
     * @param type 上级区域类型
     * @return 上级区域编码
     */
    public static String getParentCodeByType(String code, @NonNull AreaTypeEnum type) {
        for (int i = 0; i < Byte.MAX_VALUE; i++) {
            Area area = getArea(code);
            if (area == null) {
                return null;
            }
            // 情况一：匹配到，返回它
            if (type.getType().equals(area.getType())) {
                return area.getCode();
            }
            // 情况二：找到根节点，返回空
            if (area.getParent() == null || area.getParent().getCode() == null) {
                return null;
            }
            // 其它：继续向上查找
            code = area.getParent().getCode();
        }
        return null;
    }

    /**
     * 获得指定区域对应的编码
     *
     * @param pathStr 区域路径，支持以下格式：
     *                1. 层级路径，如：河南省/石家庄市/新华区
     *                2. ip2region 格式，如：Japan|Tokyo|Tokyo|KIDC LIMITED|JP
     * @return 区域
     */
    public static Area parseArea(String pathStr) {
        if (areas == null || pathStr == null) return null;
        String normalizedPath = pathStr.replace('|', '/');
        String[] paths = normalizedPath.split("/");
        Area currentArea = null;
        for (String path : paths) {
            path = path.trim();
            if (path.isEmpty() || path.equals("0")) continue;
            Area foundArea;
            String finalPath = path;
            if (currentArea == null) {
                foundArea = findFirst(areas.values(), item ->
                        item.getName().contains(finalPath) || finalPath.contains(item.getName()));
            } else {
                foundArea = findFirst(currentArea.getChildren(), item ->
                        item.getName().contains(finalPath) || finalPath.contains(item.getName()));
            }
            if (foundArea != null) {
                currentArea = foundArea;
            } else if (currentArea != null) {
                currentArea = null;
            }
        }
        return currentArea;
    }

    /**
     * 获取所有节点的全路径名称如：河南省/石家庄市/新华区
     *
     * @param areaList 地区列表
     * @return 所有节点的全路径名称
     */
    public static List<String> getAreaNodePathList(List<Area> areaList) {
        List<String> paths = new ArrayList<>();
        areaList.forEach(area -> getAreaNodePathList(area, "", paths));
        return paths;
    }

    /**
     * 构建一棵树的所有节点的全路径名称，并将其存储为 "祖先/父级/子级" 的形式
     *
     * @param node  父节点
     * @param path  全路径名称
     * @param paths 全路径名称列表，省份/城市/地区
     */
    private static void getAreaNodePathList(Area node, String path, List<String> paths) {
        if (node == null) {
            return;
        }
        // 构建当前节点的路径
        String currentPath = path.isEmpty() ? node.getName() : path + "/" + node.getName();
        paths.add(currentPath);
        // 递归遍历子节点
        for (Area child : node.getChildren()) {
            getAreaNodePathList(child, currentPath, paths);
        }
    }

    /**
     * 格式化区域
     *
     * @param code 区域编码
     * @return 格式化后的区域
     */
    public static String format(String code) {
        return format(code, " ");
    }

    /**
     * 格式化区域
     *
     * 例如说：
     * 1. code = "静安区编码"时：上海 上海市 静安区
     * 2. code = "上海市编码"时：上海 上海市
     * 3. code = "北京市编码"时：北京
     * 4. code = "美国编码"时：美国
     * 当区域在中国时，默认不显示中国
     *
     * @param code      区域编码
     * @param separator 分隔符
     * @return 格式化后的区域
     */
    public static String format(String code, String separator) {
        if (code == null || areas == null) {
            return null;
        }
        // 获得区域
        Area area = areas.get(code);
        if (area == null) {
            return null;
        }

        // 格式化
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < AreaTypeEnum.values().length; i++) { // 避免死循环
            sb.insert(0, area.getName());
            // "递归"父节点
            area = area.getParent();
            if (area == null
                    || Area.CODE_GLOBAL.equals(area.getCode())
                    || Area.CODE_CHINA.equals(area.getCode())) { // 跳过父节点为中国的情况
                break;
            }
            sb.insert(0, separator);
        }
        return sb.toString();
    }
    /**
     * 获取指定类型的区域列表
     *
     * @param type 区域类型
     * @param func 转换函数
     * @param <T>  结果类型
     * @return 区域列表
     */
    public static <T> List<T> getByType(AreaTypeEnum type, Function<Area, T> func) {
        if (areas == null) return List.of();
        return convertList(areas.values(), func, area -> type.getType().equals(area.getType()));
    }

}
