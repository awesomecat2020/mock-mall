package com.mockmall.item.mapper;

import com.mockmall.item.pojo.Attribute;

import java.util.List;

public interface AttributeMapper {
    /**
     * 新增
     * 
     * @param row attribute
     * @return 影响条数
     * @author ccomma
     */
    int insert(Attribute row);

    /**
     * 根据主键查询
     * 
     * @param id 主键
     * @return attribute
     * @author ccomma
     */
    Attribute selectByPrimaryKey(String id);

    /**
     * 查询全部
     * 
     * @return {@code List<Attribute>}
     * @author ccomma
     */
    List<Attribute> selectAll();

    /**
     * 根据主键更新
     * 
     * @param row attribute
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(Attribute row);
}