package com.mockmall.item.service.impl;

import com.mockmall.commonbase.result.Page;
import com.mockmall.item.bo.ItemBO;
import com.mockmall.item.mapper.ItemImgMapper;
import com.mockmall.item.mapper.ItemMapper;
import com.mockmall.item.pojo.Item;
import com.mockmall.item.pojo.ItemImg;
import com.mockmall.item.request.ItemQuery;
import com.mockmall.item.service.ItemImgService;
import com.mockmall.item.service.ItemService;
import com.mockmall.item.service.ItemSkuService;
import com.mockmall.item.vo.ItemCompleteVO;
import com.mockmall.item.vo.ItemVO;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * 商品 Service
 *
 * @author ccomma
 */
@Service
public class ItemServiceImpl implements ItemService {

    @Resource
    private ItemMapper itemMapper;
    @Resource
    private ItemImgMapper itemImgMapper;
    @Resource
    private ItemImgService itemImgService;
    @Resource
    private ItemSkuService itemSkuService;

    // TODO: ES 实现
    @Override
    public Page<ItemBO> getPageForRecommend(ItemQuery query) {
        int count = itemMapper.countForRecommend(query);
        List<Item> itemList = itemMapper.selectForRecommend(query);
        List<String> itemIdList = itemList.stream()
                .map(Item::getId)
                .collect(Collectors.toList());

        // 查询主图
        List<ItemImg> mainImgList = itemImgMapper.selectMainImgByItemIdList(itemIdList);
        // itemId -> itemImg
        Map<String, ItemImg> mainImgMap = mainImgList.stream().collect(Collectors.toMap(ItemImg::getItemId, Function.identity(), (f, s) -> f));

        // 构建 BO
        List<ItemBO> itemBoList = itemList.stream()
                .map(item -> {
                    ItemBO itemBO = new ItemBO();
                    BeanUtils.copyProperties(item, itemBO);
                    ItemImg itemImg = mainImgMap.get(item.getId());
                    itemBO.setMainImgUrl(itemImg.getUrl());
                    return itemBO;
                })
                .collect(Collectors.toList());

        Page<ItemBO> page = new Page<>();
        page.setPageIndex(query.getPageIndex());
        page.setPageSize(query.getPageSize());
        page.setTotalCount((long) count);
        page.setPageCount((long) (int) Math.ceil((double) count / query.getPageSize()));
        page.setList(itemBoList);
        return page;
    }

    @Override
    public ItemCompleteVO getCompleteById(String id) {
        Item item = itemMapper.selectByPrimaryKey(id);
        ItemVO itemVO = new ItemVO();
        BeanUtils.copyProperties(item, itemVO);

        ItemCompleteVO itemCompleteVO = new ItemCompleteVO();
        itemCompleteVO.setItem(itemVO);
        itemCompleteVO.setItemImgList(itemImgService.listItemId(id));
        itemCompleteVO.setItemSkuList(itemSkuService.listByItemId(id));
        return itemCompleteVO;
    }

}
