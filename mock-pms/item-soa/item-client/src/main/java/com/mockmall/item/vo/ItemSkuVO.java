package com.mockmall.item.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @author ccomma
 */
@Data
public class ItemSkuVO implements Serializable {

    private static final long serialVersionUID = -7617316674689319135L;

    /**
     * 主键
     */
    private String id;

    /**
     * 店铺实体ID
     */
    private String entityId;

    /**
     * 商品id
     */
    private String itemId;

    /**
     * sku 状态
     */
    private Integer status;

    /**
     * 图片地址
     */
    private String image;

    /**
     * 销售属性
     */
    private String sellAttr;

    /**
     * 价格
     */
    private Integer price;
}
