package com.mockmall.minifront.item.controller;

import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Page;
import com.mockmall.commonbase.result.Result;
import com.mockmall.item.bo.ItemBO;
import com.mockmall.item.request.ItemQuery;
import com.mockmall.item.service.ItemClientService;
import com.mockmall.item.vo.ItemCompleteVO;
import com.mockmall.minifront.item.vo.ItemDetailVO;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    public Result<Page<ItemBO>> getItemPageForRecommend(ItemQuery query) {
        return itemClientService.getPageForRecommend(query);
    }

    @GetMapping("/get_item_detail")
    public Result<ItemDetailVO> getItemDetail(@RequestParam String id) {
        Result<ItemCompleteVO> itemComplete = itemClientService.getCompleteById(id);

        // 商品信息
        ItemDetailVO itemDetailVO = new ItemDetailVO();
        itemDetailVO.setItem(itemComplete.getData().getItem());
        itemDetailVO.setItemImgList(itemComplete.getData().getItemImgList());
        itemDetailVO.setItemSkuList(itemComplete.getData().getItemSkuList());

        // 地址


        return GeneralResult.successWithData(itemDetailVO);
    }
}
