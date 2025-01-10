package com.mockmall.tradeplatform.service.client;

import com.mockmall.commonbase.exception.BizException;
import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Result;
import com.mockmall.item.service.ItemSkuClientService;
import com.mockmall.item.vo.ItemSkuVO;
import com.mockmall.tradeplatform.request.TradeCartAddRequest;
import com.mockmall.tradeplatform.service.CalculateService;
import com.mockmall.tradeplatform.service.TradeCartClientService;
import com.mockmall.tradeplatform.vo.TradeCartItemVO;
import org.apache.dubbo.config.annotation.DubboReference;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;
import java.util.List;

/**
 * 购物车 Service
 *
 * @author ccomma
 */
@DubboService
public class TradeCartClientServiceImpl implements TradeCartClientService {

    @DubboReference
    private ItemSkuClientService itemSkuClientService;
    @Resource
    private CalculateService calculateService;

    @Override
    public Result<List<TradeCartItemVO>> add(TradeCartAddRequest tradeCartAddRequest) {
        Result<ItemSkuVO> itemSkuResult = itemSkuClientService.getItemSkuVO(tradeCartAddRequest.getItemSkuId());
        if (!itemSkuResult.getSuccess()) {
            throw new BizException(itemSkuResult);
        }
        ItemSkuVO itemSkuVO = itemSkuResult.getData();

        // 算价
        TradeCartItemVO tradeCartItemVO = calculateService.calculateCart(tradeCartAddRequest, itemSkuVO);

        // 加入购物车

        return GeneralResult.success();
    }
}
