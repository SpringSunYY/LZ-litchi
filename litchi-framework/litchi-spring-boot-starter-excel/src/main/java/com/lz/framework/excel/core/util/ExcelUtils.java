package com.lz.framework.excel.core.util;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.converters.longconverter.LongStringConverter;
import com.alibaba.excel.write.style.column.LongestMatchColumnWidthStyleStrategy;
import com.lz.framework.common.util.http.HttpUtils;
import com.lz.framework.dict.core.DictFrameworkUtils;
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
        try {
            // 输出 Excel
            EasyExcel.write(response.getOutputStream(), head)
                    .autoCloseStream(false) // 不要自动关闭，交给 Servlet 自己处理
                    .registerWriteHandler(new LongestMatchColumnWidthStyleStrategy()) // 基于 column 长度，自动适配。最大 255 宽度
                    .registerWriteHandler(new SelectSheetWriteHandler(head)) // 基于固定 sheet 实现下拉框
                    .registerWriteHandler(new I18nHeadWriteHandler(head)) // 基于 @ExcelI18n 实现表头国际化
                    .registerConverter(new DictConvert())
                    .registerConverter(new LongStringConverter()) // 避免 Long 类型丢失精度
                    .sheet(sheetName).doWrite(data);
            // 设置 header 和 contentType。写在最后的原因是，避免报错时，响应 contentType 已经被修改了
            response.addHeader("Content-Disposition", "attachment;filename=" + HttpUtils.encodeUtf8(filename));
            response.setContentType("application/vnd.ms-excel;charset=UTF-8");
        } finally {
            // 请求结束后及时清理缓存，避免不同语言请求间相互污染
            I18nClassUtils.clearCache();
            DictConvert.clearCache();
            DictFrameworkUtils.clearCache();
        }
    }

    public static <T> List<T> read(MultipartFile file, Class<T> head) throws IOException {
        try {
            // 生成 i18n VO 类，将 @ExcelI18n 字段的 @ExcelProperty value 替换为 i18n 翻译后的表头
            Class<? extends T> i18nClass = I18nClassUtils.buildI18nClass(head);
            // 直接交给 EasyExcel 处理：列头匹配 + 类型转换 + 字段赋值
            return EasyExcel.read(file.getInputStream())
                    .head(i18nClass)
                    .registerConverter(new DictConvert())
                    .sheet(0)
                    .doReadSync();
        } finally {
            // 请求结束后及时清理缓存，避免不同语言请求间相互污染
            I18nClassUtils.clearCache();
            DictConvert.clearCache();
            DictFrameworkUtils.clearCache();
        }
    }
}
