package com.jeethink.project.dynamic.mapper;

import com.jeethink.project.dynamic.domain.SysFlowType;

import java.util.List;

public interface SysFlowTypeMapper {
    public List<SysFlowType> selectFormList(SysFlowType type);
    public int insertType(SysFlowType type);
    public int updateType(SysFlowType type);
    public int deleteTypeById(String id);
    List<SysFlowType> selectFormType(SysFlowType type);
}
