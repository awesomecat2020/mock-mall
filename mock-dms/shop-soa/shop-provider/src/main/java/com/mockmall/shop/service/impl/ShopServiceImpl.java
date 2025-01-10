package com.mockmall.shop.service.impl;

import com.mockmall.shop.mapper.ShopMapper;
import com.mockmall.shop.pojo.Shop;
import com.mockmall.shop.service.ShopService;
import com.mockmall.shop.vo.ShopVO;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 店铺服务
 *
 * @author ccomma
 */
@Service
public class ShopServiceImpl implements ShopService {

    @Resource
    private ShopMapper shopMapper;

    @Override
    public ShopVO getByEntityId(String entityId) {
        Shop shop = shopMapper.selectByEntityId(entityId);

        ShopVO shopVO = new ShopVO();
        BeanUtils.copyProperties(shop, shopVO);
        return shopVO;
    }
}
