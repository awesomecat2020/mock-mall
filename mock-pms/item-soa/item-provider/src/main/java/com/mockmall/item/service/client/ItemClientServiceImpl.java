package com.mockmall.item.service.client;

import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Page;
import com.mockmall.commonbase.result.Result;
import com.mockmall.item.bo.ItemBO;
import com.mockmall.item.request.ItemQuery;
import com.mockmall.item.service.ItemClientService;
import com.mockmall.item.service.ItemService;
import com.mockmall.item.vo.ItemCompleteVO;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;

/**
 * 商品 ClientService
 *
 * @author ccomma
 */
@DubboService(version = "1.0.0")
public class ItemClientServiceImpl implements ItemClientService {

    @Resource
    private ItemService itemService;

    @Override
    public Result<Page<ItemBO>> getPageForRecommend(ItemQuery query) {
        return GeneralResult.successWithData(itemService.getPageForRecommend(query));
    }

    @Override
    public Result<ItemCompleteVO> getCompleteById(String id) {
        return GeneralResult.successWithData(itemService.getCompleteById(id));
    }
}
