package com.mockmall.tradeplatform.service;

import com.mockmall.tradeplatform.request.TradeCartItem;

/**
 * 购物车 Service
 *
 * @author ccomma
 */
public interface TradeCartClientService {

    String add(TradeCartItem tradeCartItem);
}
