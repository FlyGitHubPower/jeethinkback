package com.jeethink.project.dynamic.service;

import com.jeethink.project.dynamic.domain.SysFlowFormattr;

import java.util.List;

public interface SysFlowFormattrService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    SysFlowFormattr queryById(String id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<SysFlowFormattr> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param sysFlowFormattr 实例对象
     * @return 实例对象
     */
    int insert(SysFlowFormattr sysFlowFormattr);


    List<SysFlowFormattr> queryAll(SysFlowFormattr sysFlowFormattr);
    /**
     * 修改数据
     *
     * @param sysFlowFormattr 实例对象
     * @return 实例对象
     */
    int update(SysFlowFormattr sysFlowFormattr);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    int deleteById(String id);

}
