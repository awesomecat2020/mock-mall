package com.mockmall.tradeplatform.request;

import lombok.Data;

import java.io.Serializable;

/**
 * 购物车
 *
 * @author ccomma
 */
@Data
public class TradeCartAddRequest implements Serializable {

    private static final long serialVersionUID = 645181022767399439L;

    /**
     * 商品 id
     */
    private String itemId;

    /**
     * skuId
     */
    private String itemSkuId;

    /**
     * 数量
     */
    private Integer num;
}
