package com.lz.module.trade.controller.admin.delivery.vo.express;

import com.lz.framework.excel.core.annotations.DictFormat;
import com.lz.framework.excel.core.convert.DictConvert;
import com.lz.module.system.enums.DictTypeConstants;
import com.alibaba.excel.annotation.ExcelProperty;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * 快递公司 Excel VO
 */
@Data
public class DeliveryExpressExcelVO {

    @ExcelProperty("编号")
    private Long id;

    @ExcelProperty("快递公司编码")
    private String code;

    @ExcelProperty("快递公司名称")
    private String name;

    @ExcelProperty("快递公司 logo")
    private String logo;

    @ExcelProperty("排序")
    private Integer sort;

    @ExcelProperty(value = "状态", converter = DictConvert.class)
    @DictFormat(DictTypeConstants.COMMON_STATUS)
    private Integer status;

    @ExcelProperty("创建时间")
    private LocalDateTime createTime;

}
