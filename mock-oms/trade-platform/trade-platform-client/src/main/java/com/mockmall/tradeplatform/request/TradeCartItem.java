package com.mockmall.tradeplatform.request;

import lombok.Data;

import java.io.Serializable;

/**
 * 购物车子项
 *
 * @author ccomma
 */
@Data
public class TradeCartItem implements Serializable {

    private static final long serialVersionUID = 645181022767399439L;

    private String itemId;

    private String itemSkuId;

    private Integer num;
}
