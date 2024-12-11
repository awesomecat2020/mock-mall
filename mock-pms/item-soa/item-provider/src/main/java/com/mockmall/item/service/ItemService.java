package com.mockmall.item.service;

import com.mockmall.commonbase.base.BaseQuery;
import com.mockmall.commonbase.result.Page;
import com.mockmall.item.bo.ItemBO;

/**
 * ItemService
 *
 * @author ccomma
 */
public interface ItemService {

    Page<ItemBO> getPageForRecommend(BaseQuery query);


}
