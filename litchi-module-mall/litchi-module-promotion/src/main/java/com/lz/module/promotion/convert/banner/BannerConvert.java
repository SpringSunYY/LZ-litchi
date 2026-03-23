package com.lz.module.promotion.convert.banner;

import com.lz.framework.common.pojo.PageResult;
import com.lz.module.promotion.controller.admin.banner.vo.BannerCreateReqVO;
import com.lz.module.promotion.controller.admin.banner.vo.BannerRespVO;
import com.lz.module.promotion.controller.admin.banner.vo.BannerUpdateReqVO;
import com.lz.module.promotion.controller.app.banner.vo.AppBannerRespVO;
import com.lz.module.promotion.dal.dataobject.banner.BannerDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

@Mapper
public interface BannerConvert {

    BannerConvert INSTANCE = Mappers.getMapper(BannerConvert.class);

    List<BannerRespVO> convertList(List<BannerDO> list);

    PageResult<BannerRespVO> convertPage(PageResult<BannerDO> pageResult);

    BannerRespVO convert(BannerDO banner);

    BannerDO convert(BannerCreateReqVO createReqVO);

    BannerDO convert(BannerUpdateReqVO updateReqVO);

    List<AppBannerRespVO> convertList01(List<BannerDO> bannerList);

}
