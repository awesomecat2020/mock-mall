package com.mockmall.minifront.item.vo;

import com.mockmall.item.vo.ItemImgVO;
import com.mockmall.item.vo.ItemSkuVO;
import com.mockmall.item.vo.ItemVO;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author mianxian
 * 2024/12/12 下午7:44
 */
@Data
public class ItemDetailVO implements Serializable {

    private static final long serialVersionUID = 7517038459336704295L;

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
