package com.mockmall.tradeplatform.service;

import com.mockmall.commonbase.result.Result;
import com.mockmall.tradeplatform.request.TradeCartAddRequest;
import com.mockmall.tradeplatform.vo.TradeCartItemVO;

import java.util.List;

/**
 * 购物车 Service
 *
 * @author ccomma
 */
public interface TradeCartClientService {

    Result<List<TradeCartItemVO>> add(TradeCartAddRequest tradeCartAddRequest);
}
