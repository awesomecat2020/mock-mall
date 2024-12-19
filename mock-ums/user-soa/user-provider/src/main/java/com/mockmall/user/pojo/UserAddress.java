package com.mockmall.user.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * UserAddress
 *
 * @author ccomma
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class UserAddress extends BasePO {

    private static final long serialVersionUID = -1975328679776934063L;

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