package com.mockmall.item.mapper;

import com.mockmall.item.pojo.Carousel;

public interface CarouselMapper {
    int deleteByPrimaryKey(String id);

    /**
     * dd
     *
     * @param row
     * @return
     * @author
     */
    int insert(Carousel row);

    int insertSelective(Carousel row);

    Carousel selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Carousel row);

    int updateByPrimaryKey(Carousel row);
}