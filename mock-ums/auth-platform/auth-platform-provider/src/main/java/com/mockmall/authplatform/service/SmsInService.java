package com.mockmall.authplatform.service;


/**
 * 短信服务
 *
 * @author ccomma
 */
public interface SmsInService {

    /**
     * 根据正则校验手机号
     *
     * @param regex  校验规则
     * @param mobile 手机号
     * @author ccomma
     */
    void checkMobileByPattern(String mobile, String regex);

    /**
     * 发送验证码
     *
     * @param mobile 手机号
     * @author ccomma
     */
    void sendVerCode(String mobile);
}
