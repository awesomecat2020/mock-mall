package com.mockmall.baseconfig.mapper;

import com.mockmall.baseconfig.pojo.City;

import java.util.List;

public interface CityMapper {

    /**
     * 新增
     *
     * @param row city
     * @return 影响条数
     * @author ccomma
     */
    int insert(City row);

    /**
     * 根据主键查询
     *
     * @param id 主键
     * @return city
     * @author ccomma
     */
    City selectByPrimaryKey(String id);

    /**
     * 查询全部
     *
     * @return {@code List<City>}
     * @author ccomma
     */
    List<City> selectAll();

    /**
     * 根据主键更新
     *
     * @param row city
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(City row);
}