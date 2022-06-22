package com.mockmall.item.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * Category
 * 
 * @author ccomma
 */
@Setter
@Getter
@ToString
public class Category extends BasePO {
    private static final long serialVersionUID = 1L;

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