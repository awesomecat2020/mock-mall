package com.mockmall.item.mapper;

import com.mockmall.item.pojo.ItemAttr;
import org.apache.ibatis.annotations.Param;

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

    /**
     * 根据商品 id 查询
     *
     * @param itemId   商品 id
     * @param attrType 属性类型
     * @return {@link List< ItemAttr>}
     * @author ccomma
     */
    List<ItemAttr> selectByItemId(@Param("itemId") String itemId, @Param("attrType") int attrType);
}