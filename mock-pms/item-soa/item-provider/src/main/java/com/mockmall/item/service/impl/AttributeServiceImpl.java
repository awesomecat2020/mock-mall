package com.mockmall.item.service.impl;

import com.mockmall.item.mapper.ItemAttrMapper;
import com.mockmall.item.pojo.ItemAttr;
import com.mockmall.item.service.AttributeService;
import com.mockmall.item.vo.ItemAttrVO;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

/**
 * AttributeService
 *
 * @author ccomma
 */
@Service
public class AttributeServiceImpl implements AttributeService {

    @Resource
    private ItemAttrMapper itemAttrMapper;

    @Override
    public List<ItemAttrVO> listItemAttrByItemId(String itemId, int attrType) {
        // TODO: 缓存
        List<ItemAttr> itemAttrList = itemAttrMapper.selectByItemId(itemId, attrType);
        return itemAttrList.stream()
                .map(itemAttr -> {
                    ItemAttrVO itemAttrVO = new ItemAttrVO();
                    BeanUtils.copyProperties(itemAttr, itemAttrVO);
                    return itemAttrVO;
                })
                .collect(Collectors.toList());
    }
}
