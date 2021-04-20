package com.jeethink.project.dynamic.service;


import com.jeethink.project.dynamic.domain.SysFlowForm;

import java.util.List;

/**
 * (SysFlowForm)表服务接口
 *
 * @author makejava
 * @since 2021-04-20 10:44:11
 */
public interface SysFlowFormService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    SysFlowForm queryById(String id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<SysFlowForm> queryAllByLimit(int offset, int limit);
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
    int deleteById(String id);

}