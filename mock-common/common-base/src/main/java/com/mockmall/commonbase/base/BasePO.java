package com.mockmall.commonbase.base;

import java.io.Serializable;
import java.util.Date;

/**
 * 基础 PO
 *
 * @author ccomma
 */
public class BasePO implements Serializable {
    private static final long serialVersionUID = -3932123537119852844L;

    /**
     * 是
     */
    public static final int TRUE = 1;

    /**
     * 否
     */
    public static final int FALSE = 0;

    /**
     * 主键
     */
    private String id;

    /**
     * 店铺实体ID
     */
    private String entityId;

    /**
     * 版本号
     */
    private Integer version;

    /**
     * 是否逻辑删除
     * <p> 0：逻辑删除；1：有效数据
     */
    private Integer isValid;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEntityId() {
        return entityId;
    }

    public void setEntityId(String entityId) {
        this.entityId = entityId;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    public Integer getIsValid() {
        return isValid;
    }

    public void setIsValid(Integer isValid) {
        this.isValid = isValid;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
