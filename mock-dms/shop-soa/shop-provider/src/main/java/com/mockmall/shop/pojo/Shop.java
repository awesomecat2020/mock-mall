package com.mockmall.shop.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * Shop
 * 
 * @author ccomma
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Shop extends BasePO {
    private static final long serialVersionUID = 1L;

    /**
     * 商品名称
     */
    private String name;

}