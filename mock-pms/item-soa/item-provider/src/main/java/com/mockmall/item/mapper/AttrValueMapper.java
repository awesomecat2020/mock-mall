package com.mockmall.item.mapper;

import com.mockmall.item.pojo.AttrValue;

import java.util.List;

public interface AttrValueMapper {

    /**
     * 新增
     *
     * @param row attrValue
     * @return 影响条数
     * @author ccomma
     */
    int insert(AttrValue row);

    /**
     * 根据主键查询
     *
     * @param id 主键
     * @return attrValue
     * @author ccomma
     */
    AttrValue selectByPrimaryKey(String id);

    /**
     * 查询全部
     *
     * @return {@code List<AttrValue>}
     * @author ccomma
     */
    List<AttrValue> selectAll();

    /**
     * 根据主键更新
     *
     * @param row attrValue
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(AttrValue row);
}