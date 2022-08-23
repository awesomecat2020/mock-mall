package com.mockmall.authplatform.bo;

import lombok.Data;

import java.io.Serializable;

/**
 * 发送验证码回参
 *
 * @author ccomma
 */
@Data
public class VerCodeResultBO implements Serializable {

    private static final long serialVersionUID = 1819223122294594772L;

    /**
     * 状态 1 发送成功   0 发送失败
     */
    private Boolean status;

    /**
     * 信息
     */
    private String message;

    /**
     * 是否弹出信息
     */
    private Boolean popMessage;

    /**
     * 是否注册
     */
    private Boolean register;

    /**
     * 会员id
     */
    private String memberId;

}
