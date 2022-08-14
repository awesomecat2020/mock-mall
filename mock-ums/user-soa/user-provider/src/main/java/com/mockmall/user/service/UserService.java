package com.mockmall.user.service;

/**
 * User Service
 *
 * @author ccomma
 */
public interface UserService {

    /**
     * 判断用户名是否存在
     *
     * @param userName 用户名
     * @return 是否存在
     * @author ccomma
     */
    boolean existByUserName(String userName);

}
