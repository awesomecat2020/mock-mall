package com.mockmall.item.service;

import com.mockmall.item.bo.CarouselBO;

import java.util.List;

/**
 * CarouselService
 *
 * @author ccomma
 */
public interface CarouselService {
    /**
     * 获取可展示的轮播图
     *
     * @return 轮播图列表
     * @author ccomma
     */
    List<CarouselBO> listCarouselByShow();
}
