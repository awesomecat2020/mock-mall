package com.mockmall.commonbase.result;

import java.io.Serializable;
import java.util.List;

/**
 * 分页返回
 *
 * @author ccomma
 */
public class Page<T extends Serializable> implements Serializable {

    private static final long serialVersionUID = 8431038320277553569L;

    /**
     * 分页数据
     */
    private List<T> list;

    /**
     * 总条数
     */
    private Long totalCount;

    /**
     * 总页数
     */
    private Long pageCount;

    /**
     * 当前页
     */
    private Integer pageIndex;

    /**
     * 页大小
     */
    private Integer pageSize;

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public Long getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Long totalCount) {
        this.totalCount = totalCount;
    }

    public Long getPageCount() {
        return pageCount;
    }

    public void setPageCount(Long pageCount) {
        this.pageCount = pageCount;
    }

    public Integer getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(Integer pageIndex) {
        this.pageIndex = pageIndex;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
}
