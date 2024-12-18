package com.mockmall.baseconfig.mapper;

import com.mockmall.baseconfig.pojo.Town;

import java.util.List;

public interface TownMapper {

    /**
     * 新增
     *
     * @param row town
     * @return 影响条数
     * @author ccomma
     */
    int insert(Town row);

    /**
     * 根据主键查询
     *
     * @param id 主键
     * @return town
     * @author ccomma
     */
    Town selectByPrimaryKey(String id);

    /**
     * 查询全部
     *
     * @return {@code List<Town>}
     * @author ccomma
     */
    List<Town> selectAll();

    /**
     * 根据主键更新
     *
     * @param row town
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(Town row);
}