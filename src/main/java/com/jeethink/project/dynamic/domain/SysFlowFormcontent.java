package com.jeethink.project.dynamic.domain;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @TableName sys_flow_formcontent
 */
public class SysFlowFormcontent implements Serializable {
    /**
     * 内容id
     */
    private String id;

    /**
     * 所属表单
     */
    private String formid;

    /**
     * 创建者
     */
    private String createBy;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /**
     * 更新者
     */
    private String updateBy;

    /**
     * 更新时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;

    /**
     * 备注
     */
    private String remark;

    /**
     * 字段内容
     */
    private String attra;

    /**
     *
     */
    private String attrb;

    /**
     *
     */
    private String attrc;

    /**
     *
     */
    private String attrd;

    /**
     *
     */
    private String attre;

    /**
     *
     */
    private String attrf;

    /**
     *
     */
    private String attrg;

    /**
     *
     */
    private String attrh;

    /**
     *
     */
    private String attri;

    /**
     *
     */
    private String attrj;

    /**
     *
     */
    private String attrk;

    /**
     *
     */
    private String attrl;

    /**
     *
     */
    private String attrm;

    /**
     *
     */
    private String attrn;

    /**
     *
     */
    private String attro;

    /**
     *
     */
    private String attrp;

    /**
     *
     */
    private String attrq;

    /**
     *
     */
    private String attrr;

    /**
     *
     */
    private String attrs;

    /**
     *
     */
    private String attrt;

    /**
     *
     */
    private String attru;

    /**
     *
     */
    private String attrv;

    /**
     *
     */
    private String attrw;

    /**
     *
     */
    private String attrx;

    /**
     *
     */
    private String attry;

    /**
     * 表单元素
     */
    private String attrz;

    /**
     * 表单标题
     */
    private String name;

    /**
     * 表单等级
     */
    private String formlevel;

    /**
     * 是否已删除
     */
    private Integer isdelete;

    /**
     * 有效时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date timeout;

    /**
     * 用户id
     */
    private String userid;

    /**
     * 项目id
     */
    private String projectid;

    /**
     *
     */
    private String custommember;
    private String formlist;

    public String getFormlist() {
        return formlist;
    }

    public void setFormlist(String formlist) {
        this.formlist = formlist;
    }

    private static final long serialVersionUID = 1L;

    /**
     * 内容id
     */
    public String getId() {
        return id;
    }

    /**
     * 内容id
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * 所属表单
     */
    public String getFormid() {
        return formid;
    }

    /**
     * 所属表单
     */
    public void setFormid(String formid) {
        this.formid = formid;
    }

    /**
     * 创建者
     */
    public String getCreateBy() {
        return createBy;
    }

    /**
     * 创建者
     */
    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    /**
     * 创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 更新者
     */
    public String getUpdateBy() {
        return updateBy;
    }

    /**
     * 更新者
     */
    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    /**
     * 更新时间
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * 更新时间
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * 备注
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 备注
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }

    /**
     * 字段内容
     */
    public String getAttra() {
        return attra;
    }

    /**
     * 字段内容
     */
    public void setAttra(String attra) {
        this.attra = attra;
    }

    /**
     *
     */
    public String getAttrb() {
        return attrb;
    }

    /**
     *
     */
    public void setAttrb(String attrb) {
        this.attrb = attrb;
    }

    /**
     *
     */
    public String getAttrc() {
        return attrc;
    }

    /**
     *
     */
    public void setAttrc(String attrc) {
        this.attrc = attrc;
    }

    /**
     *
     */
    public String getAttrd() {
        return attrd;
    }

    /**
     *
     */
    public void setAttrd(String attrd) {
        this.attrd = attrd;
    }

    /**
     *
     */
    public String getAttre() {
        return attre;
    }

    /**
     *
     */
    public void setAttre(String attre) {
        this.attre = attre;
    }

    /**
     *
     */
    public String getAttrf() {
        return attrf;
    }

    /**
     *
     */
    public void setAttrf(String attrf) {
        this.attrf = attrf;
    }

    /**
     *
     */
    public String getAttrg() {
        return attrg;
    }

    /**
     *
     */
    public void setAttrg(String attrg) {
        this.attrg = attrg;
    }

    /**
     *
     */
    public String getAttrh() {
        return attrh;
    }

    /**
     *
     */
    public void setAttrh(String attrh) {
        this.attrh = attrh;
    }

    /**
     *
     */
    public String getAttri() {
        return attri;
    }

    /**
     *
     */
    public void setAttri(String attri) {
        this.attri = attri;
    }

    /**
     *
     */
    public String getAttrj() {
        return attrj;
    }

    /**
     *
     */
    public void setAttrj(String attrj) {
        this.attrj = attrj;
    }

