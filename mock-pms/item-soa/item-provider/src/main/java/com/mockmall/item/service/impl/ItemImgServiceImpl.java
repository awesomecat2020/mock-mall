package com.mockmall.item.service.impl;

import com.mockmall.item.mapper.ItemImgMapper;
import com.mockmall.item.pojo.ItemImg;
import com.mockmall.item.service.ItemImgService;
import com.mockmall.item.vo.ItemImgVO;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

/**
 * ItemImgService
 *
 * @author ccomma
 */
@Service
public class ItemImgServiceImpl implements ItemImgService {

    @Resource
    private ItemImgMapper itemImgMapper;

    @Override
    public List<ItemImgVO> listItemId(String itemId) {
        List<ItemImg> imgList = itemImgMapper.selectByItemId(itemId);
        return imgList.stream()
                .map(itemImg -> {
                    ItemImgVO itemImgVO = new ItemImgVO();
                    BeanUtils.copyProperties(itemImg, itemImgVO);
                    return itemImgVO;
                })
                .collect(Collectors.toList());
    }
}
