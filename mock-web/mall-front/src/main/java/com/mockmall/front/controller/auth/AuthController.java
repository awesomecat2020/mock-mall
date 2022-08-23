package com.mockmall.front.controller.auth;

import com.mockmall.authplatform.bo.VerCodeResultBO;
import com.mockmall.authplatform.service.LoginClientService;
import com.mockmall.commonbase.result.Result;
import com.mockmall.front.service.sms.SmsInService;
import org.apache.commons.lang3.StringUtils;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 登录验证
 *
 * @author ccomma
 */
@RestController("/auth")
public class AuthController {

    private static final String CHINA_MOBILE_REGEX = "^(1([345789][0-9]|62|65|66|67)|880)[0-9]{8}$";

    @Resource
    private SmsInService smsInService;

    @DubboReference(version = "1.0.0")
    private LoginClientService loginClientService;


    @PostMapping("/v1/send_ver_code")
    public Result<VerCodeResultBO> sendVerCode(String mobile) {

        // 校验手机号，校验失败抛出异常
        if (StringUtils.isNotBlank(mobile)) {
            mobile = mobile.trim();
        }

        smsInService.checkMobileByPattern(mobile, CHINA_MOBILE_REGEX);

        return loginClientService.sendVerCode(mobile);
    }

    @PostMapping("/v1/register")
    public Result register(String mobile) {

        return null;
    }

}
