package com.mockmall.item.bo;

import lombok.Data;

import java.io.Serializable;

/**
 * 轮播图 BO
 *
 * @author ccomma
 */
@Data
public class ItemBO implements Serializable {

    private static final long serialVersionUID = -8406174880673507984L;

    /**
     * 主键
     */
    private String id;

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

    /**
     * 主图地址
     */
    private String mainImgUrl;

}
