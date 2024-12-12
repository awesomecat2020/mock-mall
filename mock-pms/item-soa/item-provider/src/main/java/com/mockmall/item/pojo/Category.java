package com.mockmall.item.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * Category
 *
 * @author ccomma
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Category extends BasePO {

    private static final long serialVersionUID = 6861988599953691809L;

    /**
     * 分类名称
     */
    private String name;

    /**
     * 分类类型
     */
    private Integer type;

    /**
     * 父id
     */
    private String parentId;

    /**
     * 图标
     */
    private String logo;

    /**
     * 口号
     */
    private String slogan;

    /**
     * 分类图
     */
    private String image;

    /**
     * 背景颜色
     */
    private String bgColor;

}