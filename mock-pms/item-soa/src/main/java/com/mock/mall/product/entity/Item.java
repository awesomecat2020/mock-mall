package com.mock.mall.product.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * 表名：item
*/
@Table(name = "item")
public class Item {
    /**
     * 商品主键id
     */
    @Id
    private String id;

    /**
     * 商品名称
     */
    @Column(name = "item_name")
    private String itemName;

    /**
     * 分类id
     */
    @Column(name = "cat_id")
    private String catId;

    /**
     * 一级分类id
     */
    @Column(name = "root_cat_id")
    private String rootCatId;

    /**
     * 累计销售
     */
    @Column(name = "sell_counts")
    private Integer sellCounts;

    /**
     * 上下架状态,1:上架 2:下架
     */
    @Column(name = "on_off_status")
    private Integer onOffStatus;

    /**
     * 版本号
     */
    private Integer version;

    /**
     * 是否有效
     */
    @Column(name = "is_valid")
    private Boolean isValid;

    /**
     * 创建时间
     */
    @Column(name = "create_time")
    private Date createTime;

    /**
     * 更新时间
     */
    @Column(name = "update_time")
    private Date updateTime;

    /**
     * 商品内容
     */
    private String content;

    /**
     * 获取商品主键id
     *
     * @return id - 商品主键id
     */
    public String getId() {
        return id;
    }

    /**
     * 设置商品主键id
     *
     * @param id 商品主键id
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * 获取商品名称
     *
     * @return itemName - 商品名称
     */
    public String getItemName() {
        return itemName;
    }

    /**
     * 设置商品名称
     *
     * @param itemName 商品名称
     */
    public void setItemName(String itemName) {
        this.itemName = itemName == null ? null : itemName.trim();
    }

    /**
     * 获取分类id
     *
     * @return catId - 分类id
     */
    public String getCatId() {
        return catId;
    }

    /**
     * 设置分类id
     *
     * @param catId 分类id
     */
    public void setCatId(String catId) {
        this.catId = catId == null ? null : catId.trim();
    }

    /**
     * 获取一级分类id
     *
     * @return rootCatId - 一级分类id
     */
    public String getRootCatId() {
        return rootCatId;
    }

    /**
     * 设置一级分类id
     *
     * @param rootCatId 一级分类id
     */
    public void setRootCatId(String rootCatId) {
        this.rootCatId = rootCatId == null ? null : rootCatId.trim();
    }

    /**
     * 获取累计销售
     *
     * @return sellCounts - 累计销售
     */
    public Integer getSellCounts() {
        return sellCounts;
    }

    /**
     * 设置累计销售
     *
     * @param sellCounts 累计销售
     */
    public void setSellCounts(Integer sellCounts) {
        this.sellCounts = sellCounts;
    }

    /**
     * 获取上下架状态,1:上架 2:下架
     *
     * @return onOffStatus - 上下架状态,1:上架 2:下架
     */
    public Integer getOnOffStatus() {
        return onOffStatus;
    }

    /**
     * 设置上下架状态,1:上架 2:下架
     *
     * @param onOffStatus 上下架状态,1:上架 2:下架
     */
    public void setOnOffStatus(Integer onOffStatus) {
        this.onOffStatus = onOffStatus;
    }

    /**
     * 获取版本号
     *
     * @return version - 版本号
     */
    public Integer getVersion() {
        return version;
    }

    /**
     * 设置版本号
     *
     * @param version 版本号
     */
    public void setVersion(Integer version) {
        this.version = version;
    }

    /**
     * 获取是否有效
     *
     * @return isValid - 是否有效
     */
    public Boolean getIsValid() {
        return isValid;
    }

    /**
     * 设置是否有效
     *
     * @param isValid 是否有效
     */
    public void setIsValid(Boolean isValid) {
        this.isValid = isValid;
    }

    /**
     * 获取创建时间
     *
     * @return createTime - 创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置创建时间
     *
     * @param createTime 创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取更新时间
     *
     * @return updateTime - 更新时间
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * 设置更新时间
     *
     * @param updateTime 更新时间
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * 获取商品内容
     *
     * @return content - 商品内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置商品内容
     *
     * @param content 商品内容
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}