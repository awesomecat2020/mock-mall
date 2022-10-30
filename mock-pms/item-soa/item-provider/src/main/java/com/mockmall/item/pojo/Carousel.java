package com.mockmall.item.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * Carousel
 * 
 * @author ccomma
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Carousel extends BasePO {

    private static final long serialVersionUID = 5835637154115052403L;

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
    private Boolean show;

}