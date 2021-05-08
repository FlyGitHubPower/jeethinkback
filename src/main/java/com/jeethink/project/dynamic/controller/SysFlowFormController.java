package com.jeethink.project.dynamic.controller;

import com.jeethink.framework.web.controller.BaseController;
import com.jeethink.framework.web.domain.AjaxResult;
import com.jeethink.project.dynamic.domain.FormType;
import com.jeethink.project.dynamic.domain.SysFlowForm;
import com.jeethink.project.dynamic.domain.SysFlowFormattr;
import com.jeethink.project.dynamic.service.SysFlowFormService;
import com.jeethink.project.dynamic.service.SysFlowFormattrService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.HtmlUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    @Resource
    private SysFlowFormattrService sysFlowFormattrService;


    @GetMapping("/selectattrs")
    public AjaxResult selectAttrs(SysFlowFormattr sysFlowFormattr,SysFlowForm sysFlowForm) {
        Map map1 = new HashMap();
        Map map2 = new HashMap();
        List list = new ArrayList();
        List<SysFlowFormattr> Attr = sysFlowFormattrService.queryAll(sysFlowFormattr);
        List<SysFlowForm> form= sysFlowFormService.queryAll(sysFlowForm);
        for (SysFlowForm f:form) {
        for (SysFlowFormattr a:Attr) {
         if(f.getAttra()==a.getId()){
             f.setAttra(a.getAlias());
         }
           a.getAlias();
            a.getId();
        }
        }
//        list.add(Attr);
        list.add(form);
        return AjaxResult.success(list);
    }

    @PostMapping("/add")
    public AjaxResult add(@RequestBody SysFlowForm sysFlowForm) {
        return toAjax(sysFlowFormService.insert(sysFlowForm));
    }

    @DeleteMapping("/{id}")
    public AjaxResult remove(@PathVariable String[] id) {
        return toAjax(sysFlowFormService.deleteById(id));
    }

    @GetMapping("/selectform")
    public AjaxResult selectForm(FormType formType) {
        List flowForms=sysFlowFormService.queryById(formType);
        return AjaxResult.success(flowForms);
    }

//    @GetMapping("/selecthtml")
    @GetMapping("/selecthtml/{formid}")
//    public AjaxResult selectHtml(SysFlowForm sysFlowForm,SysFlowFormattr sysFlowFormattr) {
    public AjaxResult selectHtml(SysFlowForm sysFlowForm,SysFlowFormattr sysFlowFormattr,@PathVariable(value = "formid") String[] formid) {
        List onehtml=sysFlowFormService.queryHtml(sysFlowForm,sysFlowFormattr,formid);
//        List onehtml=sysFlowFormService.queryHtml(sysFlowForm,sysFlowFormattr);
        return AjaxResult.success(onehtml);
    }

    @GetMapping("/selectAll")
    public AjaxResult selectAll(SysFlowForm sysFlowForm) {
        List<SysFlowForm> flowmAttr = sysFlowFormService.queryAll(sysFlowForm);
        return AjaxResult.success(flowmAttr);
    }
//    @GetMapping("/queryAllByLimit")
//    public AjaxResult queryAllByLimit(SysFlowForm sysFlowForm) {
//        Map flowmAttr = sysFlowFormService.queryAllByLimit(sysFlowForm);
//        return AjaxResult.success(flowmAttr);
//    }

    @PutMapping
    public AjaxResult update(@RequestBody SysFlowForm sysFlowForm) {
        if (sysFlowForm.getHtmlfrom()!=null) {
            String s= sysFlowForm.getHtmlfrom();
            String newString = s.replace("~~~", "<").replace("~hh", ">");
            System.out.println(newString);
            sysFlowForm.setHtmlfrom(newString);
        }

        return toAjax(sysFlowFormService.update(sysFlowForm));
    }
}