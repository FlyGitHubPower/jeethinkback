package com.jeethink.project.dynamic.mapper;

import com.jeethink.project.dynamic.domain.FormType;
import com.jeethink.project.dynamic.domain.SysFlowForm;
import org.apache.ibatis.annotations.Param;
import java.util.List;
public interface SysFlowFormMapper {


    List<FormType> queryById(FormType formType);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
//    List<SysFlowForm> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param sysFlowForm 实例对象
     * @return 对象列表
     */
    List<SysFlowForm> queryAll(SysFlowForm sysFlowForm);

    /**
     * 新增数据
     *
     * @param sysFlowForm 实例对象
     * @return 影响行数
     */
    int insert(SysFlowForm sysFlowForm);

    /**
     * 修改数据
     *
     * @param sysFlowForm 实例对象
     * @return 影响行数
     */
    int update(SysFlowForm sysFlowForm);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(String[] id);

}