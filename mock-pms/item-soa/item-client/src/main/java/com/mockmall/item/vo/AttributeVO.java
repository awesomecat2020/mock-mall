package com.mockmall.item.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * Attribute VO
 *
 * @author ccomma
 */
@Data
public class AttributeVO implements Serializable {

    private static final long serialVersionUID = 8098947110903666661L;

    /**
     * 主键
     */
    private String id;

    /**
     * 类型 1：销售属性；2：非关键属性
     * @see com.mockmall.item.constants.ItemConstant
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

}