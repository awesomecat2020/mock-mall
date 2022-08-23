package com.mockmall.user.service.client;

import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Result;
import com.mockmall.user.bo.UserBO;
import com.mockmall.user.service.UserClientService;
import com.mockmall.user.service.UserService;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;

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
    public Result<Boolean> existByMobile(String mobile) {
        return GeneralResult.successWithData(userService.existByMobile(mobile));
    }

    @Override
    public Result<UserBO> save(UserBO userBO) {
        try {
            return GeneralResult.successWithData(userService.save(userBO));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }
}
