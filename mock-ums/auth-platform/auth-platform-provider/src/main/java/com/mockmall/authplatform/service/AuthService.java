package com.mockmall.authplatform.service;

import com.mockmall.authplatform.bo.VerCodeResultBO;

/**
 * auth
 *
 * @author ccomma
 */
public interface AuthService {

    /**
     * 业务发送短信验证码
     *
     * @param mobile            手机号
     * @return
     */
    VerCodeResultBO sendVerCode(String mobile);

}
