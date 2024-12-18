package com.mockmall.baseconfig.mapper;

import com.mockmall.baseconfig.pojo.Province;

import java.util.List;

public interface ProvinceMapper {

    /**
     * 新增
     *
     * @param row province
     * @return 影响条数
     * @author ccomma
     */
    int insert(Province row);

    /**
     * 根据主键查询
     *
     * @param id 主键
     * @return province
     * @author ccomma
     */
    Province selectByPrimaryKey(String id);

    /**
     * 查询全部
     *
     * @return {@code List<Province>}
     * @author ccomma
     */
    List<Province> selectAll();

    /**
     * 根据主键更新
     *
     * @param row province
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(Province row);
}