package com.mockmall.minifront.item.controller;

import com.mockmall.commonbase.exception.BizException;
import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Page;
import com.mockmall.commonbase.result.Result;
import com.mockmall.item.bo.ItemBO;
import com.mockmall.item.request.ItemQuery;
import com.mockmall.item.service.ItemClientService;
import com.mockmall.item.vo.ItemCompleteVO;
import com.mockmall.minifront.item.vo.ItemDetailVO;
import com.mockmall.user.service.UserAddressClientService;
import com.mockmall.user.vo.UserAddressVO;
import org.apache.commons.lang3.StringUtils;
import org.apache.dubbo.config.annotation.DubboReference;
import org.apache.dubbo.config.annotation.DubboService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Objects;

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

    @DubboReference(check = false, version = "1.0.0")
    private UserAddressClientService userAddressClientService;

    @GetMapping("/get_item_page_for_recommend")
    public Result<Page<ItemBO>> getItemPageForRecommend(ItemQuery query) {
        return itemClientService.getPageForRecommend(query);
    }

    @GetMapping("/get_item_detail")
    public Result<ItemDetailVO> getItemDetail(@RequestParam String itemId) {
        try {
            // SSO 中获取用户信息
            String userId = "";

            Result<ItemCompleteVO> itemCompleteResult = itemClientService.getCompleteById(itemId);
            if (!itemCompleteResult.getSuccess()) {
                return GeneralResult.failure(itemCompleteResult);
            }
            ItemCompleteVO itemCompleteVO = itemCompleteResult.getData();

            // 商品信息
            ItemDetailVO itemDetailVO = new ItemDetailVO();
            itemDetailVO.setItem(itemCompleteVO.getItem());
            itemDetailVO.setItemImgList(itemCompleteVO.getItemImgList());
            itemDetailVO.setItemSkuList(itemCompleteVO.getItemSkuList());
            itemDetailVO.setCategoryAttrList(itemCompleteVO.getCategoryAttrList());

            // 地址
            if (StringUtils.isNotBlank(userId)) {
                Result<UserAddressVO> defaultUserAddressResult = userAddressClientService.getDefault(userId);
                if (!defaultUserAddressResult.getSuccess()) {
                    return GeneralResult.failure(defaultUserAddressResult);
                }
                itemDetailVO.setDefaultAddress(defaultUserAddressResult.getData());
            }

            // TODO: 评价

            // TODO: 问答

            // TODO: 店铺

            return GeneralResult.successWithData(itemDetailVO);
        } catch (BizException e) {
            return GeneralResult.failureWithCode(e.getCode(), e.getMessage());
        } catch (Exception e) {
            return GeneralResult.failure("系统异常");
        }
    }
}
