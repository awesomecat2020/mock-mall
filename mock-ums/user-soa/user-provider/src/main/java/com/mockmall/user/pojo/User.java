package com.mockmall.user.pojo;

import com.mockmall.commonbase.base.BasePO;
import com.mockmall.user.enums.SexEnum;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

/**
 * User
 * 
 * @author ccomma
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class User extends BasePO {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    private String id;

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
     * 性别
     * @see SexEnum
     */
    private Integer sex;

    /**
     * 生日
     */
    private Date birthday;

}