package com.mockmall.minifront.controller.item;

import com.mockmall.commonbase.base.BaseQuery;
import com.mockmall.commonbase.result.Page;
import com.mockmall.commonbase.result.Result;
import com.mockmall.item.bo.ItemBO;
import com.mockmall.item.service.ItemClientService;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 商品 Controller
 *
 * @author ccomma
 */
@RestController
@RequestMapping("/item/v1")
public class ItemController {

    @DubboReference(check = false, version = "1.0.0")
    private ItemClientService itemClientService;

    @GetMapping("/get_item_page_for_recommend")
    public Result<Page<ItemBO>> getItemPageForRecommend(BaseQuery query) {
        return itemClientService.getPageForRecommend(query);
    }
}
