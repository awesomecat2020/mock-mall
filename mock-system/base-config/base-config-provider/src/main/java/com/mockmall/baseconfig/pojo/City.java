package com.mockmall.baseconfig.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;

/**
 * City
 *
 * @author ccomma
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class City extends BasePO {

    private static final long serialVersionUID = -4298151271927251985L;

    /**
     * 省Id
     */
    private String provinceId;

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