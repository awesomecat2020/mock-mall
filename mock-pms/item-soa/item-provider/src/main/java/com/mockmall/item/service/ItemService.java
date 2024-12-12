package com.mockmall.item.service;

import com.mockmall.commonbase.result.Page;
import com.mockmall.commonbase.result.Result;
import com.mockmall.item.bo.ItemBO;
import com.mockmall.item.request.ItemQuery;
import com.mockmall.item.vo.ItemCompleteVO;

/**
 * ItemService
 *
 * @author ccomma
 */
public interface ItemService {

    Page<ItemBO> getPageForRecommend(ItemQuery query);

    /**
     * 获取完整商品详情
     *
     * @param id       商品 id
     * @return {@link Result < ItemCompleteVO>}
     * @author ccomma
     */
    ItemCompleteVO getCompleteById(String id);
}
