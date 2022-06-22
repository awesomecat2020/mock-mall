package com.mockmall.item.client.service;

import com.mockmall.commonbase.result.Result;
import com.mockmall.item.client.bo.CategoryBO;

import java.util.List;

/**
 * 类目 Client Service
 *
 * @author ccomma
 * 2022/6/21 14:32
 */
public interface CategoryClientService {

    /**
     * 获取一级类目列表
     *
     * @return 一级类目列表
     * @author ccomma
     */
    Result<List<CategoryBO>> getTopCategoryList();
}
