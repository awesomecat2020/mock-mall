package com.mockmall.item.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * Item
 *
 * @author ccomma
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Item extends BasePO {

    private static final long serialVersionUID = 8330385558621395334L;

    /**
     * 商品名称
     */
    private String name;

    /**
     * 分类id
     */
    private String categoryId;

    /**
     * 价格
     */
    private Long price;

    /**
     * 上下架状态,1:上架 2:下架
     */
    private Integer status;

    /**
     * 商品内容
     */
    private String content;

}