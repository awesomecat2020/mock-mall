package com.mockmall.item.service;

import com.mockmall.commonbase.base.BaseQuery;
import com.mockmall.commonbase.result.Page;
import com.mockmall.commonbase.result.Result;
import com.mockmall.item.bo.ItemBO;

/**
 * IItemClientService
 *
 * @author ccomma
 */
public interface ItemClientService {

    Result<Page<ItemBO>> getPageForRecommend(BaseQuery query);
}
