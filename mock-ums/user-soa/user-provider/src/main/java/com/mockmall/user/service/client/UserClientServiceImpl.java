package com.mockmall.user.service.client;

import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Result;
import com.mockmall.user.bo.UserBO;
import com.mockmall.user.service.UserClientService;
import com.mockmall.user.service.UserService;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;

/**
 * User Client Service
 *
 * @author ccomma
 */
@DubboService(version = "1.0.0")
public class UserClientServiceImpl implements UserClientService {

    @Resource
    private UserService userService;

    @Override
    public Result<Boolean> existByUserName(String userName) {
        return GeneralResult.successWithData(userService.existByUserName(userName));
    }

    @Override
    public Result<UserBO> save(UserBO userBO) {
        return GeneralResult.successWithData(userService.save(userBO));
    }
}
