package com.jeethink.project.monitor.service.impl;

import java.sql.Timestamp;
import java.util.List;

import com.jeethink.project.system.utils.DataTimestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeethink.project.monitor.domain.SysOperLog;
import com.jeethink.project.monitor.mapper.SysOperLogMapper;
import com.jeethink.project.monitor.service.ISysOperLogService;

/**
 * 操作日志 服务层处理
 * 
 @author  官方网址
 */
@Service
public class SysOperLogServiceImpl implements ISysOperLogService
{
    @Autowired
    private SysOperLogMapper operLogMapper;

    /**
     * 新增操作日志
     * 
     * @param operLog 操作日志对象
     */
    @Override
    public void insertOperlog(SysOperLog operLog)
    {
        operLogMapper.insertOperlog(operLog);
    }

    /**
     * 查询系统操作日志集合
     * 
     * @param operLog 操作日志对象
     * @return 操作日志集合
     */
    @Override
    public List<SysOperLog> selectOperLogList(SysOperLog operLog)
    {
        Object endTime = operLog.getEndTime();
        if(endTime!=null && !"".equals(endTime)){
            String s = DataTimestamp.dataEndTime(endTime);
            operLog.setEndTime(Timestamp.valueOf(s));
            String s1 = DataTimestamp.dataBeginTime(operLog.getBeginTime());
            operLog.setBeginTime(Timestamp.valueOf(s1));

        }else {
            operLog.setEndTime(null);
            operLog.setBeginTime(null);
        }
        return operLogMapper.selectOperLogList(operLog);
    }

    /**
     * 批量删除系统操作日志
     * 
     * @param operIds 需要删除的操作日志ID
     * @return 结果
     */
    public int deleteOperLogByIds(Long[] operIds)
    {
        return operLogMapper.deleteOperLogByIds(operIds);
    }

    /**
     * 查询操作日志详细
     * 
     * @param operId 操作ID
     * @return 操作日志对象
     */
    @Override
    public SysOperLog selectOperLogById(Long operId)
    {
        return operLogMapper.selectOperLogById(operId);
    }

    /**
     * 清空操作日志
     */
    @Override
    public void cleanOperLog()
    {
        operLogMapper.cleanOperLog();
    }
}
