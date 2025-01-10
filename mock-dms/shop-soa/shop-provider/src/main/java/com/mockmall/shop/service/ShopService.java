package com.mockmall.shop.service;

import com.mockmall.shop.vo.ShopVO;

/**
 * 店铺服务
 *
 * @author ccomma
 */
public interface ShopService {

    /**
     * 获取店铺
     *
     * @param entityId 店铺实体 id
     * @return {@link ShopVO}
     * @author ccomma
     */
    ShopVO getByEntityId(String entityId);
}
