package com.mockmall.baseconfig.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;

/**
 * Town
 *
 * @author ccomma
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Town extends BasePO {

    private static final long serialVersionUID = -5671513883922484940L;

    /**
     * 市Id
     */
    private String cityId;

    /**
     * 名称
     */
    private String name;

    /**
     * 拼写
     */
    private String spell;

    /**
     * 邮编
     */
    private String zipCode;

    /**
     * 区号
     */
    private String areaCode;

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