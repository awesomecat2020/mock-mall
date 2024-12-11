package com.mockmall.item.mapper;

import com.mockmall.commonbase.base.BaseQuery;
import com.mockmall.item.pojo.Item;

import java.util.List;

public interface ItemMapper {

    /**
     * 新增
     *
     * @param row item
     * @return 影响条数
     * @author ccomma
     */
    int insert(Item row);

    /**
     * 根据主键查询
     *
     * @param id 主键
     * @return item
     * @author ccomma
     */
    Item selectByPrimaryKey(String id);

    /**
     * 查询全部
     *
     * @return {@code List<Item>}
     * @author ccomma
     */
    List<Item> selectAll();

    /**
     * 根据主键更新
     *
     * @param row item
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(Item row);

    int countForRecommend(BaseQuery query);

    List<Item> selectForRecommend(BaseQuery query);

}