package com.mockmall.item.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @author ccomma
 */
@Data
public class ItemImgVO implements Serializable {

    private static final long serialVersionUID = -7094497995413982279L;

    /**
     * 主键
     */
    private String id;

    /**
     * 店铺实体ID
     */
    private String entityId;

    /**
     * 商品外键id
     */
    private String itemId;

    /**
     * 图片地址
     */
    private String url;

    /**
     * 图片顺序，从小到大
     */
    private Integer sort;

    /**
     * 是否主图，1：是，0：否
     */
    private Integer isMain;
}
