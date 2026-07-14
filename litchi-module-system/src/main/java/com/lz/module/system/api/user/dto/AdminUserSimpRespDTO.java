package com.lz.module.system.api.user.dto;

import com.lz.module.system.dal.dataobject.user.AdminUserDO;
import lombok.Data;

/**
 * Admin 用户 Response DTO
 * 因为其他模块需要显示用户，但是这里mybatis存的用户id默认是字符串
 *
 * @author 荔枝源码
 */
@Data
public class AdminUserSimpRespDTO {

    /**
     * 用户ID
     */
    private String id;
    /**
     * 用户昵称
     */
    private String nickname;

    /**
     * 用户名
     */
    private String username;

    /**
     * 头像
     */
    private String avatar;

    public static AdminUserSimpRespDTO toSimple(AdminUserDO user) {
        AdminUserSimpRespDTO simple = new AdminUserSimpRespDTO();
        simple.setId(String.valueOf(user.getId()));
        simple.setNickname(user.getNickname());
        simple.setUsername(user.getUsername());
        simple.setAvatar(user.getAvatar());
        return simple;
    }
}
