package com.mockmall.item.mapper;

import com.mockmall.commonbase.base.BaseQuery;
import com.mockmall.item.pojo.Item;
import com.mockmall.item.request.ItemQuery;
import org.apache.ibatis.annotations.Param;

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
     * @param id       主键
     * @return item
     * @author ccomma
     */
    Item selectByPrimaryKey(String id);

    /**
     * 根据主键更新
     *
     * @param row item
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(Item row);

    int countForRecommend(ItemQuery query);

    List<Item> selectForRecommend(ItemQuery query);

}