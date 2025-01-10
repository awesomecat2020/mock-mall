package com.mockmall.item.service;

import com.mockmall.commonbase.result.Result;
import com.mockmall.item.vo.ItemSkuVO;

/**
 * Sku Service
 *
 * @author ccomma
 */
public interface ItemSkuClientService {

    /**
     * 获取 Sku 信息
     *
     * @param id skuId
     * @return {@link Result< ItemSkuVO>}
     * @author ccomma
     */
    Result<ItemSkuVO> getItemSkuVO(String id);
}
