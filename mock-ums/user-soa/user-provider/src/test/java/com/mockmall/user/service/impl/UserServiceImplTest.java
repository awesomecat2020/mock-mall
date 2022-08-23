package com.mockmall.user.service.impl;

import com.mockmall.user.bo.UserBO;
import com.mockmall.user.service.UserService;
import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;


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
        boolean exist = userService.existByMobile("test");
        Assert.assertTrue(exist);
    }

    @Test
    void save() throws NoSuchAlgorithmException, ParseException {
        UserBO userBO = new UserBO();
        userService.save(userBO);
    }

}