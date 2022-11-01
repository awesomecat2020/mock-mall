package com.mockmall.item.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * ItemImg
 * 
 * @author ccomma
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class ItemImg extends BasePO {

    private static final long serialVersionUID = 5664957440219734999L;

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