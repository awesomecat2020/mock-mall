package com.mockmall.item.mapper;

import com.mockmall.item.pojo.Carousel;

import java.util.List;

public interface CarouselMapper {

    /**
     * 新增
     * 
     * @param row carousel
     * @return 影响条数
     * @author ccomma
     */
    int insert(Carousel row);

    /**
     * 根据主键查询
     * 
     * @param id 主键
     * @return carousel
     * @author ccomma
     */
    Carousel selectByPrimaryKey(String id);

    /**
     * 查询全部
     * 
     * @return {@code List<Carousel>}
     * @author ccomma
     */
    List<Carousel> selectAll();

    /**
     * 根据主键更新
     * 
     * @param row carousel
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(Carousel row);
}