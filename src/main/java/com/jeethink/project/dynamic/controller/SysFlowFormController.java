package com.jeethink.project.dynamic.controller;

import com.jeethink.framework.web.controller.BaseController;
import com.jeethink.framework.web.domain.AjaxResult;
import com.jeethink.framework.web.page.TableDataInfo;
import com.jeethink.project.dynamic.domain.FormType;
import com.jeethink.project.dynamic.domain.SysFlowForm;
import com.jeethink.project.dynamic.domain.SysFlowFormattr;
import com.jeethink.project.dynamic.service.SysFlowFormService;
import com.jeethink.project.dynamic.service.SysFlowFormattrService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
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
@SuppressWarnings("AlibabaRemoveCommentedCode")
@Api("表单管理")
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

    @ApiOperation("获取字段")
    @GetMapping("/selectattrs")
    public AjaxResult selectAttrs(SysFlowFormattr sysFlowFormattr,SysFlowForm sysFlowForm) {
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
        list.add(form);
        return AjaxResult.success(list);
    }
    @ApiOperation("新增表单")
    @ApiImplicitParam(name = "sysFlowForm", value = "新增表单", dataType = "SysFlowForm")
    @PostMapping("/add")
    public AjaxResult add(@RequestBody SysFlowForm sysFlowForm) {
        return toAjax(sysFlowFormService.insert(sysFlowForm));
    }
    @ApiOperation("删除表单")
    @ApiImplicitParam(name = "id", value = "ID", required = true, dataType = "String", paramType = "path")
    @DeleteMapping("/{id}")
    public AjaxResult remove(@PathVariable String[] id) {
        return toAjax(sysFlowFormService.deleteById(id));
    }

    @GetMapping("/selectform")
    public AjaxResult selectForm(FormType formType) {
        List flowForms=sysFlowFormService.queryById(formType);
        return AjaxResult.success(flowForms);
    }
    @GetMapping("/selectformVue")
    public AjaxResult selectformVue(FormType formType, String token) {
        if ("1".equals(token)) {
            if (formType.getFormid() == null) {
                return AjaxResult.error("请提供Formid以供查询。");
            }
        } else {
            return AjaxResult.error("抱歉，Token 错误，您没有权限填写此表。");
        }
        List flowForms=sysFlowFormService.queryByFormId(formType);
        if (flowForms.size()==0){return AjaxResult.error("抱歉，您提供的Formid查询内容为空，请检查是否错误。");}
        return AjaxResult.success(flowForms);
    }
    @GetMapping("/selecthtml/{formid}")

    public AjaxResult selectHtml(SysFlowForm sysFlowForm,SysFlowFormattr sysFlowFormattr,@PathVariable(value = "formid") String[] formid) {
        List onehtml=sysFlowFormService.queryHtml(sysFlowForm,sysFlowFormattr,formid);
        return AjaxResult.success(onehtml);
    }

    @GetMapping("/selectAll")
    public TableDataInfo selectAll(SysFlowForm sysFlowForm) {
        startPage();
        List<SysFlowForm> flowmAttr = sysFlowFormService.queryAll(sysFlowForm);
        return getDataTable(flowmAttr);
    }


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