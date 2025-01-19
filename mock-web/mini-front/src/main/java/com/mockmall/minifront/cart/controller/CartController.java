package com.mockmall.minifront.cart.controller;

import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Page;
import com.mockmall.commonbase.result.Result;
import com.mockmall.item.bo.ItemBO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 购物车 Controller
 *
 * @author ccomma
 */
@RestController
@RequestMapping("/cart/v1")
public class CartController {

    // @PostMapping(value = "/modify")
    // public ResultMap getCartCount(@RequestBody CartReq2VO cartReq) {
    //     SessionUserInfo sessionUserInfo = sessionHelper.getSessionUserInfo(httpServletRequest);
    //     List<CartItem> cartItems = transCartItem(cartReq.getItems());
    //     CartItemModifyRequest cartItemModifyReq = new CartItemModifyRequest(cartReq.getEntityId(), sessionUserInfo.getCustomerId(), cartItems);
    //     cartItemModifyReq.setMultiMenuId(cartReq.getMultiMenuId());
    //     cartItemModifyReq.setMultiMenuType(cartReq.getMultiMenuType());
    //     cartItemModifyReq.setIndustry(cartReq.getIndustry());
    //     cartItemModifyReq.setBusinessScenario(cartReq.getBusinessScenario());
    //     cartItemModifyReq.setIndexes(cartReq.getIndexes());
    //     cartItemModifyReq.setSelectable(cartReq.getSelectable());
    //     cartItemModifyReq.setNeedPromotionInfo(cartReq.getNeedPromotionInfo());
    //     cartItemModifyReq.setSource(cartReq.getSource());
    //     cartItemModifyReq.setLang(cartReq.getLang());
    //     cartItemModifyReq.setClientFrom(getClientOrderFrom(sessionUserInfo).getClientFrom());
    //     Result<CartResVo> cartResResult = cartCenterService.modifyCart(cartItemModifyReq);
    //     if (ResultUtil.isModelNull(cartResResult)) {
    //         return ApiResultUtil.failResult(cartResResult.getResultCode(), cartResResult.getMessage());
    //     }
    //     return ApiResultUtil.successResult(cartResResult.getModel());
    // }

}
