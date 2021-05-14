package com.jeethink.project.dynamic.domain;

import java.io.Serializable;

/**
 * (SysFlowStep)实体类
 *
 * @author makejava
 * @since 2021-05-13 10:32:05
 */
public class SysFlowStep implements Serializable {
    private static final long serialVersionUID = -13074417058892142L;
    /**
    * id
    */
    private String id;
    /**
    * 步骤名
    */
    private String name;
    /**
    * 备注
    */
    private String remark;
    /**
    * 步骤排序
    */
    private Long sort;
    /**
    * 表单id
    */
    private String formid;
    /**
    * 流转规则
    */
    private Long flowrule;
    
    private Long iscustom;
    /**
    * 是否全审核
    */
    private Long isallcheck;
    /**
    * 强制执行
    */
    private String execution;
    /**
    * 是否强制执行
    */
    private Long compulsoryover;
    /**
    * 是否可编辑附件
    */
    private Long iseditattr;


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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Long getSort() {
        return sort;
    }

    public void setSort(Long sort) {
        this.sort = sort;
    }

    public String getFormid() {
        return formid;
    }

    public void setFormid(String formid) {
        this.formid = formid;
    }

    public Long getFlowrule() {
        return flowrule;
    }

    public void setFlowrule(Long flowrule) {
        this.flowrule = flowrule;
    }

    public Long getIscustom() {
        return iscustom;
    }

    public void setIscustom(Long iscustom) {
        this.iscustom = iscustom;
    }

    public Long getIsallcheck() {
        return isallcheck;
    }

    public void setIsallcheck(Long isallcheck) {
        this.isallcheck = isallcheck;
    }

    public String getExecution() {
        return execution;
    }

    public void setExecution(String execution) {
        this.execution = execution;
    }

    public Long getCompulsoryover() {
        return compulsoryover;
    }

    public void setCompulsoryover(Long compulsoryover) {
        this.compulsoryover = compulsoryover;
    }

    public Long getIseditattr() {
        return iseditattr;
    }

    public void setIseditattr(Long iseditattr) {
        this.iseditattr = iseditattr;
    }

}