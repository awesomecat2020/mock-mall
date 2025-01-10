package com.mockmall.tradeplatform.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * sku 属性 VO
 *
 * @author ccomma
 */
@Data
public class TradeCartSkuPropVO implements Serializable {

    private static final long serialVersionUID = 1201601693858716713L;

    /**
     * 属性 id
     */
    private String attrId;

    /**
     * 属性名称
     */
    private String attrName;

    /**
     * 属性值 id
     */
    private String attrValueId;

    /**
     * 属性值名称
     */
    private String attrValueName;

    /**
     * 图片
     */
    private String image;
}
