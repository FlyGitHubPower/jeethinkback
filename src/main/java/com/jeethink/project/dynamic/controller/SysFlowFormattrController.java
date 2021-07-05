package com.jeethink.project.dynamic.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jeethink.framework.web.controller.BaseController;
import com.jeethink.framework.web.domain.AjaxResult;
import com.jeethink.framework.web.page.TableDataInfo;
import com.jeethink.project.dynamic.domain.SysFlowFormattr;
import com.jeethink.project.dynamic.domain.SysFlowFormcontent;
import com.jeethink.project.dynamic.domain.SysFlowType;
import com.jeethink.project.dynamic.service.SysFlowFormattrService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.lang.reflect.Field;
import java.util.*;

@RestController
@RequestMapping("/system/sysFlowFormattr")
public class SysFlowFormattrController extends BaseController {

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

    @GetMapping("/selectAttr")
    public AjaxResult selectattr(@RequestBody SysFlowFormattr sysFlowFormattr) {
        List<SysFlowFormattr> flowmAttr = sysFlowFormattrService.queryAll(sysFlowFormattr);
        return AjaxResult.success(flowmAttr);
    }

    @GetMapping("/selectAll")
    public AjaxResult selectAll(SysFlowFormattr sysFlowFormattr) throws IllegalAccessException {
        startPage();

        TableDataInfo tableDataInfo = sysFlowFormattrService.queryAllTable(sysFlowFormattr);
        List<SysFlowFormattr> flowmAttr = (List<SysFlowFormattr>) tableDataInfo.getRows();
        long total = tableDataInfo.getTotal();
        List list = new ArrayList();



        for (SysFlowFormattr s:flowmAttr
             ) {
            Map map=new HashMap();
            JSONObject js= (JSONObject) JSON.parse(s.getAdAttribute());
            map.put("alias",s.getAlias());
            map.put("name",s.getName());
            map.put("id",s.getId());
            map.put("remark",s.getRemark());
            map.put("create_time",s.getCreate_time());
            map.put("typeid",s.getTypeid());
            map.put("types",s.getTypes());
            map.put("checkrule",s.getCheckrule());
            map.put("length",s.getLength());
            map.put("checkjs",s.getCheckjs());
            map.put("optionlist",s.getOptionlist());
            map.put("typ",s.getTyp());
            map.put("adAttribute",js);
            list.add(map);

        }



        return AjaxResult.success(list,String.valueOf(total),null);
    }

    @PostMapping("/add")
    public AjaxResult add(@RequestBody SysFlowFormattr sysFlowFormattr) {
        return toAjax(sysFlowFormattrService.insert(sysFlowFormattr));
    }

    @DeleteMapping("/{id}")
    public AjaxResult remove(@PathVariable String[] id) {
        return toAjax(sysFlowFormattrService.deleteById(id));
    }

    @PutMapping
    public AjaxResult update(@RequestBody SysFlowFormattr sysFlowFormattr) {
        return toAjax(sysFlowFormattrService.update(sysFlowFormattr));
    }

}
