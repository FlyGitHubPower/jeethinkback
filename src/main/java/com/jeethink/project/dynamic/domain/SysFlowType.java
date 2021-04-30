package com.jeethink.project.dynamic.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.jeethink.framework.web.domain.BaseEntity;

import java.util.Date;

/**
 * 事件表 sys_flow_form
 */
public class SysFlowType extends BaseEntity {
    private String id;
    private String name;
    private String remark;
    private Integer sort;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date create_time;

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String getRemark() {
        return remark;
    }

    @Override
    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    @Override
    public String toString() {
        return "SysFlowType{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", remark='" + remark + '\'' +
                ", sort='" + sort + '\'' +
                ", create_time=" + create_time +
                '}';
    }
}
