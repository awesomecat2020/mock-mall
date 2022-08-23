package com.mockmall.user.service.impl;

import com.mockmall.user.bo.UserBO;
import com.mockmall.user.enums.SexEnum;
import com.mockmall.user.mapper.UserMapper;
import com.mockmall.user.pojo.User;
import com.mockmall.user.service.UserService;
import com.mockmall.user.utils.MD5Util;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Objects;
import java.util.UUID;

/**
 * User Service
 *
 * @author ccomma
 */
@Service
public class UserServiceImpl implements UserService {

    private static final String DEFAULT_USER_FACE = "";

    @Resource
    private UserMapper userMapper;

    @Transactional(propagation = Propagation.SUPPORTS, rollbackFor = Exception.class)
    @Override
    public boolean existByMobile(String mobile) {
        return userMapper.selectExistByMobile(mobile) != null;
    }

    @Override
    public UserBO save(UserBO userBO) throws NoSuchAlgorithmException, ParseException {
        User user = new User();
        BeanUtils.copyProperties(userBO, user);

        // TODO: 2022/8/21 分布式id
        user.setId(UUID.randomUUID().toString().replace("-", ""));
        // 密码加密
        user.setPassword(MD5Util.digest(userBO.getPassword()));
        if (StringUtils.isBlank(user.getFace())) {
            user.setFace(DEFAULT_USER_FACE);
        }
        // 默认生日
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        user.setBirthday(simpleDateFormat.parse("1970-01-01"));
        // 默认性别
        if (Objects.isNull(user.getSex())) {
            user.setSex(SexEnum.SECRET.getCode());
        }

        int success = userMapper.insert(user);

        UserBO result = new UserBO();
        BeanUtils.copyProperties(user, result);
        return success == 1 ? result : null;
    }

}
