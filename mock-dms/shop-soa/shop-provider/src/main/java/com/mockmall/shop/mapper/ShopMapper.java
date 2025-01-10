package com.mockmall.shop.mapper;

import com.mockmall.shop.pojo.Shop;

import java.util.List;

public interface ShopMapper {
    /**
     * 新增
     * 
     * @param row shop
     * @return 影响条数
     * @author ccomma
     */
    int insert(Shop row);

    /**
     * 根据主键查询
     * 
     * @param id 主键
     * @return shop
     * @author ccomma
     */
    Shop selectByPrimaryKey(String id);

    /**
     * 查询全部
     * 
     * @return {@code List<Shop>}
     * @author ccomma
     */
    List<Shop> selectAll();

    /**
     * 根据主键更新
     * 
     * @param row shop
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(Shop row);

    /**
     * 获取商家信息
     *
     * @param entityId 店铺实体 id
     * @return {@link Shop}
     * @author ccomma
     */
    Shop selectByEntityId(String entityId);
}