package com.jeethink.project.dynamic.service.impl;


import com.jeethink.common.utils.IdWorker;
import com.jeethink.project.dynamic.domain.SysFlowFormattr;
import com.jeethink.project.dynamic.mapper.SysFlowFormattrMapper;
import com.jeethink.project.dynamic.service.SysFlowFormattrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("sysFlowFormattrService")
public class SysFlowFormattrServiceImpl implements SysFlowFormattrService {
    @Resource
    private SysFlowFormattrMapper sysFlowFormattrMapper;
    @Autowired
    private IdWorker idWorker;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public SysFlowFormattr queryById(String id) {
        return this.sysFlowFormattrMapper.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<SysFlowFormattr> queryAllByLimit(int offset, int limit) {
        return this.sysFlowFormattrMapper.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param sysFlowFormattr 实例对象
     * @return 实例对象
     */
    @Override
    public int insert(SysFlowFormattr sysFlowFormattr) {
        sysFlowFormattr.setId(String.valueOf(idWorker.nextId()));
                return sysFlowFormattrMapper.insert(sysFlowFormattr);
    }

    @Override
    public List<SysFlowFormattr> queryAll(SysFlowFormattr sysFlowFormattr) {
        return sysFlowFormattrMapper.queryAll(sysFlowFormattr);
    }

    /**
     * 修改数据
     *
     * @param sysFlowFormattr 实例对象
     * @return 实例对象
     */
    @Override
    public int update(SysFlowFormattr sysFlowFormattr) {
        return sysFlowFormattrMapper.update(sysFlowFormattr);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public int deleteById(String[] id) {
        return sysFlowFormattrMapper.deleteById(id);
    }
}
