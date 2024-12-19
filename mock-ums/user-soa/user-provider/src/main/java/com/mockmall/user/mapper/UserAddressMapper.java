package com.mockmall.user.mapper;

import com.mockmall.user.pojo.UserAddress;

import java.util.List;

public interface UserAddressMapper {

    /**
     * 新增
     *
     * @param row userAddress
     * @return 影响条数
     * @author ccomma
     */
    int insert(UserAddress row);

    /**
     * 根据主键查询
     *
     * @param id 主键
     * @return userAddress
     * @author ccomma
     */
    UserAddress selectByPrimaryKey(String id);

    /**
     * 查询全部
     *
     * @return {@code List<UserAddress>}
     * @author ccomma
     */
    List<UserAddress> selectAll();

    /**
     * 根据主键更新
     *
     * @param row userAddress
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(UserAddress row);

    /**
     * 根据用户 id 查询默认地址
     *
     * @param userId 用户 id
     * @return 默认地址
     * @author ccomma
     */
    UserAddress selectDefaultByUserId(String userId);
}