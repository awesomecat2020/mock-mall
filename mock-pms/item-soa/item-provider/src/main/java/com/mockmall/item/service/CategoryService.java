package com.mockmall.item.service;

import com.mockmall.item.bo.CategoryBO;

import java.util.List;

/**
 * 类目 Service
 *
 * @author ccomma
 * 2022/6/21 14:36
 */
public interface CategoryService {
    /**
     * 获取一级类目列表
     *
     * @return 一级类目列表
     * @author ccomma
     */
    List<CategoryBO> listByTop();
}
