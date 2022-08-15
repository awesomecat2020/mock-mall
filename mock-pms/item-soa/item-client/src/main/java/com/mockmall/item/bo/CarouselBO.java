package com.mockmall.item.bo;

import lombok.Data;

import java.io.Serializable;

/**
 * 轮播图 BO
 *
 * @author ccomma
 */
@Data
public class CarouselBO implements Serializable {
    private static final long serialVersionUID = 9032819177860709655L;

    /**
     * 主键
     */
    private String id;

    /**
     * 图片地址
     */
    private String imageUrl;

    /**
     * 背景色
     */
    private String backgroundColor;

    /**
     * 模块id
     */
    private String moduleId;

    /**
     * 轮播图类型 1：商品 2：分类
     */
    private Integer type;

    /**
     * 轮播图展示顺序
     */
    private Integer sort;

    /**
     * 是否展示
     */
    private Boolean isShow;

}
