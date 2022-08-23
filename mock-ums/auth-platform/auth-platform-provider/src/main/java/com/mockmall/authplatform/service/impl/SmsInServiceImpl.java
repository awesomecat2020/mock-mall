package com.mockmall.authplatform.service.impl;

import com.mockmall.authplatform.service.SmsInService;
import com.mockmall.authplatform.utils.SmsUtil;
import com.mockmall.commonbase.exception.BizException;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

/**
 * @author ccomma
 */
@Log4j2
@Service
public class SmsInServiceImpl implements SmsInService {

    @Override
    public void checkMobileByPattern(String mobile, String regex) {
        boolean checkResult = SmsUtil.checkPhoneNumber(mobile, regex);
        if (!checkResult) {
            log.warn("手机号校验规则:{},手机号:{}", regex, mobile);
            // TODO: 2022/8/22 业务异常：手机校验失败
            throw new BizException();
        }
    }

    @Override
    public void sendVerCode(String mobile) {
        // TODO: 2022/8/23 redis
        // 从缓存中取出验证码
//        String authCode = cacheService.get(AuthConstant.CACHE_KEY_MOBILE_VER_CODE + mobile);
//        if (StringUtils.isBlank(authCode)) {
//            authCode = RandomStringUtils.randomNumeric(6);
//        }

        // send sms
        // TODO: 2022/8/23 sms 服务

        // 存入缓存
    }

}
