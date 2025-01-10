package com.mockmall.shop.service;

import com.mockmall.commonbase.result.Result;
import com.mockmall.shop.vo.ShopVO;

/**
 * 店铺服务
 *
 * @author ccomma
 */
public interface ShopClientService {

    /**
     * 获取店铺信息
     *
     * @param shopId 店铺 id
     * @return {@link Result< ShopVO>}
     * @author ccomma
     */
    Result<ShopVO> getShop(String shopId);
}
