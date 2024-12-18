package com.mockmall.baseconfig.mapper;

import com.mockmall.baseconfig.pojo.Country;

import java.util.List;

public interface CountryMapper {

    /**
     * 新增
     * 
     * @param row country
     * @return 影响条数
     * @author ccomma
     */
    int insert(Country row);

    /**
     * 根据主键查询
     * 
     * @param id 主键
     * @return country
     * @author ccomma
     */
    Country selectByPrimaryKey(String id);

    /**
     * 查询全部
     * 
     * @return {@code List<Country>}
     * @author ccomma
     */
    List<Country> selectAll();

    /**
     * 根据主键更新
     * 
     * @param row country
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(Country row);
}