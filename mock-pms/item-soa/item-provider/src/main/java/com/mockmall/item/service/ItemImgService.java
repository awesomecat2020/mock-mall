package com.mockmall.item.service;

import com.mockmall.item.vo.ItemImgVO;

import java.util.List;

/**
 * ItemImgService
 *
 * @author ccomma
 */
public interface ItemImgService {

    /**
     * 根据商品 id 获取商品图片
     *
     * @param itemId 商品id
     * @return 商品图片
     */
    List<ItemImgVO> listItemId(String itemId);

}
