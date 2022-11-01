package com.mockmall.item.mapper;

import com.mockmall.item.pojo.ItemImg;

import java.util.List;

public interface ItemImgMapper {
    /**
     * 新增
     * 
     * @param row item_img
     * @return 影响条数
     * @author ccomma
     */
    int insert(ItemImg row);

    /**
     * 根据主键查询
     * 
     * @param id 主键
     * @return itemimg
     * @author ccomma
     */
    ItemImg selectByPrimaryKey(String id);

    /**
     * 查询全部
     * 
     * @return {@code List<ItemImg>}
     * @author ccomma
     */
    List<ItemImg> selectAll();

    /**
     * 根据主键更新
     * 
     * @param row item_img
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(ItemImg row);

    /**
     * 批量查询主图
     *
     * @param itemIdList itemId 列表
     * @return 主图列表
     * @author ccomma
     */
    List<ItemImg> selectMainImgByItemIdList(List<String> itemIdList);
}