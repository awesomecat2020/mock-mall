package com.mockmall.item.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * AttrValue
 * 
 * @author ccomma
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class AttrValue extends BasePO {

    private static final long serialVersionUID = -4029824737407090562L;

    /**
     * 属性值
     */
    private String value;
}