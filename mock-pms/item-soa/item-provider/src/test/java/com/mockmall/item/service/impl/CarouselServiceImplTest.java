package com.mockmall.item.service.impl;

import com.mockmall.item.ItemProviderApplication;
import com.mockmall.item.client.bo.CarouselBO;
import com.mockmall.item.service.ICarouselService;
import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * 轮播图测试
 *
 * @author ccomma
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = ItemProviderApplication.class)
class CarouselServiceImplTest {

    @Resource
    private ICarouselService carouselService;

    @Test
    void testListCarouselByShow() {
        List<CarouselBO> carouselList = carouselService.listCarouselByShow();
        Assert.assertNotNull(carouselList);
        Assert.assertFalse(carouselList.isEmpty());
    }
}