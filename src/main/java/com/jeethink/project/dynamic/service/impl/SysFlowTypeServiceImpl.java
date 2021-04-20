package com.jeethink.project.dynamic.service.impl;

import com.jeethink.common.utils.IdWorker;
import com.jeethink.project.dynamic.domain.SysFlowType;
import com.jeethink.project.dynamic.mapper.SysFlowTypeMapper;
import com.jeethink.project.dynamic.service.SysFlowTypeService;
import com.jeethink.project.system.utils.DataTimestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

@Service
public class SysFlowTypeServiceImpl implements SysFlowTypeService {
    @Autowired
    private SysFlowTypeMapper sysFlowTypeMapper;
    @Autowired
    private IdWorker idWorker;

    @Override
    public List<SysFlowType> selectTypeList(SysFlowType type) {
//        List<SysFlowType> type1 = sysFlowTypeMapper.selectFormList(type);
//        for (SysFlowType str : type1) {
//            System.out.println(str.getCreate_time());
//            SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//            String format = sd.format(str.getCreate_time());
//            System.out.println(format);
//            str.setCreate_time(Timestamp.valueOf(format));
//            str.setId(str.getId());
//            str.setRemark(str.getRemark());
//            str.setName(str.getName());
//            str.setSort(str.getSort());
//            System.out.println(format);
//            System.out.println(str.toString());
//        }
//        return type1;
        return sysFlowTypeMapper.selectFormList(type);
    }

    @Override
    public List selectType(SysFlowType type) {
        List<String> list =  new ArrayList<>();
        List<SysFlowType> types = sysFlowTypeMapper.selectFormType(type);
        for (SysFlowType typess:types
        ) {
            list.add(typess.getName());
            list.add(typess.getId());
        }
        return list;
    }

    @Override
    public int insertType(SysFlowType type) {
        type.setId(String.valueOf(idWorker.nextId()));
        return sysFlowTypeMapper.insertType(type);
    }

    @Override
    public int updateType(SysFlowType type) {
        return sysFlowTypeMapper.updateType(type);
    }

    @Override
    public int deleteTypeById(String id) {
        return sysFlowTypeMapper.deleteTypeById(id);
    }
}
