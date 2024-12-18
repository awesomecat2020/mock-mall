package com.mockmall.baseconfig.pojo;

import com.mockmall.commonbase.base.BasePO;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;

/**
 * Country
 * 
 * @author ccomma
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Country extends BasePO {

    private static final long serialVersionUID = -1908792222749078740L;

    /**
     * 名称
     */
    private String name;

    /**
     * 拼写
     */
    private String spell;

    /**
     * 英文名
     */
    private String eName;

    /**
     * 编码
     */
    private String code;

    /**
     * 经度
     */
    private BigDecimal longitude;

    /**
     * 纬度
     */
    private BigDecimal latitude;

    /**
     * 国家区号
     */
    private String countryCode;

    /**
     * 手机格式验证
     */
    private String checkPatten;

    /**
     * 是否支持发短信
     */
    private Short isSms;

    /**
     * 国家所处时区：可能有多个，以逗号分割
     */
    private String timeZone;

    /**
     * 默认语言
     */
    private String defaultLang;

    /**
     * 区域中心服务器Id
     */
    private String zmCenterId;

    /**
     * 默认集群服务地址
     */
    private String clusterUrl;

    /**
     * 默认消息服务地址
     */
    private String messageUrl;

    /**
     * 默认订单服务地址
     */
    private String orderUrl;

    /**
     * 默认的币种
     */
    private String currencyId;

    /**
     * 排序
     */
    private Byte sortCode;
}