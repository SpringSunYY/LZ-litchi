package com.lz.module.mp.convert.account;

import com.lz.framework.common.pojo.PageResult;
import com.lz.module.mp.controller.admin.account.vo.MpAccountCreateReqVO;
import com.lz.module.mp.controller.admin.account.vo.MpAccountRespVO;
import com.lz.module.mp.controller.admin.account.vo.MpAccountSimpleRespVO;
import com.lz.module.mp.controller.admin.account.vo.MpAccountUpdateReqVO;
import com.lz.module.mp.dal.dataobject.account.MpAccountDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

@Mapper
public interface MpAccountConvert {

    MpAccountConvert INSTANCE = Mappers.getMapper(MpAccountConvert.class);

    MpAccountDO convert(MpAccountCreateReqVO bean);

    MpAccountDO convert(MpAccountUpdateReqVO bean);

    MpAccountRespVO convert(MpAccountDO bean);

    List<MpAccountRespVO> convertList(List<MpAccountDO> list);

    PageResult<MpAccountRespVO> convertPage(PageResult<MpAccountDO> page);

    List<MpAccountSimpleRespVO> convertList02(List<MpAccountDO> list);

}
