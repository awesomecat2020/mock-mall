package com.mockmall.shop.service.client;

import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Result;
import com.mockmall.shop.service.ShopClientService;
import com.mockmall.shop.service.ShopService;
import com.mockmall.shop.vo.ShopVO;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;

/**
 * 店铺服务
 *
 * @author ccomma
 */
@DubboService(version = "1.0.0")
public class ShopClientServiceImpl implements ShopClientService {

    @Resource
    private ShopService shopService;

    @Override
    public Result<ShopVO> getShop(String entityId) {
        return GeneralResult.successWithData(shopService.getByEntityId(entityId));
    }
}
