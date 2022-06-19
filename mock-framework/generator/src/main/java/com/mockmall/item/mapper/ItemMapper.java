package com.mockmall.item.mapper;

import com.mockmall.item.pojo.Item;
import java.util.List;

public interface ItemMapper {
    /**
     * 根据主键删除
     * 
     * @param id 主键
     * @return 影响条数
     * @author ccomma
     */
    int deleteByPrimaryKey(String id);

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
}