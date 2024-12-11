package com.mockmall.item.mapper;

import com.mockmall.item.pojo.ItemAttr;

import java.util.List;

public interface ItemAttrMapper {
    /**
     * 新增
     * 
     * @param row item_attr
     * @return 影响条数
     * @author ccomma
     */
    int insert(ItemAttr row);

    /**
     * 根据主键查询
     * 
     * @param id 主键
     * @return itemattr
     * @author ccomma
     */
    ItemAttr selectByPrimaryKey(String id);

    /**
     * 查询全部
     * 
     * @return {@code List<ItemAttr>}
     * @author ccomma
     */
    List<ItemAttr> selectAll();

    /**
     * 根据主键更新
     * 
     * @param row item_attr
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(ItemAttr row);
}