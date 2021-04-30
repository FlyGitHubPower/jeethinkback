package com.jeethink.project.dynamic.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SysFlowFormattr implements Serializable {
    private static final long serialVersionUID = -44396550741480461L;
    /**
     * 字段id
     */
    private String id;
    /**
     * 所属事件
     */
    private String typeid;
    /**
     * 字段名称
     */
    private String name;
    /**
     * 字段类型
     */
    private String types;
    /**
     * 校验规则
     */
    private String checkrule;
    /**
     * 中文名
     */
    private String alias;
    /**
     * 字段长度
     */
    private String length;
    /**
     * 备注
     */
    private String remark;
    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date create_time;

    private String checkjs;

    private String optionlist;
    private String typ;


}
