package com.mockmall.authplatform.service.client;

import com.mockmall.authplatform.bo.VerCodeResultBO;
import com.mockmall.authplatform.service.AuthService;
import com.mockmall.authplatform.service.LoginClientService;
import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Result;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;

/**
 * @author ccomma
 */
@DubboService(version = "1.0.0")
public class LoginClientServiceImpl implements LoginClientService {

    @Resource
    private AuthService authService;

    @Override
    public Result<VerCodeResultBO> sendVerCode(String mobile) {
        VerCodeResultBO verCodeResult = authService.sendVerCode(mobile);
        return GeneralResult.successWithData(verCodeResult);
    }

}
