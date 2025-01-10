package com.mockmall.tradeplatform.vo;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

/**
 * 购物车购物车商品项 VO
 *
 * @author ccomma
 */
@Data
public class TradeCartItemVO implements Serializable {

    private static final long serialVersionUID = 4550792923644751061L;

    /**
     * 商品 id
     */
    private String itemId;

    /**
     * skuId
     */
    private String itemSkuId;

    /**
     * 商品名称
     */
    private String itemName;

    /**
     * 店铺实体 id
     */
    private String entityId;

    /**
     * 店铺名称
     */
    private String shopName;

    /**
     * sku 属性列表
     */
    private List<TradeCartSkuPropVO> skuPropList;

    /**
     * 商品图
     */
    private String image;

    /**
     * 数量
     */
    private Integer num;

    /**
     * 单价
     */
    private BigDecimal price;

    /**
     * 总费用
     */
    private BigDecimal fee;
}
