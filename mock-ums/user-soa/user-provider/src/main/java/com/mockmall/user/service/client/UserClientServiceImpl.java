package com.mockmall.user.service.client;

import com.mockmall.user.UserClientService;
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
}
