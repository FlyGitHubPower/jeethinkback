package com.jeethink.project.dynamic.controller;

import com.jeethink.framework.web.controller.BaseController;
import com.jeethink.framework.web.domain.AjaxResult;
import com.jeethink.project.dynamic.domain.SysFlowFormattr;
import com.jeethink.project.dynamic.domain.SysFlowType;
import com.jeethink.project.dynamic.service.SysFlowFormattrService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/system/sysFlowFormattr")
public class SysFlowFormattrController extends BaseController{

    /**
     * 服务对象
     */
    @Resource
    private SysFlowFormattrService sysFlowFormattrService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("/selectOne")
    public SysFlowFormattr selectOne(String id) {
        return this.sysFlowFormattrService.queryById(id);
    }

    @GetMapping("/selectAll")
    public AjaxResult selectAll( SysFlowFormattr sysFlowFormattr) {
        List<SysFlowFormattr> flowmAttr = sysFlowFormattrService.queryAll(sysFlowFormattr);
        return AjaxResult.success(flowmAttr);
    }

    @PostMapping("/add")
    public AjaxResult add(@RequestBody SysFlowFormattr sysFlowFormattr) {
        return toAjax(sysFlowFormattrService.insert(sysFlowFormattr));
    }

    @DeleteMapping("/{id}")
    public AjaxResult remove(@PathVariable String id) {
        return toAjax(sysFlowFormattrService.deleteById(id));
    }

    @PutMapping
    public AjaxResult update(@RequestBody SysFlowFormattr sysFlowFormattr) {
        return toAjax(sysFlowFormattrService.update(sysFlowFormattr));
    }

}
