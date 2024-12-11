package com.mockmall.item.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * Attribute
 * 
 * @author ccomma
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Attribute extends BasePO {
    private static final long serialVersionUID = 1L;

    /**
     * 类型 1：销售属性；2：非关键属性
     */
    private Integer type;

    /**
     * 名称
     */
    private String name;

    /**
     * 格式 1：选项；2：文本；3：数值；4：百分比
     */
    private Integer format;

    /**
     * 来源 1：系统生成；2：商家自定义
     */
    private Integer source;

    /**
     * 是否有效
     */
    private Integer isValid;
}