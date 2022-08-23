package com.mockmall.authplatform.service.impl;

import com.mockmall.authplatform.bo.VerCodeResultBO;
import com.mockmall.authplatform.service.AuthService;
import com.mockmall.authplatform.service.SmsInService;
import com.mockmall.user.service.UserClientService;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * auth Service
 *
 * @author ccomma
 */
@Service
public class AuthServiceImpl implements AuthService {

    private static final String CHINA_MOBILE_REGEX = "^(1([345789][0-9]|62|65|66|67)|880)[0-9]{8}$";

    @Resource
    private SmsInService smsInService;

    @DubboReference(version = "1.0.0")
    private UserClientService userClientService;

    @Override
    public VerCodeResultBO sendVerCode(String mobile) {
        // 1.校验手机号
        smsInService.checkMobileByPattern(mobile, CHINA_MOBILE_REGEX);

        // 发送验证码
        smsInService.sendVerCode(mobile);

        return null;
    }

}
