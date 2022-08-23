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
     * @param mobile
     * @param isRequireRegister
     * @param type
     * @param specialTag
     * @param specialParam
     * @return {@code Result<VerCodeResultVo>}
     * @author ccomma
     */
    Result<VerCodeResultBO> sendVerCode(String mobile, int isRequireRegister, int type, String specialTag, String specialParam);

}
