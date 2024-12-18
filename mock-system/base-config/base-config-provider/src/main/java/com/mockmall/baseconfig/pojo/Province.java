package com.mockmall.baseconfig.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;

/**
 * Province
 *
 * @author ccomma
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Province extends BasePO {

    private static final long serialVersionUID = -5980678287408918342L;

    /**
     * 国家Id
     */
    private String countryId;

    /**
     * 名称
     */
    private String name;

    /**
     * 拼写
     */
    private String spell;

    /**
     * 编码
     */
    private String code;

    /**
     * 标志
     */
    private String remark;

    /**
     * 排序码
     */
    private Integer sortCode;

    /**
     * 经度
     */
    private BigDecimal longitude;

    /**
     * 纬度
     */
    private BigDecimal latitude;
}