package com.mockmall.front.controller.category;

import com.mockmall.commonbase.result.Result;
import com.mockmall.item.client.bo.CategoryBO;
import com.mockmall.item.client.service.CategoryClientService;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 类目 Controller
 *
 * @author ccomma
 */
@RequestMapping("/category/v1")
@Controller
public class CategoryController {
    @DubboReference
    private CategoryClientService categoryClientService;

    @GetMapping("/get_category_list_by_top")
    public Result<List<CategoryBO>> getCategoryListByTop() {
        return categoryClientService.getTopCategoryList();
    }
}
