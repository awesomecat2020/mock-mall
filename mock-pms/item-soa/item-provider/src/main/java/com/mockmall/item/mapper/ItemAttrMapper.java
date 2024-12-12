package com.mockmall.item.mapper;

import com.mockmall.item.pojo.ItemAttr;

import java.util.List;

public interface ItemAttrMapper {

    /**
     * 新增
     * 
     * @param row itemAttr
     * @return 影响条数
     * @author ccomma
     */
    int insert(ItemAttr row);

    /**
     * 根据主键查询
     * 
     * @param id 主键
     * @return itemAttr
     * @author ccomma
     */
    ItemAttr selectByPrimaryKey(String id);

    /**
     * 根据主键更新
     * 
     * @param row itemAttr
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(ItemAttr row);
}