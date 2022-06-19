package com.mockmall.item.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Setter
@Getter
@ToString
public class Carousel extends BasePO {
    private static final long serialVersionUID = -8026297840897279179L;

    private String imageUrl;

    private String backgroundColor;

    private String moduleId;

    private Integer type;

    private Integer sort;

    private Boolean isShow;

}