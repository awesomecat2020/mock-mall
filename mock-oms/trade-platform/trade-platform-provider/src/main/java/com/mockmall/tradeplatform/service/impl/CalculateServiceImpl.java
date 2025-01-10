package com.mockmall.tradeplatform.service.impl;

import com.mockmall.commonbase.exception.BizException;
import com.mockmall.commonbase.result.Result;
import com.mockmall.item.vo.ItemSkuVO;
import com.mockmall.shop.service.ShopClientService;
import com.mockmall.shop.vo.ShopVO;
import com.mockmall.tradeplatform.request.TradeCartAddRequest;
import com.mockmall.tradeplatform.service.CalculateService;
import com.mockmall.tradeplatform.vo.TradeCartItemVO;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 算价服务
 *
 * @author ccomma
 */
@Service
public class CalculateServiceImpl implements CalculateService {

    @DubboReference
    private ShopClientService shopClientService;

    @Override
    public TradeCartItemVO calculateCart(TradeCartAddRequest tradeCartAddRequest, ItemSkuVO itemSkuVO) {
        Result<ShopVO> shopResult = shopClientService.getShop(itemSkuVO.getEntityId());
        if (!shopResult.getSuccess()) {
            throw new BizException(shopResult);
        }
        ShopVO shopVO = shopResult.getData();

        // 后续添加会员价、折扣价、优惠价等计算
        TradeCartItemVO tradeCartItemVO = new TradeCartItemVO();
        tradeCartItemVO.setItemId(tradeCartAddRequest.getItemId());
        tradeCartItemVO.setItemSkuId(tradeCartAddRequest.getItemSkuId());
        tradeCartItemVO.setNum(tradeCartAddRequest.getNum());

        tradeCartItemVO.setItemName(itemSkuVO.getItemName());
        tradeCartItemVO.setEntityId(itemSkuVO.getEntityId());
        tradeCartItemVO.setShopName(shopVO.getName());
        // tradeCartItemVO.setSkuPropList();
        // tradeCartItemVO.setImage(itemSkuVO.getImage());
        // tradeCartItemVO.setPrice(itemSkuVO.getPrice());
        // tradeCartItemVO.setFee();
        return null;
    }
}
