package com.mockmall.user.service.impl;

import com.mockmall.user.bo.UserBO;
import com.mockmall.user.service.UserService;
import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;


/**
 * @author ccomma
 */
@RunWith(SpringRunner.class)
@SpringBootTest
class UserServiceImplTest {

    @Resource
    private UserService userService;

    @Test
    void testExistByUserName() {
        boolean exist = userService.existByUserName("test");
        Assert.assertTrue(exist);
    }

    @Test
    void save() {
        UserBO userBO = new UserBO();
        userService.save(userBO);
    }

}