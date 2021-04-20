package com.jeethink.project.dynamic.controller;

import com.jeethink.framework.web.controller.BaseController;
import com.jeethink.framework.web.domain.AjaxResult;
import com.jeethink.project.dynamic.domain.SysFlowForm;
import com.jeethink.project.dynamic.domain.SysFlowFormattr;
import com.jeethink.project.dynamic.service.SysFlowFormService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * (SysFlowForm)表控制层
 *
 * @author makejava
 * @since 2021-04-20 10:44:13
 */
/**
 * (SysFlowForm)表控制层
 *
 * @author makejava
 * @since 2021-04-20 10:58:46
 */
@RestController
@RequestMapping("/system/sysFlowForm")
public class SysFlowFormController extends BaseController{
    /**
     * 服务对象
     */
    @Resource
    private SysFlowFormService sysFlowFormService;


    @PostMapping("/add")
    public AjaxResult add(@RequestBody SysFlowForm sysFlowForm) {
        return toAjax(sysFlowFormService.insert(sysFlowForm));
    }

    @DeleteMapping("/{id}")
    public AjaxResult remove(@PathVariable String id) {
        return toAjax(sysFlowFormService.deleteById(id));
    }

    @GetMapping("selectOne")
    public SysFlowForm selectOne(String id) {
        return this.sysFlowFormService.queryById(id);
    }

    @GetMapping("/selectAll")
    public AjaxResult selectAll(SysFlowForm sysFlowForm) {
        List<SysFlowForm> flowmAttr = sysFlowFormService.queryAll(sysFlowForm);
        return AjaxResult.success(flowmAttr);
    }

    @PutMapping
    public AjaxResult update(@RequestBody SysFlowForm sysFlowForm) {
        return toAjax(sysFlowFormService.update(sysFlowForm));
    }
}