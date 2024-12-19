package com.mockmall.item.service;

import com.mockmall.item.vo.AttributeVO;
import com.mockmall.item.vo.ItemAttrVO;

import java.util.List;

/**
 * AttributeService
 *
 * @author ccomma
 */
public interface AttributeService {

    /**
     * 根据商品 ID 获取属性列表
     *
     * @param itemId   商品 ID
     * @param attrType 属性类型
     * @return {@link ItemAttrVO}
     * @author ccomma
     */
    List<ItemAttrVO> listItemAttrByItemId(String itemId, int attrType);
}
