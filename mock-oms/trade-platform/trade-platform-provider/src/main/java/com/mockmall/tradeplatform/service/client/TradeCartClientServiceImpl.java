package com.mockmall.tradeplatform.service.client;

import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Result;
import com.mockmall.tradeplatform.request.TradeCartItem;
import com.mockmall.tradeplatform.service.TradeCartClientService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 购物车 Service
 *
 * @author ccomma
 */
@Service
public class TradeCartClientServiceImpl implements TradeCartClientService {

    @Override
    public Result<List<TradeCartItem>> add(TradeCartItem tradeCartItem) {
        // TODO: 算价

        // 加入购物车

        return GeneralResult.success();
    }
}