    /**
     *
     */
    public String getAttrk() {
        return attrk;
    }

    /**
     *
     */
    public void setAttrk(String attrk) {
        this.attrk = attrk;
    }

    /**
     *
     */
    public String getAttrl() {
        return attrl;
    }

    /**
     *
     */
    public void setAttrl(String attrl) {
        this.attrl = attrl;
    }

    /**
     *
     */
    public String getAttrm() {
        return attrm;
    }

    /**
     *
     */
    public void setAttrm(String attrm) {
        this.attrm = attrm;
    }

    /**
     *
     */
    public String getAttrn() {
        return attrn;
    }

    /**
     *
     */
    public void setAttrn(String attrn) {
        this.attrn = attrn;
    }

    /**
     *
     */
    public String getAttro() {
        return attro;
    }

    /**
     *
     */
    public void setAttro(String attro) {
        this.attro = attro;
    }

    /**
     *
     */
    public String getAttrp() {
        return attrp;
    }

    /**
     *
     */
    public void setAttrp(String attrp) {
        this.attrp = attrp;
    }

    /**
     *
     */
    public String getAttrq() {
        return attrq;
    }

    /**
     *
     */
    public void setAttrq(String attrq) {
        this.attrq = attrq;
    }

    /**
     *
     */
    public String getAttrr() {
        return attrr;
    }

    /**
     *
     */
    public void setAttrr(String attrr) {
        this.attrr = attrr;
    }

    /**
     *
     */
    public String getAttrs() {
        return attrs;
    }

    /**
     *
     */
    public void setAttrs(String attrs) {
        this.attrs = attrs;
    }

    /**
     *
     */
    public String getAttrt() {
        return attrt;
    }

    /**
     *
     */
    public void setAttrt(String attrt) {
        this.attrt = attrt;
    }

    /**
     *
     */
    public String getAttru() {
        return attru;
    }

    /**
     *
     */
    public void setAttru(String attru) {
        this.attru = attru;
    }

    /**
     *
     */
    public String getAttrv() {
        return attrv;
    }

    /**
     *
     */
    public void setAttrv(String attrv) {
        this.attrv = attrv;
    }

    /**
     *
     */
    public String getAttrw() {
        return attrw;
    }

    /**
     *
     */
    public void setAttrw(String attrw) {
        this.attrw = attrw;
    }

    /**
     *
     */
    public String getAttrx() {
        return attrx;
    }

    /**
     *
     */
    public void setAttrx(String attrx) {
        this.attrx = attrx;
    }

    /**
     *
     */
    public String getAttry() {
        return attry;
    }

    /**
     *
     */
    public void setAttry(String attry) {
        this.attry = attry;
    }

    /**
     * 表单元素
     */
    public String getAttrz() {
        return attrz;
    }

    /**
     * 表单元素
     */
    public void setAttrz(String attrz) {
        this.attrz = attrz;
    }

    /**
     * 表单标题
     */
    public String getName() {
        return name;
    }

    /**
     * 表单标题
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 表单等级
     */
    public String getFormlevel() {
        return formlevel;
    }

    /**
     * 表单等级
     */
    public void setFormlevel(String formlevel) {
        this.formlevel = formlevel;
    }

    /**
     * 是否已删除
     */
    public Integer getIsdelete() {
        return isdelete;
    }

    /**
     * 是否已删除
     */
    public void setIsdelete(Integer isdelete) {
        this.isdelete = isdelete;
    }

    /**
     * 有效时间
     */
    public Date getTimeout() {
        return timeout;
    }

    /**
     * 有效时间
     */
    public void setTimeout(Date timeout) {
        this.timeout = timeout;
    }

    /**
     * 用户id
     */
    public String getUserid() {
        return userid;
    }

    /**
     * 用户id
     */
    public void setUserid(String userid) {
        this.userid = userid;
    }

    /**
     * 项目id
     */
    public String getProjectid() {
        return projectid;
    }

    /**
     * 项目id
     */
    public void setProjectid(String projectid) {
        this.projectid = projectid;
    }

    /**
     *
     */
    public String getCustommember() {
        return custommember;
    }

