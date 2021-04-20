package com.jeethink.project.dynamic.service.impl;

import com.jeethink.common.utils.IdWorker;
import com.jeethink.project.dynamic.domain.SysFlowForm;
import com.jeethink.project.dynamic.mapper.SysFlowFormMapper;
import com.jeethink.project.dynamic.service.SysFlowFormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (SysFlowForm)表服务实现类
 *
 * @author makejava
 * @since 2021-04-20 10:44:12
 */
@Service("sysFlowFormService")
public class SysFlowFormServiceImpl implements SysFlowFormService {
    @Resource
    private SysFlowFormMapper sysFlowFormMapper;
    @Autowired
    private IdWorker idWorker;
    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public SysFlowForm queryById(String id) {
        return this.sysFlowFormMapper.queryById(id);
    }

    @Override
    public List<SysFlowForm> queryAll(SysFlowForm sysFlowForm) {
        return sysFlowFormMapper.queryAll(sysFlowForm);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<SysFlowForm> queryAllByLimit(int offset, int limit) {
        return this.sysFlowFormMapper.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param sysFlowForm 实例对象
     * @return 实例对象
     */
    @Override
    public int insert(SysFlowForm sysFlowForm) {
        sysFlowForm.setId(String.valueOf(idWorker.nextId()));
        return sysFlowFormMapper.insert(sysFlowForm);
    }

    /**
     * 修改数据
     *
     * @param sysFlowForm 实例对象
     * @return 实例对象
     */
    @Override
    public int update(SysFlowForm sysFlowForm) {
        return sysFlowFormMapper.update(sysFlowForm);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public int deleteById(String id) {
        return this.sysFlowFormMapper.deleteById(id);
    }
}