package com.mockmall.front.controller.auth;

import com.mockmall.commonbase.result.Result;
import com.mockmall.front.service.sms.SmsInService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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



    @RequestMapping(value = "/v1/send_ver_code", method = {RequestMethod.GET, RequestMethod.POST})
    public Result sendVerCode(String mobile, int isRequireRegister, int type, String specialTag, String specialParam) {

        // 校验手机号，校验失败抛出异常
        if (StringUtils.isNotBlank(mobile)) {
            mobile = mobile.trim();
        }

        smsInService.checkMobileByPattern(mobile, CHINA_MOBILE_REGEX);

        return unifiedLoginClientService.sendVerCode(mobile, isRequireRegister, type, specialTag, specialParam);
    }
}
