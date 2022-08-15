package com.mockmall.user.service;

import com.mockmall.commonbase.result.Result;
import com.mockmall.user.bo.UserBO;

/**
 * UserClient
 *
 * @author ccomma
 */
public interface UserClientService {

    /**
     * 判断用户名是否存在
     *
     * @param userName 用户名
     * @return 是否存在
     * @author ccomma
     */
    Result<Boolean> existByUserName(String userName);

    /**
     * 保存
     *
     * @param userBO user
     * @return 保存成功的 user
     * @author ccomma
     */
    Result<UserBO> save(UserBO userBO);

}
