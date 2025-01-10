package com.mockmall.tradeplatform.service;

import com.mockmall.item.vo.ItemSkuVO;
import com.mockmall.tradeplatform.request.TradeCartAddRequest;
import com.mockmall.tradeplatform.vo.TradeCartItemVO;

/**
 * 算价服务
 *
 * @author ccomma
 */
public interface CalculateService {

    /**
     * 购物车算价
     *
     * @param tradeCartAddRequest 购物车添加请求
     * @param itemSkuVO           商品 SKU
     * @return {@link TradeCartItemVO}
     * @author ccomma
     */
    TradeCartItemVO calculateCart(TradeCartAddRequest tradeCartAddRequest, ItemSkuVO itemSkuVO);
}
