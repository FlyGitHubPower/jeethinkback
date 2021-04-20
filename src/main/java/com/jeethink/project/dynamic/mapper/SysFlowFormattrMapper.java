package com.jeethink.project.dynamic.mapper;

import com.jeethink.project.dynamic.domain.SysFlowFormattr;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysFlowFormattrMapper {
    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    SysFlowFormattr queryById(String id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<SysFlowFormattr> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param sysFlowFormattr 实例对象
     * @return 对象列表
     */
    List<SysFlowFormattr> queryAll(SysFlowFormattr sysFlowFormattr);

    /**
     * 新增数据
     *
     * @param sysFlowFormattr 实例对象
     * @return 影响行数
     */
    int insert(SysFlowFormattr sysFlowFormattr);

    /**
     * 修改数据
     *
     * @param sysFlowFormattr 实例对象
     * @return 影响行数
     */
    int update(SysFlowFormattr sysFlowFormattr);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(String id);
}
