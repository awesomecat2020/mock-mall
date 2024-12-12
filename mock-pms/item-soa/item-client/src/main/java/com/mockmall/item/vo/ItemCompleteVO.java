package com.mockmall.item.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 完整 itemVO
 *
 * @author ccomma
 */
@Data
public class ItemCompleteVO implements Serializable {

    private static final long serialVersionUID = -5956824910293170717L;

    /**
     * 商品
     */
    private ItemVO item;

    /**
     * 商品图片列表
     */
    private List<ItemImgVO> itemImgList;

    /**
     * sku 列表
     */
    private List<ItemSkuVO> itemSkuList;
}
