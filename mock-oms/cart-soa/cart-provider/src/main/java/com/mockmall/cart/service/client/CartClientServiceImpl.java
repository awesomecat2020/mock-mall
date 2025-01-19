package com.mockmall.cart.service.client;

import com.mockmall.cart.service.CartClientService;
import org.apache.dubbo.config.annotation.DubboService;

/**
 * 购物车 Service
 *
 * @author ccomma
 */
@DubboService
public class CartClientServiceImpl implements CartClientService {

    // @DubboReference
    // private ItemSkuClientService itemSkuClientService;
    // @Resource
    // private CalculateService calculateService;
    //
    // @Override
    // public Result<List<CartItemVO>> add(CartAddRequest cartAddRequest) {
    //     Result<ItemSkuVO> itemSkuResult = itemSkuClientService.getItemSkuVO(tradeCartAddRequest.getItemSkuId());
    //     if (!itemSkuResult.getSuccess()) {
    //         throw new BizException(itemSkuResult);
    //     }
    //     ItemSkuVO itemSkuVO = itemSkuResult.getData();
    //
    //     // 算价
    //     TradeCartItemVO tradeCartItemVO = calculateService.calculateCart(tradeCartAddRequest, itemSkuVO);
    //
    //     // 加入购物车
    //
    //
    //     return GeneralResult.success();
    // }
}
