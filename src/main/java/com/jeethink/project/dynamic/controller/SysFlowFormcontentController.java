package com.jeethink.project.dynamic.controller;

import com.jeethink.framework.web.controller.BaseController;
import com.jeethink.framework.web.domain.AjaxResult;
import com.jeethink.project.dynamic.domain.SysFlowFormcontent;
import com.jeethink.project.dynamic.service.SysFlowFormcontentService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * (SysFlowFormcontent)表控制层
 *
 * @author makejava
 * @since 2021-04-25 16:11:58
 */
@RestController
@RequestMapping("/system/sysFlowFormcontent")
public class SysFlowFormcontentController extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private SysFlowFormcontentService sysFlowFormcontentService;

    /**
     * 通过主键查询单条数据
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("/selectOne")
    public SysFlowFormcontent selectOne(String id) {
        return this.sysFlowFormcontentService.queryById(id);
    }

    @GetMapping("/selectAll")
    public AjaxResult selectAll(SysFlowFormcontent sysFlowFormcontent) {
        List<SysFlowFormcontent> flowFormcontents = sysFlowFormcontentService.queryAll(sysFlowFormcontent);
        return AjaxResult.success(flowFormcontents);
    }
    @PostMapping("/add")
    public AjaxResult insert(@RequestBody SysFlowFormcontent sysFlowFormcontent) {
        return toAjax(sysFlowFormcontentService.insert(sysFlowFormcontent));
    }
}
