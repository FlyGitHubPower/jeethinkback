package com.jeethink.project.dynamic.service;


import com.jeethink.project.dynamic.domain.FormType;
import com.jeethink.project.dynamic.domain.SysFlowForm;
import com.jeethink.project.dynamic.domain.SysFlowFormattr;

import java.util.List;

/**
 * (SysFlowForm)表服务接口
 *
 * @author makejava
 * @since 2021-04-20 10:44:11
 */
public interface SysFlowFormService {


    List queryById(FormType formType);
    List queryByFormId(FormType formType);
    List queryContent(SysFlowForm sysFlowForm);

    List queryHtml(SysFlowForm sysFlowForm, SysFlowFormattr sysFlowFormattr,String[] formid);

    List<SysFlowForm> queryAll(SysFlowForm sysFlowForm);
    /**
     * 新增数据
     *
     * @param sysFlowForm 实例对象
     * @return 实例对象
     */
    int insert(SysFlowForm sysFlowForm);

    /**
     * 修改数据
     *
     * @param sysFlowForm 实例对象
     * @return 实例对象
     */
    int update(SysFlowForm sysFlowForm);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    int deleteById(String[] id);

}