package com.mockmall.authplatform.service.impl;

import com.mockmall.authplatform.bo.VerCodeResultBO;
import com.mockmall.authplatform.service.AuthService;
import com.mockmall.authplatform.service.SmsInService;
import com.mockmall.commonbase.exception.ServiceException;
import com.mockmall.commonbase.result.Result;
import com.mockmall.commonbase.utils.ResultUtil;
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
        // 校验手机号
        smsInService.checkMobileByPattern(mobile, CHINA_MOBILE_REGEX);
        Result<Boolean> result = userClientService.existByMobile(mobile);
        if (ResultUtil.hasNotData(result)) {
            // TODO: 2022/8/23 user服务异常
            throw new ServiceException();
        }

        // 发送验证码
        smsInService.sendVerCode(mobile);

        // 返回
        VerCodeResultBO verCodeResult = new VerCodeResultBO();
        verCodeResult.setRegister(result.getData());
        verCodeResult.setMemberId("");
        verCodeResult.setStatus(true);
        return verCodeResult;
    }
}
