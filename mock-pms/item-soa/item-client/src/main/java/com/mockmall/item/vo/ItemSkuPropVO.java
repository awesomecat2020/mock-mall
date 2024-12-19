package com.mockmall.item.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * sku 属性 VO
 *
 * @author ccomma
 */
@Data
public class ItemSkuPropVO implements Serializable {

    private static final long serialVersionUID = 3118108987119253908L;

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
