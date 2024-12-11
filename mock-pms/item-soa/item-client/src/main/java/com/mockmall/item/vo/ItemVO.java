package com.mockmall.item.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @author mianxian
 * 2024/12/10 下午5:56
 */
@Data
public class ItemVO implements Serializable {

    private static final long serialVersionUID = 5629984463239492633L;

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
