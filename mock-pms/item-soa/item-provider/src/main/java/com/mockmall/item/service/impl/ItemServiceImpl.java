package com.mockmall.item.service.impl;

import com.mockmall.commonbase.base.BaseQuery;
import com.mockmall.commonbase.result.Page;
import com.mockmall.item.bo.ItemBO;
import com.mockmall.item.mapper.ItemMapper;
import com.mockmall.item.pojo.Item;
import com.mockmall.item.service.ItemService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
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

    @Override
    public Page<ItemBO> getPageForRecommend(BaseQuery query) {
        int count = itemMapper.countForRecommend(query);
        List<Item> itemList = itemMapper.selectForRecommend(query);

        List<ItemBO> itemBoList = itemList.stream()
                .map(item -> {
                    ItemBO itemBO = new ItemBO();
                    BeanUtils.copyProperties(item, itemBO);
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

}
