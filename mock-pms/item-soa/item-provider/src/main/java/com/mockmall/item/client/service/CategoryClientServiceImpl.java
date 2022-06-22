package com.mockmall.item.client.service;

import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Result;
import com.mockmall.item.client.bo.CategoryBO;
import com.mockmall.item.service.CategoryService;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;
import java.util.List;

/**
 * 类目 ClientService
 *
 * @author ccomma
 * 2022/6/21 14:32
 */
@DubboService(version = "1.0.0")
public class CategoryClientServiceImpl implements CategoryClientService {

    @Resource
    private CategoryService categoryService;

    @Override
    public Result<List<CategoryBO>> getTopCategoryList() {
        return GeneralResult.successWithData(categoryService.listByTop());
    }
}
