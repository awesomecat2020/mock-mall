package com.mockmall.item.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * ItemAttr
 * 
 * @author ccomma
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class ItemAttr extends BasePO {
    private static final long serialVersionUID = 1L;

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
     * 顺序
     */
    private Integer sort;

    /**
     * 是否有效
     */
    private Integer isValid;
}