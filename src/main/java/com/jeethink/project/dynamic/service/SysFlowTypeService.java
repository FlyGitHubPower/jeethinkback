package com.jeethink.project.dynamic.service;

import com.jeethink.project.dynamic.domain.SysFlowType;
import com.jeethink.project.system.domain.SysDept;

import java.util.List;

public interface SysFlowTypeService {
    public List<SysFlowType> selectTypeList(SysFlowType type);
    public List<SysFlowType> selectType(SysFlowType type);
    public int insertType(SysFlowType type);
    public int updateType(SysFlowType type);
    public int deleteTypeById(String id);
}
