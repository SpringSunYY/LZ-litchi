package com.lz.framework.excel.core.util;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.converters.longconverter.LongStringConverter;
import com.alibaba.excel.write.style.column.LongestMatchColumnWidthStyleStrategy;
import com.lz.framework.common.util.http.HttpUtils;
import com.lz.framework.dict.core.DictFrameworkUtils;
import com.lz.framework.excel.core.annotations.ExcelDirection;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.framework.excel.core.handler.I18nHeadWriteHandler;
import com.lz.framework.excel.core.handler.SelectSheetWriteHandler;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

/**
 * Excel 工具类
 *
 * @author 荔枝源码
 */
@Slf4j
public class ExcelUtils {

    /**
     * 将列表以 Excel 响应给前端
     *
     * @param response  响应
     * @param filename  文件名
     * @param sheetName Excel sheet 名
     * @param head      Excel head 头
     * @param data      数据列表哦
     * @param <T>       泛型，保证 head 和 data 类型的一致性
     * @throws IOException 写入失败的情况
     */
    public static <T> void write(HttpServletResponse response, String filename, String sheetName,
                                 Class<T> head, List<T> data) throws IOException {
        write(response, filename, sheetName, head, data, ExcelDirection.ONLY_EXPORT);
    }

    /**
     * 将列表以 Excel 响应给前端
     *
     * @param response  响应
     * @param filename  文件名
     * @param sheetName Excel sheet 名
     * @param head      Excel head 头
     * @param data      数据列表
     * @param direction 方向：EXPORT=导出（排除 IMPORT 字段），IMPORT=导入（排除 EXPORT 字段）
     * @param <T>       泛型，保证 head 和 data 类型的一致性
     * @throws IOException 写入失败的情况
     */
    public static <T> void write(HttpServletResponse response, String filename, String sheetName,
                                 Class<T> head, List<T> data, ExcelDirection direction) throws IOException {
        var excludeFields = ExcelClassUtils.getExcludeColumnFiledNames(head, direction);

        try {
            var builder = EasyExcel.write(response.getOutputStream(), head)
                    .autoCloseStream(false)
                    .registerWriteHandler(new LongestMatchColumnWidthStyleStrategy())
                    .registerWriteHandler(new SelectSheetWriteHandler(head, direction))
                    .registerWriteHandler(new I18nHeadWriteHandler(head, direction))
                    .registerConverter(new DictConvert())
                    .registerConverter(new LongStringConverter());

            if (!excludeFields.isEmpty()) {
                builder.excludeColumnFiledNames(excludeFields);
            }

            builder.sheet(sheetName).doWrite(data);

            response.addHeader("Content-Disposition", "attachment;filename=" + HttpUtils.encodeUtf8(filename));
            response.setContentType("application/vnd.ms-excel;charset=UTF-8");
        } finally {
            ExcelClassUtils.clearCache();
            DictConvert.clearCache();
            DictFrameworkUtils.clearCache();
        }
    }

    public static <T> List<T> read(MultipartFile file, Class<T> head) throws IOException {
        return read(file, head, ExcelDirection.ONLY_IMPORT);
    }

    /**
     * 读取 Excel
     *
     * @param file      Excel 文件
     * @param head      头类
     * @param direction 方向：IMPORT=导入（排除 EXPORT 字段），EXPORT=导出（排除 IMPORT 字段）
     */
    public static <T> List<T> read(MultipartFile file, Class<T> head, ExcelDirection direction) throws IOException {
        try {
            Class<? extends T> i18nClass = ExcelClassUtils.buildI18nClass(head, direction);
            return EasyExcel.read(file.getInputStream())
                    .head(i18nClass)
                    .registerConverter(new DictConvert())
                    .sheet(0)
                    .doReadSync();
        } finally {
            ExcelClassUtils.clearCache();
            DictConvert.clearCache();
            DictFrameworkUtils.clearCache();
        }
    }
}
