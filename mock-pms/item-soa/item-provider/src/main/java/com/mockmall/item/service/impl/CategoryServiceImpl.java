package com.mockmall.item.service.impl;

import com.mockmall.item.bo.CategoryBO;
import com.mockmall.item.mapper.CategoryMapper;
import com.mockmall.item.pojo.Category;
import com.mockmall.item.service.CategoryService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 类目 Service
 *
 * @author ccomma
 * 2022/6/21 14:37
 */
@Service
public class CategoryServiceImpl implements CategoryService {

    @Resource
    private CategoryMapper categoryMapper;

    @Override
    public List<CategoryBO> listByTop() {
        List<Category> categoryList = categoryMapper.selectByTop();
        return categoryList.stream()
                .map(category -> {
                    CategoryBO categoryBO = new CategoryBO();
                    BeanUtils.copyProperties(category, categoryBO);
                    return categoryBO;
                })
                .collect(Collectors.toList());
    }

}
