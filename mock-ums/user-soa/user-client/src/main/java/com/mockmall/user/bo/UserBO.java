package com.mockmall.user.bo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * UserBO
 *
 * @author ccomma
 */
@Data
public class UserBO implements Serializable {
    private static final long serialVersionUID = 8762719038291996165L;

    /**
     * 用户名
     */
    private String username;

    /**
     * 密码
     */
    private String password;

    /**
     * 昵称
     */
    private String nickname;

    /**
     * 真实姓名
     */
    private String realname;

    /**
     * 头像
     */
    private String face;

    /**
     * 手机号
     */
    private String mobile;

    /**
     * 邮箱地址
     */
    private String email;

    /**
     * 性别 1:男  0:女  2:保密
     */
    private Integer sex;

    /**
     * 生日
     */
    private Date birthday;

}
