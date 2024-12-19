package com.mockmall.item.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * ItemAttr
 *
 * @author ccomma
 */
@Data
public class ItemAttrVO implements Serializable {

    private static final long serialVersionUID = -5387592542193883275L;

    /**
     * 商品id
     */
    private String itemId;

    /**
     * 属性id
     */
    private String attrId;

    /**
     * 属性值id
     */
    private String attrValueId;

    /**
     * 属性名称
     */
    private String attrName;

    /**
     * 属性值
     */
    private String attrValue;

    /**
     * 图片
     */
    private String image;

    /**
     * 类型 1：销售属性；2：非关键属性
     *
     * @see com.mockmall.item.constants.ItemConstant
     */
    private Integer attrType;

    /**
     * 顺序
     */
    private Integer sort;

}