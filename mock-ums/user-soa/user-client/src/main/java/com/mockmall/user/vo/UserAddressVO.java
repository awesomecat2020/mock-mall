package com.mockmall.user.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * UserAddressVO
 *
 * @author ccomma
 */
@Data
public class UserAddressVO implements Serializable {

    private static final long serialVersionUID = 7245476478152206657L;

    /**
     * 主键
     */
    private String id;

    /**
     * 关联用户id
     */
    private String userId;

    /**
     * 收件人姓名
     */
    private String receiver;

    /**
     * 收件人手机号
     */
    private String mobile;

    /**
     * 国家 id
     */
    private String countryId;

    /**
     * 省份 id
     */
    private String provinceId;

    /**
     * 城市 id
     */
    private String cityId;

    /**
     * 区县 id
     */
    private String townId;

    /**
     * 详细地址
     */
    private String detail;

    /**
     * 完整地址
     */
    private String address;

    /**
     * 扩展字段
     */
    private String ext;

    /**
     * 是否默认地址
     */
    private Integer isDefault;
}
