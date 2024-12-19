package com.mockmall.item.mapper;

import com.mockmall.item.pojo.ItemSku;

import java.util.List;

public interface ItemSkuMapper {

    /**
     * 新增
     *
     * @param row itemSku
     * @return 影响条数
     * @author ccomma
     */
    int insert(ItemSku row);

    /**
     * 根据主键查询
     *
     * @param id 主键
     * @return itemSku
     * @author ccomma
     */
    ItemSku selectByPrimaryKey(String id);

    /**
     * 查询全部
     *
     * @return {@code List<ItemSku>}
     * @author ccomma
     */
    List<ItemSku> selectAll();

    /**
     * 根据主键更新
     *
     * @param row itemSku
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(ItemSku row);

    /**
     * 根据商品 id 查询 Sku
     *
     * @param itemId 商品 id
     * @return {@link List< ItemSku>}
     * @author ccomma
     */
    List<ItemSku> selectByItemId(String itemId);
}