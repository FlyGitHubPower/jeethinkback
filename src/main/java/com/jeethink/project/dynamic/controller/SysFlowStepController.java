package com.jeethink.project.dynamic.controller;


import com.jeethink.framework.web.controller.BaseController;
import com.jeethink.framework.web.domain.AjaxResult;
import com.jeethink.framework.web.domain.server.Sys;
import com.jeethink.framework.web.page.TableDataInfo;
import com.jeethink.project.dynamic.domain.SysFlowStep;
import com.jeethink.project.dynamic.service.SysFlowStepService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * (SysFlowStep)表控制层
 *
 * @author makejava
 * @since 2021-05-13 10:32:10
 */
@RestController
@RequestMapping("/system/sysFlowStep")
public class SysFlowStepController extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private SysFlowStepService sysFlowStepService;



    @GetMapping("/selectAll")
    public TableDataInfo selectAll(SysFlowStep sysFlowStep) {
        startPage();
        return getDataTable(sysFlowStepService.queryAll(sysFlowStep));
    }

    @PostMapping("/add")
    public AjaxResult insert(@RequestBody SysFlowStep sysFlowStep) {
        int insert = sysFlowStepService.insert(sysFlowStep);
        return AjaxResult.success(insert);
    }

    @DeleteMapping("/{id}")
    public AjaxResult remove(@PathVariable String[] id) {
        return toAjax(sysFlowStepService.deleteById(id));
    }
}