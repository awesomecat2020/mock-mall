package com.mockmall.item.mapper;

import com.mockmall.item.pojo.Category;
import java.util.List;

public interface CategoryMapper {

    /**
     * 新增
     * 
     * @param row category
     * @return 影响条数
     * @author ccomma
     */
    int insert(Category row);

    /**
     * 根据主键查询
     * 
     * @param id 主键
     * @return category
     * @author ccomma
     */
    Category selectByPrimaryKey(String id);

    /**
     * 查询全部
     * 
     * @return {@code List<Category>}
     * @author ccomma
     */
    List<Category> selectAll();

    /**
     * 根据主键更新
     * 
     * @param row category
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(Category row);

    /**
     * 获取一级类目列表
     *
     * @return 一级类目列表
     * @author ccomma
     */
    List<Category> selectByTop();
}