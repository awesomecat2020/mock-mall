package com.mockmall.front.controller;

import com.mockmall.commonbase.result.Result;
import com.mockmall.item.client.bo.CarouselBO;
import com.mockmall.item.client.service.CarouselClientService;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 轮播图
 *
 * @author ccomma
 */
@RestController
public class CarouselController {
    @DubboReference(check = false, loadbalance = "roundrobin")
    private CarouselClientService carouselClientService;

    @GetMapping("/get_carousel_list_by_show")
    public Result<List<CarouselBO>> getCarouselListByShow() {
        return carouselClientService.getCarouselListByShow();
    }
}
