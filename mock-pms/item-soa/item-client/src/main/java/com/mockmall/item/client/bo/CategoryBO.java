package com.mockmall.item.client.bo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * 类目 BO
 *
 * @author ccomma
 * 2022/6/21 14:39
 */
@Setter
@Getter
@ToString
public class CategoryBO implements Serializable {
    private static final long serialVersionUID = 8340273392065422757L;

    /**
     * 主键
     */
    private String id;

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
