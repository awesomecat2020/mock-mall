package com.mockmall.commonbase.base;

import com.mockmall.commonbase.constants.PageConstant;

import java.io.Serializable;

/**
 * 基础 Query
 *
 * @author ccomma
 */
public class BaseQuery implements Serializable {

    private static final long serialVersionUID = 7805786497770360102L;

    protected int pageSize;
    /**
     * 总数
     */
    private int totalCount;
    /**
     * 当前页
     */
    private int pageIndex;

    /**
     * 总页数
     */
    private int totalPage;

    /**
     * 排序：
     */
    private String orderBy;

    /**
     * 默认d true，false 即 asc
     */
    private Boolean desc;

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageSize() {
        if (pageSize < 1) {
            pageSize = PageConstant.DEFAULT_PAGE_SIZE;
        }

        return pageSize;
    }

    /**
     * 总条目数
     */
    public void setTotalCount(int totalCount) {
        this.totalPage = (totalCount + getPageSize() - 1) / getPageSize();
        this.totalCount = totalCount;
    }

    public int getTotalCount() {
        return totalCount;
    }

    /**
     * 当前页
     */
    public int getPageIndex() {
        if (pageIndex < 1) {
            pageIndex = 1;
        }

        return pageIndex;
    }

    /**
     * 获取传进来的原始的pageIndex
     */
    public int getOriginalPageIndex() {
        return pageIndex;
    }

    public boolean hasNextPage() {
        return pageIndex <= getTotalPage();
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    /**
     * mysqlDB开始位置
     */
    public int getStartPos() {
        int cPage = getPageIndex();

        if (cPage <= 1) {
            return 0;
        }

        cPage--;

        int pgSize = getPageSize();

        return pgSize * cPage;
    }

    /**
     * 结束位置
     */
    public int getEndPos() {
        // 未设置总记录数或设置了总记录数 页码*每页数量<总记录数
        if (getTotalCount() == 0 || getPageIndex() * getPageSize() < getTotalCount()) {
            return getPageIndex() * getPageSize();
        } else {
            return getTotalCount();
        }
    }

    /**
     * 总页数
     */
    public int getTotalPage() {
        return totalPage;
    }

    public String getOrderBy() {
        return orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }

    public Boolean getDesc() {
        return desc;
    }

    public void setDesc(Boolean desc) {
        this.desc = desc;
    }

}
