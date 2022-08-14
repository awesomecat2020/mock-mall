package com.mockmall.user.service.impl;

import com.mockmall.user.mapper.UserMapper;
import com.mockmall.user.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * User Service
 *
 * @author ccomma
 */
@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    @Transactional(propagation = Propagation.SUPPORTS, rollbackFor = Exception.class)
    @Override
    public boolean existByUserName(String userName) {
        Integer exist = userMapper.selectExistByUserName(userName);
        return exist != null;
    }

}
