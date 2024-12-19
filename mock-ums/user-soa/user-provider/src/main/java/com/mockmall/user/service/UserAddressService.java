package com.mockmall.user.service;

import com.mockmall.user.vo.UserAddressVO;

/**
 * UserAddress Service
 *
 * @author ccomma
 */
public interface UserAddressService {

    /**
     * 获取用户默认地址
     *
     * @param userId 用户 id
     * @return {@link UserAddressVO}
     * @author ccomma
     */
    UserAddressVO getDefault(String userId);
}
