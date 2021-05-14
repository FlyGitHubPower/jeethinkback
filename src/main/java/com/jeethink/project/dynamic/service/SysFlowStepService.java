package com.jeethink.project.dynamic.service;

import com.jeethink.project.dynamic.domain.SysFlowStep;
import java.util.List;

/**
 * (SysFlowStep)表服务接口
 *
 * @author makejava
 * @since 2021-05-13 10:32:08
 */
public interface SysFlowStepService {


    Long queryById(String formid);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<SysFlowStep> queryAllByLimit(int offset, int limit);

    /**
     * 查询全部
     */
    List<SysFlowStep> queryAll(SysFlowStep sysFlowStep);


    /**
     * 新增数据
     *
     * @param sysFlowStep 实例对象
     * @return 实例对象
     */
    int insert(SysFlowStep sysFlowStep);

    /**
     * 修改数据
     *
     * @param sysFlowStep 实例对象
     * @return 实例对象
     */
    int update(SysFlowStep sysFlowStep);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    int deleteById(String[] id);

}