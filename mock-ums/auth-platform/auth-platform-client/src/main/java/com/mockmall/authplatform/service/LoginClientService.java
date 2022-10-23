package com.mockmall.authplatform.service;

import com.mockmall.authplatform.bo.VerCodeResultBO;
import com.mockmall.commonbase.result.Result;

/**
 * 登录
 *
 * @author ccomma
 */
public interface LoginClientService {

    /**
     * 发送验证码
     *
     * @param mobile 手机号
     * @return {@code Result<VerCodeResultVo>}
     * @author ccomma
     */
    Result<VerCodeResultBO> sendVerCode(String mobile);

}
