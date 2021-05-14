package com.jeethink.project.dynamic.service.impl;

import com.jeethink.common.utils.IdWorker;
import com.jeethink.project.dynamic.domain.SysFlowStep;
import com.jeethink.project.dynamic.mapper.SysFlowStepMapper;
import com.jeethink.project.dynamic.service.SysFlowStepService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * (SysFlowStep)表服务实现类
 *
 * @author makejava
 * @since 2021-05-13 10:32:09
 */
@Service("sysFlowStepService")
public class SysFlowStepServiceImpl implements SysFlowStepService {
    @Resource
    private SysFlowStepMapper sysFlowStepMapper;
    @Autowired
    private IdWorker idWorker;


    @Override
    public Long queryById(String formid) {
        return sysFlowStepMapper.queryById(formid);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<SysFlowStep> queryAllByLimit(int offset, int limit) {
        return this.sysFlowStepMapper.queryAllByLimit(offset, limit);
    }

    @Override
    public List<SysFlowStep> queryAll(SysFlowStep sysFlowStep) {
        List<SysFlowStep> sysFlowSteps = sysFlowStepMapper.queryAll(sysFlowStep);
        return sysFlowSteps;
    }

    /**
     * 新增数据
     *
     * @param sysFlowStep 实例对象
     * @return 实例对象
     */
    @Override
    public int insert(SysFlowStep sysFlowStep) {
        sysFlowStep.setId(String.valueOf(idWorker.nextId()));
        String formid = sysFlowStep.getFormid();
        if (sysFlowStepMapper.queryById(formid) != null) {
            Long sort = sysFlowStepMapper.queryById(formid);
            sysFlowStep.setSort(sort + 1);
        }else {
            sysFlowStep.setSort(Long.valueOf(1));
        }
        return sysFlowStepMapper.insert(sysFlowStep);
    }

    /**
     * 修改数据
     *
     * @param sysFlowStep 实例对象
     * @return 实例对象
     */
    @Override
    public int update(SysFlowStep sysFlowStep) {
        return sysFlowStepMapper.update(sysFlowStep);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public int deleteById(String[] id) {
        return sysFlowStepMapper.deleteById(id);
    }
}