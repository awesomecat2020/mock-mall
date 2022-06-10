package com.mock.mall.commonbase.mapper;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;

/**
 * 通用 mapper
 *
 * @author ccomma
 * @since 2022/6/10 8:30
 */
public interface BaseMapper<T> extends Mapper<T>, MySqlMapper<T> {
}
