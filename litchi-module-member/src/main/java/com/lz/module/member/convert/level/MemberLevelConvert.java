package com.lz.module.member.convert.level;

import com.lz.module.member.api.level.dto.MemberLevelRespDTO;
import com.lz.module.member.controller.admin.level.vo.level.MemberLevelCreateReqVO;
import com.lz.module.member.controller.admin.level.vo.level.MemberLevelRespVO;
import com.lz.module.member.controller.admin.level.vo.level.MemberLevelSimpleRespVO;
import com.lz.module.member.controller.admin.level.vo.level.MemberLevelUpdateReqVO;
import com.lz.module.member.controller.app.level.vo.level.AppMemberLevelRespVO;
import com.lz.module.member.dal.dataobject.level.MemberLevelDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * 会员等级 Convert
 *
 * @author owen
 */
@Mapper
public interface MemberLevelConvert {

    MemberLevelConvert INSTANCE = Mappers.getMapper(MemberLevelConvert.class);

    MemberLevelDO convert(MemberLevelCreateReqVO bean);

    MemberLevelDO convert(MemberLevelUpdateReqVO bean);

    MemberLevelRespVO convert(MemberLevelDO bean);

    List<MemberLevelRespVO> convertList(List<MemberLevelDO> list);

    List<MemberLevelSimpleRespVO> convertSimpleList(List<MemberLevelDO> list);

    List<AppMemberLevelRespVO> convertList02(List<MemberLevelDO> list);

    MemberLevelRespDTO convert02(MemberLevelDO bean);

}
