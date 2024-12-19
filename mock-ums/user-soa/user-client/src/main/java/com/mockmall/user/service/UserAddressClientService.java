package com.mockmall.user.service;

import com.mockmall.commonbase.result.Result;
import com.mockmall.user.vo.UserAddressVO;

/**
 * UserAddress ClientService
 *
 * @author ccomma
 */
public interface UserAddressClientService {

    /**
     * 获取用户默认地址
     *
     * @param userId 用户 id
     * @return {@link Result< UserAddressVO>}
     * @author ccomma
     */
    Result<UserAddressVO> getDefault(String userId);
}
