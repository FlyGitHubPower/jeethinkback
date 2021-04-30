package com.jeethink.project.dynamic.service.impl;

import javax.annotation.Resource;
import java.util.List;

import com.jeethink.common.utils.IdWorker;
import com.jeethink.project.dynamic.domain.SysFlowFormattr;
import com.jeethink.project.dynamic.domain.SysFlowFormcontent;
import com.jeethink.project.dynamic.mapper.SysFlowFormcontentMapper;
import com.jeethink.project.dynamic.service.SysFlowFormcontentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * (SysFlowFormcontent)表服务实现类
 *
 * @author makejava
 * @since 2021-04-25 16:11:57
 */
@Service("sysFlowFormcontentService")
public class SysFlowFormcontentServiceImpl implements SysFlowFormcontentService {
    @Resource
    private SysFlowFormcontentMapper sysFlowFormcontentMapper;
    @Autowired
    public IdWorker idWorker;
    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public SysFlowFormcontent queryById(String id) {
        return this.sysFlowFormcontentMapper.queryById(id);
    }

    @Override
    public List<SysFlowFormcontent> queryAll(SysFlowFormcontent sysFlowFormcontent) {
        return sysFlowFormcontentMapper.queryAll(sysFlowFormcontent);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<SysFlowFormcontent> queryAllByLimit(int offset, int limit) {
        return this.sysFlowFormcontentMapper.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param sysFlowFormcontent 实例对象
     * @return 实例对象
     */
    @Override
    public int insert(SysFlowFormcontent sysFlowFormcontent) {
        sysFlowFormcontent.setId(String.valueOf(idWorker.nextId()));
        return sysFlowFormcontentMapper.insert(sysFlowFormcontent);
    }

    /**
     * 修改数据
     *
     * @param sysFlowFormcontent 实例对象
     * @return 实例对象
     */
    @Override
    public SysFlowFormcontent update(SysFlowFormcontent sysFlowFormcontent) {
        this.sysFlowFormcontentMapper.update(sysFlowFormcontent);
        return this.queryById(sysFlowFormcontent.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(String id) {
        return this.sysFlowFormcontentMapper.deleteById(id) > 0;
    }
}