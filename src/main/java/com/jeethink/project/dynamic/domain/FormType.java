package com.jeethink.project.dynamic.domain;

public class FormType {
    private String typeid;
    private String formid;
    private String typename;
    private String formname;
    private String zdlist;
    private String remark;

    public String getZdlist() {
        return zdlist;
    }

    public void setZdlist(String zdlist) {
        this.zdlist = zdlist;
    }

    public String getTypeid() {
        return typeid;
    }

    public void setTypeid(String typeid) {
        this.typeid = typeid;
    }

    public String getFormid() {
        return formid;
    }

    public void setFormid(String formid) {
        this.formid = formid;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public String getFormname() {
        return formname;
    }

    public void setFormname(String formname) {
        this.formname = formname;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "FormType{" +
                "typeid='" + typeid + '\'' +
                ", formid='" + formid + '\'' +
                ", typename='" + typename + '\'' +
                ", formname='" + formname + '\'' +
                ", remark='" + remark + '\'' +
                ", zdlist='" + zdlist + '\'' +
                '}';
    }
}
