package com.lz.module.trade.convert.config;

import com.lz.module.trade.controller.admin.config.vo.TradeConfigRespVO;
import com.lz.module.trade.controller.admin.config.vo.TradeConfigSaveReqVO;
import com.lz.module.trade.controller.app.config.vo.AppTradeConfigRespVO;
import com.lz.module.trade.dal.dataobject.config.TradeConfigDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * 交易中心配置 Convert
 *
 * @author owen
 */
@Mapper
public interface TradeConfigConvert {

    TradeConfigConvert INSTANCE = Mappers.getMapper(TradeConfigConvert.class);

    TradeConfigDO convert(TradeConfigSaveReqVO bean);

    TradeConfigRespVO convert(TradeConfigDO bean);

    AppTradeConfigRespVO convert02(TradeConfigDO tradeConfig);
}
