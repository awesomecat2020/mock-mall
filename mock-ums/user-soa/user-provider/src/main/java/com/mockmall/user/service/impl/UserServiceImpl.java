package com.mockmall.user.service.impl;

import com.mockmall.user.bo.UserBO;
import com.mockmall.user.mapper.UserMapper;
import com.mockmall.user.pojo.User;
import com.mockmall.user.service.UserService;
import org.springframework.beans.BeanUtils;
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
        return userMapper.selectExistByUserName(userName) != null;
    }

    @Override
    public UserBO save(UserBO userBO) {
        User user = new User();
        BeanUtils.copyProperties(userBO, user);
        int success = userMapper.insert(user);
        return success == 1 ? userBO : null;
    }

}
