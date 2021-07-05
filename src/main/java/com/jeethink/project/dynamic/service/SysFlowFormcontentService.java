package com.jeethink.project.dynamic.service;


import com.jeethink.framework.web.page.TableDataInfo;
import com.jeethink.project.dynamic.domain.SysFlowFormattr;
import com.jeethink.project.dynamic.domain.SysFlowFormcontent;

import java.util.List;

/**
 * (SysFlowFormcontent)表服务接口
 *
 * @author makejava
 * @since 2021-04-25 16:11:57
 */
public interface SysFlowFormcontentService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    SysFlowFormcontent queryById(String id);
    TableDataInfo queryAll(SysFlowFormcontent sysFlowFormcontent);
    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<SysFlowFormcontent> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param sysFlowFormcontent 实例对象
     * @return 实例对象
     */
    int insert(SysFlowFormcontent sysFlowFormcontent);

    /**
     * 修改数据
     *
     * @param sysFlowFormcontent 实例对象
     * @return 实例对象
     */
    int update(SysFlowFormcontent sysFlowFormcontent);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    int deleteById(String[] id);

}