    /**
     *
     */
    public void setCustommember(String custommember) {
        this.custommember = custommember;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        SysFlowFormcontent other = (SysFlowFormcontent) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
                && (this.getFormid() == null ? other.getFormid() == null : this.getFormid().equals(other.getFormid()))
                && (this.getCreateBy() == null ? other.getCreateBy() == null : this.getCreateBy().equals(other.getCreateBy()))
                && (this.getCreateTime() == null ? other.getCreateTime() == null : this.getCreateTime().equals(other.getCreateTime()))
                && (this.getUpdateBy() == null ? other.getUpdateBy() == null : this.getUpdateBy().equals(other.getUpdateBy()))
                && (this.getUpdateTime() == null ? other.getUpdateTime() == null : this.getUpdateTime().equals(other.getUpdateTime()))
                && (this.getRemark() == null ? other.getRemark() == null : this.getRemark().equals(other.getRemark()))
                && (this.getAttra() == null ? other.getAttra() == null : this.getAttra().equals(other.getAttra()))
                && (this.getAttrb() == null ? other.getAttrb() == null : this.getAttrb().equals(other.getAttrb()))
                && (this.getAttrc() == null ? other.getAttrc() == null : this.getAttrc().equals(other.getAttrc()))
                && (this.getAttrd() == null ? other.getAttrd() == null : this.getAttrd().equals(other.getAttrd()))
                && (this.getAttre() == null ? other.getAttre() == null : this.getAttre().equals(other.getAttre()))
                && (this.getAttrf() == null ? other.getAttrf() == null : this.getAttrf().equals(other.getAttrf()))
                && (this.getAttrg() == null ? other.getAttrg() == null : this.getAttrg().equals(other.getAttrg()))
                && (this.getAttrh() == null ? other.getAttrh() == null : this.getAttrh().equals(other.getAttrh()))
                && (this.getAttri() == null ? other.getAttri() == null : this.getAttri().equals(other.getAttri()))
                && (this.getAttrj() == null ? other.getAttrj() == null : this.getAttrj().equals(other.getAttrj()))
                && (this.getAttrk() == null ? other.getAttrk() == null : this.getAttrk().equals(other.getAttrk()))
                && (this.getAttrl() == null ? other.getAttrl() == null : this.getAttrl().equals(other.getAttrl()))
                && (this.getAttrm() == null ? other.getAttrm() == null : this.getAttrm().equals(other.getAttrm()))
                && (this.getAttrn() == null ? other.getAttrn() == null : this.getAttrn().equals(other.getAttrn()))
                && (this.getAttro() == null ? other.getAttro() == null : this.getAttro().equals(other.getAttro()))
                && (this.getAttrp() == null ? other.getAttrp() == null : this.getAttrp().equals(other.getAttrp()))
                && (this.getAttrq() == null ? other.getAttrq() == null : this.getAttrq().equals(other.getAttrq()))
                && (this.getAttrr() == null ? other.getAttrr() == null : this.getAttrr().equals(other.getAttrr()))
                && (this.getAttrs() == null ? other.getAttrs() == null : this.getAttrs().equals(other.getAttrs()))
                && (this.getAttrt() == null ? other.getAttrt() == null : this.getAttrt().equals(other.getAttrt()))
                && (this.getAttru() == null ? other.getAttru() == null : this.getAttru().equals(other.getAttru()))
                && (this.getAttrv() == null ? other.getAttrv() == null : this.getAttrv().equals(other.getAttrv()))
                && (this.getAttrw() == null ? other.getAttrw() == null : this.getAttrw().equals(other.getAttrw()))
                && (this.getAttrx() == null ? other.getAttrx() == null : this.getAttrx().equals(other.getAttrx()))
                && (this.getAttry() == null ? other.getAttry() == null : this.getAttry().equals(other.getAttry()))
                && (this.getAttrz() == null ? other.getAttrz() == null : this.getAttrz().equals(other.getAttrz()))
                && (this.getName() == null ? other.getName() == null : this.getName().equals(other.getName()))
                && (this.getFormlevel() == null ? other.getFormlevel() == null : this.getFormlevel().equals(other.getFormlevel()))
                && (this.getIsdelete() == null ? other.getIsdelete() == null : this.getIsdelete().equals(other.getIsdelete()))
                && (this.getTimeout() == null ? other.getTimeout() == null : this.getTimeout().equals(other.getTimeout()))
                && (this.getUserid() == null ? other.getUserid() == null : this.getUserid().equals(other.getUserid()))
                && (this.getProjectid() == null ? other.getProjectid() == null : this.getProjectid().equals(other.getProjectid()))
                && (this.getCustommember() == null ? other.getCustommember() == null : this.getCustommember().equals(other.getCustommember()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getFormid() == null) ? 0 : getFormid().hashCode());
        result = prime * result + ((getCreateBy() == null) ? 0 : getCreateBy().hashCode());
        result = prime * result + ((getCreateTime() == null) ? 0 : getCreateTime().hashCode());
        result = prime * result + ((getUpdateBy() == null) ? 0 : getUpdateBy().hashCode());
        result = prime * result + ((getUpdateTime() == null) ? 0 : getUpdateTime().hashCode());
        result = prime * result + ((getRemark() == null) ? 0 : getRemark().hashCode());
        result = prime * result + ((getAttra() == null) ? 0 : getAttra().hashCode());
        result = prime * result + ((getAttrb() == null) ? 0 : getAttrb().hashCode());
        result = prime * result + ((getAttrc() == null) ? 0 : getAttrc().hashCode());
        result = prime * result + ((getAttrd() == null) ? 0 : getAttrd().hashCode());
        result = prime * result + ((getAttre() == null) ? 0 : getAttre().hashCode());
        result = prime * result + ((getAttrf() == null) ? 0 : getAttrf().hashCode());
        result = prime * result + ((getAttrg() == null) ? 0 : getAttrg().hashCode());
        result = prime * result + ((getAttrh() == null) ? 0 : getAttrh().hashCode());
        result = prime * result + ((getAttri() == null) ? 0 : getAttri().hashCode());
        result = prime * result + ((getAttrj() == null) ? 0 : getAttrj().hashCode());
        result = prime * result + ((getAttrk() == null) ? 0 : getAttrk().hashCode());
        result = prime * result + ((getAttrl() == null) ? 0 : getAttrl().hashCode());
        result = prime * result + ((getAttrm() == null) ? 0 : getAttrm().hashCode());
        result = prime * result + ((getAttrn() == null) ? 0 : getAttrn().hashCode());
        result = prime * result + ((getAttro() == null) ? 0 : getAttro().hashCode());
        result = prime * result + ((getAttrp() == null) ? 0 : getAttrp().hashCode());
        result = prime * result + ((getAttrq() == null) ? 0 : getAttrq().hashCode());
        result = prime * result + ((getAttrr() == null) ? 0 : getAttrr().hashCode());
        result = prime * result + ((getAttrs() == null) ? 0 : getAttrs().hashCode());
        result = prime * result + ((getAttrt() == null) ? 0 : getAttrt().hashCode());
        result = prime * result + ((getAttru() == null) ? 0 : getAttru().hashCode());
        result = prime * result + ((getAttrv() == null) ? 0 : getAttrv().hashCode());
        result = prime * result + ((getAttrw() == null) ? 0 : getAttrw().hashCode());
        result = prime * result + ((getAttrx() == null) ? 0 : getAttrx().hashCode());
        result = prime * result + ((getAttry() == null) ? 0 : getAttry().hashCode());
        result = prime * result + ((getAttrz() == null) ? 0 : getAttrz().hashCode());
        result = prime * result + ((getName() == null) ? 0 : getName().hashCode());
        result = prime * result + ((getFormlevel() == null) ? 0 : getFormlevel().hashCode());
        result = prime * result + ((getIsdelete() == null) ? 0 : getIsdelete().hashCode());
        result = prime * result + ((getTimeout() == null) ? 0 : getTimeout().hashCode());
        result = prime * result + ((getUserid() == null) ? 0 : getUserid().hashCode());
        result = prime * result + ((getProjectid() == null) ? 0 : getProjectid().hashCode());
        result = prime * result + ((getCustommember() == null) ? 0 : getCustommember().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", formid=").append(formid);
        sb.append(", createBy=").append(createBy);
        sb.append(", createTime=").append(createTime);
        sb.append(", updateBy=").append(updateBy);
        sb.append(", updateTime=").append(updateTime);
        sb.append(", remark=").append(remark);
        sb.append(", attra=").append(attra);
        sb.append(", attrb=").append(attrb);
        sb.append(", attrc=").append(attrc);
        sb.append(", attrd=").append(attrd);
        sb.append(", attre=").append(attre);
        sb.append(", attrf=").append(attrf);
        sb.append(", attrg=").append(attrg);
        sb.append(", attrh=").append(attrh);
        sb.append(", attri=").append(attri);
        sb.append(", attrj=").append(attrj);
        sb.append(", attrk=").append(attrk);
        sb.append(", attrl=").append(attrl);
        sb.append(", attrm=").append(attrm);
        sb.append(", attrn=").append(attrn);
        sb.append(", attro=").append(attro);
        sb.append(", attrp=").append(attrp);
        sb.append(", attrq=").append(attrq);
        sb.append(", attrr=").append(attrr);
        sb.append(", attrs=").append(attrs);
        sb.append(", attrt=").append(attrt);
        sb.append(", attru=").append(attru);
        sb.append(", attrv=").append(attrv);
        sb.append(", attrw=").append(attrw);
        sb.append(", attrx=").append(attrx);
        sb.append(", attry=").append(attry);
        sb.append(", attrz=").append(attrz);
        sb.append(", name=").append(name);
        sb.append(", formlevel=").append(formlevel);
        sb.append(", isdelete=").append(isdelete);
        sb.append(", timeout=").append(timeout);
        sb.append(", userid=").append(userid);
        sb.append(", projectid=").append(projectid);
        sb.append(", custommember=").append(custommember);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
