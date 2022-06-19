package com.mockmall.item.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * Item
 * 
 * @author ccomma
 */
@Setter
@Getter
@ToString
public class Item extends BasePO {
    private static final long serialVersionUID = 1L;

    /**
     * 商品名称
     */
    private String itemName;

    /**
     * 分类id
     */
    private String catId;

    /**
     * 一级分类id
     */
    private String rootCatId;

    /**
     * 累计销售
     */
    private Integer sellCounts;

    /**
     * 上下架状态,1:上架 2:下架
     */
    private Integer onOffStatus;

    /**
     * 是否有效
     */
    private Boolean isValid;

    /**
     * 商品内容
     */
    private String content;
}