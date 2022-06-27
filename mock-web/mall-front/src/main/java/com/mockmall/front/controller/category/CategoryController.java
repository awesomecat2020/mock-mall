package com.mockmall.front.controller.category;

import com.mockmall.commonbase.result.Result;
import com.mockmall.item.client.bo.CategoryBO;
import com.mockmall.item.client.service.CategoryClientService;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 类目 Controller
 *
 * @author ccomma
 */
@RestController
@RequestMapping("/category/v1")
public class CategoryController {
    @DubboReference(check = false, version = "1.0.0")
    private CategoryClientService categoryClientService;

    @GetMapping("/get_category_list_by_top")
    public Result<List<CategoryBO>> getCategoryListByTop() {
        return categoryClientService.getTopCategoryList();
    }
}
