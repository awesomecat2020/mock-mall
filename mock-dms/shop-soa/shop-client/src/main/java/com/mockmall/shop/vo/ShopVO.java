package com.mockmall.shop.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * Shop VO
 *
 * @author ccomma
 */
@Data
public class ShopVO implements Serializable {

    private static final long serialVersionUID = 6765507488014114845L;

    /**
     * 主键
     */
    private String id;

    /**
     * 店铺实体ID
     */
    private String entityId;

    /**
     * 商品名称
     */
    private String name;
}
