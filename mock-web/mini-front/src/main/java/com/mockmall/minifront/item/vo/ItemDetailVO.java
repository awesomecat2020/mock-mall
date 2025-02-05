package com.mockmall.minifront.item.vo;

import com.mockmall.item.vo.ItemAttrVO;
import com.mockmall.item.vo.ItemImgVO;
import com.mockmall.item.vo.ItemSkuVO;
import com.mockmall.item.vo.ItemVO;
import com.mockmall.user.vo.UserAddressVO;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author ccomma
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

    /**
     * 商品分类属性
     */
    private List<ItemAttrVO> categoryAttrList;

    /**
     * 默认地址
     */
    private UserAddressVO defaultAddress;
}
