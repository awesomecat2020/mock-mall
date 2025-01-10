package com.mockmall.item.service.client;

import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Result;
import com.mockmall.item.service.ItemSkuClientService;
import com.mockmall.item.service.ItemSkuService;
import com.mockmall.item.vo.ItemSkuVO;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;

/**
 * Sku Client Service
 *
 * @author ccomma
 */
@DubboService(version = "1.0.0")
public class ItemSkuClientServiceImpl implements ItemSkuClientService {

    @Resource
    private ItemSkuService itemSkuService;

    @Override
    public Result<ItemSkuVO> getItemSkuVO(String id) {
        return GeneralResult.successWithData(itemSkuService.getById(id));
    }
}
