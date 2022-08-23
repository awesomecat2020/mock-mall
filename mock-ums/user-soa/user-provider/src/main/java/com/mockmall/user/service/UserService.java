package com.mockmall.user.service;

import com.mockmall.user.bo.UserBO;

import java.security.NoSuchAlgorithmException;
import java.text.ParseException;

/**
 * User Service
 *
 * @author ccomma
 */
public interface UserService {

    /**
     * 判断用户是否存在
     *
     * @param mobile 手机号
     * @return 是否存在
     * @author ccomma
     */
    boolean existByMobile(String mobile);

    /**
     * 保存用户
     *
     * @param userBO user
     * @return 保存成功的 user
     * @author ccomma
     */
    UserBO save(UserBO userBO) throws NoSuchAlgorithmException, ParseException;
}
