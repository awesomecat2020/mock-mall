package com.mockmall.item.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * 完整 itemVO
 * @author ccomma
 */
@Data
public class ItemCompleteVO implements Serializable {

    private static final long serialVersionUID = -5956824910293170717L;

    /**
     * 商品
     */
    private ItemVO item;

    // private List<>
}
