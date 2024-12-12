package com.mockmall.item.service.impl;

import com.mockmall.item.mapper.ItemSkuMapper;
import com.mockmall.item.pojo.ItemSku;
import com.mockmall.item.service.ItemSkuService;
import com.mockmall.item.vo.ItemSkuVO;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

/**
 * ItemSkuService
 *
 * @author mianxian
 * 2024/12/12 下午7:14
 */
@Service
public class ItemSkuServiceImpl implements ItemSkuService {

    @Resource
    private ItemSkuMapper itemSkuMapper;

    @Override
    public List<ItemSkuVO> listByItemId(String itemId) {
        List<ItemSku> itemSkuList = itemSkuMapper.selectByItemId(itemId);
        return itemSkuList.stream()
                .map(itemSku -> {
                    ItemSkuVO itemSkuVO = new ItemSkuVO();
                    BeanUtils.copyProperties(itemSku, itemSkuVO);
                    return itemSkuVO;
                })
                .collect(Collectors.toList());
    }
}
