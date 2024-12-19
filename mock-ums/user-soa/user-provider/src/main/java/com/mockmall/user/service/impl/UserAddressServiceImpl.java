package com.mockmall.user.service.impl;

import com.mockmall.user.mapper.UserAddressMapper;
import com.mockmall.user.pojo.UserAddress;
import com.mockmall.user.service.UserAddressService;
import com.mockmall.user.vo.UserAddressVO;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * UserAddress Service
 *
 * @author ccomma
 */
@Service
public class UserAddressServiceImpl implements UserAddressService {

    @Resource
    private UserAddressMapper userAddressMapper;

    @Override
    public UserAddressVO getDefault(String userId) {
        UserAddress userAddress = userAddressMapper.selectDefaultByUserId(userId);
        UserAddressVO userAddressVO = new UserAddressVO();
        BeanUtils.copyProperties(userAddress, userAddressVO);
        return userAddressVO;
    }
}
