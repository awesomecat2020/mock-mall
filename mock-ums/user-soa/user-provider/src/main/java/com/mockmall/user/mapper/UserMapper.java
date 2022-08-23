package com.mockmall.user.mapper;

import com.mockmall.user.pojo.User;
import java.util.List;

public interface UserMapper {

    /**
     * 新增
     * 
     * @param row user
     * @return 影响条数
     * @author ccomma
     */
    int insert(User row);

    /**
     * 根据主键查询
     * 
     * @param id 主键
     * @return user
     * @author ccomma
     */
    User selectByPrimaryKey(String id);

    /**
     * 查询全部
     * 
     * @return {@code List<User>}
     * @author ccomma
     */
    List<User> selectAll();

    /**
     * 根据主键更新
     * 
     * @param row user
     * @return 影响条数
     * @author ccomma
     */
    int updateByPrimaryKey(User row);

    /**
     * 是否存在手机号为 mobile 的用户
     *
     * @param mobile 手机号
     * @return 1：存在；0：不存在
     * @author ccomma
     */
    Integer selectExistByMobile(String mobile);
}