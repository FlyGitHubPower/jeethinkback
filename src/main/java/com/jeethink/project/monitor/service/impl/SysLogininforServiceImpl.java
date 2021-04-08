package com.jeethink.project.monitor.service.impl;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.jeethink.project.system.utils.DataTimestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeethink.project.monitor.domain.SysLogininfor;
import com.jeethink.project.monitor.mapper.SysLogininforMapper;
import com.jeethink.project.monitor.service.ISysLogininforService;

/**
 * 系统访问日志情况信息 服务层处理
 * 
 @author  官方网址
 */
@Service
public class SysLogininforServiceImpl implements ISysLogininforService
{

    @Autowired
    private SysLogininforMapper logininforMapper;

    /**
     * 新增系统登录日志
     * 
     * @param logininfor 访问日志对象
     */
    @Override
    public void insertLogininfor(SysLogininfor logininfor)
    {
        Long aLong = logininforMapper.selectLogById();
        if(aLong==null){
            logininfor.setInfoId(1L);
        }else {
            logininfor.setInfoId(aLong+1);
        }
        logininfor.setLoginTime(new Date());
        logininforMapper.insertLogininfor(logininfor);
    }

    /**
     * 查询系统登录日志集合
     * 
     * @param logininfor 访问日志对象
     * @return 登录记录集合
     */
    @Override
    public List<SysLogininfor> selectLogininforList(SysLogininfor logininfor)
    {
        Object endTime = logininfor.getEndTime();
        if(endTime!=null && !"".equals(endTime)){
            String s = DataTimestamp.dataEndTime(endTime);
            logininfor.setEndTime(Timestamp.valueOf(s));
            String s1 = DataTimestamp.dataBeginTime(logininfor.getBeginTime());
            logininfor.setBeginTime(Timestamp.valueOf(s1));

        }else {
            logininfor.setEndTime(null);
            logininfor.setBeginTime(null);
        }
        return logininforMapper.selectLogininforList(logininfor);
    }

    /**
     * 批量删除系统登录日志
     * 
     * @param infoIds 需要删除的登录日志ID
     * @return
     */
    @Override
    public int deleteLogininforByIds(Long[] infoIds)
    {
        return logininforMapper.deleteLogininforByIds(infoIds);
    }

    /**
     * 清空系统登录日志
     */
    @Override
    public void cleanLogininfor()
    {
        logininforMapper.cleanLogininfor();
    }
}
