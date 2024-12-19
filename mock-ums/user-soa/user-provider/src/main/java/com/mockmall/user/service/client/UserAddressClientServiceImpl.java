package com.mockmall.user.service.client;

import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Result;
import com.mockmall.user.service.UserAddressClientService;
import com.mockmall.user.service.UserAddressService;
import com.mockmall.user.vo.UserAddressVO;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;

/**
 * UserAddress ClientService
 *
 * @author ccomma
 */
@DubboService(version = "1.0.0")
public class UserAddressClientServiceImpl implements UserAddressClientService {

    @Resource
    private UserAddressService userAddressService;

    @Override
    public Result<UserAddressVO> getDefault(String userId) {
        return GeneralResult.successWithData(userAddressService.getDefault(userId));
    }
}
