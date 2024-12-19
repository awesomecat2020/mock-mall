package com.mockmall.item.service;

import com.mockmall.item.vo.ItemSkuVO;

import java.util.List;

/**
 * ItemSkuService
 *
 * @author ccomma
 */
public interface ItemSkuService {

    /**
     * 获取商品 sku 列表
     *
     * @param itemId 商品 id
     * @return {@link List< ItemSkuVO>}
     * @author ccomma
     */
    List<ItemSkuVO> listByItemId(String itemId);
}
