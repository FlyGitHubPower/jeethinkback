package com.jeethink.project.dynamic.controller;

import com.alibaba.fastjson.JSONObject;
import com.jeethink.framework.web.controller.BaseController;
import com.jeethink.framework.web.domain.AjaxResult;
import com.jeethink.framework.web.page.TableDataInfo;
import com.jeethink.project.dynamic.domain.*;
import com.jeethink.project.dynamic.service.SysFlowFormService;
import com.jeethink.project.dynamic.service.SysFlowFormattrService;
import com.jeethink.project.dynamic.service.SysFlowFormcontentService;
import com.jeethink.project.dynamic.service.SysFlowTypeService;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.*;

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
    @Resource
    private SysFlowFormService sysFlowFormService;
    @Resource
    private SysFlowFormattrService sysFlowFormattrService;
    @Autowired
    private SysFlowTypeService typeService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("/selectOne")
    public SysFlowFormcontent selectOne(String id) {
        return this.sysFlowFormcontentService.queryById(id);
    }

    @GetMapping("/selectAll")
    public AjaxResult selectAll(SysFlowFormcontent sysFlowFormcontent, SysFlowForm sysFlowForm, SysFlowFormattr sysFlowFormattr, SysFlowType sysFlowType) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        startPage();
        TableDataInfo tableDataInfo = sysFlowFormcontentService.queryAll(sysFlowFormcontent);
        List<SysFlowFormcontent> flowFormcontents = (List<SysFlowFormcontent>) tableDataInfo.getRows();
        long total = tableDataInfo.getTotal();
        List<SysFlowFormattr> FlowFormattr = null;
        List list = new ArrayList();

    if(!flowFormcontents.isEmpty()){
        for (SysFlowFormcontent s : flowFormcontents) {
            Map map = new LinkedHashMap();
            Map mapattr = new LinkedHashMap();
            List list1 = new ArrayList();
            List listattr = new ArrayList();
            Map<String, Object> param = JSONObject.parseObject(JSONObject.toJSONString(s));
            sysFlowForm.setId(s.getFormid());
            List<SysFlowForm> FlowForm = sysFlowFormService.queryContent(sysFlowForm);
            List<SysFlowForm> FlowForm1 = sysFlowFormService.queryAll(sysFlowForm);

            char xiaoxie = 'a';
            //定义循环，次数26次
            for (int i = 0; i < 26; i++) {

                xiaoxie = (char) (i + 97);
                try {
                    Method method = FlowForm.get(0).getClass().getMethod("getAttr" + xiaoxie);
                    String attrs = method.invoke(FlowForm.get(0)).toString();


                    if (attrs != null) {
                        sysFlowFormattr.setId(attrs);
                        FlowFormattr = sysFlowFormattrService.queryAll(sysFlowFormattr);

                        for (SysFlowFormattr attr : FlowFormattr
                        ) {
                            mapattr.put(attr.getName(), param.get("attr" + xiaoxie));
                            param.put(attr.getAlias(), param.remove("attr" + xiaoxie));
                            map.put(attr.getAlias(), param.get(attr.getAlias()));
                            param.remove(attr.getAlias());
                            break;
                        }
                    } else {
                        continue;
                    }
                } catch (Exception e) {
                    continue;
                }

            }
            String formName = FlowForm1.get(0).getName();
            sysFlowType.setId(FlowForm1.get(0).getTypeid());
            String formTypeName = typeService.selectTypeList(sysFlowType).get(0).getName();
            List<SysFlowType> sysFlowTypes = typeService.selectTypeList(sysFlowType);
            SysFlowType sysFlowType11 = sysFlowTypes.get(0);
            String name = sysFlowType11.getName();
            System.out.println(name);

            param.put("formName", formName);
            param.put("formTypeName", formTypeName);
            listattr.add(mapattr);
            list1.add(map);
            param.put("allAttrs", list1);
            param.put("listattr", listattr);

            String createTimeString = param.get("createTime").toString();
            Date createTime = new Date(Long.parseLong(createTimeString));
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            try {
                String updateTimeString = param.get("updateTime").toString();
                Date updateTime = new Date(Long.parseLong(updateTimeString));
                String timeoutString = param.get("timeout").toString();
                Date timeout = new Date(Long.parseLong(timeoutString));
                param.put("updateTime", formatter.format(updateTime));
                param.put("timeout", formatter.format(timeout));
            } catch (Exception e) {
                param.put("updateTime", null);
                param.put("timeout", null);
            }
            param.put("createTime", formatter.format(createTime));
            list.add(param);
        }
    }
        return AjaxResult.success(list,String.valueOf(total),null);
    }
    @CrossOrigin
    @GetMapping("/selectVue")
    public AjaxResult selectVue(SysFlowFormcontent sysFlowFormcontent, SysFlowForm sysFlowForm, SysFlowFormattr sysFlowFormattr, SysFlowType sysFlowType, String token) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        if ("1".equals(token)) {
        } else {
            return AjaxResult.error("抱歉，Token 错误，您没有权限填写此表。");
        }
        startPage();
//        sysFlowFormcontent.setCreateBy("admin");

        TableDataInfo tableDataInfo = sysFlowFormcontentService.queryAll(sysFlowFormcontent);
        List<SysFlowFormcontent> flowFormcontents = (List<SysFlowFormcontent>) tableDataInfo.getRows();
        long total = tableDataInfo.getTotal();
        if(flowFormcontents.isEmpty()){
            return AjaxResult.error("抱歉，您的ID有误！");
        }
            List<SysFlowFormattr> FlowFormattr = null;
            List list = new ArrayList();

            for (SysFlowFormcontent s : flowFormcontents
            ) {
                Map map = new LinkedHashMap();
                Map mapattr = new LinkedHashMap();
                List list1 = new ArrayList();
                List listattr = new ArrayList();
                Map<String, Object> param = JSONObject.parseObject(JSONObject.toJSONString(s));
                sysFlowForm.setId(s.getFormid());
                List<SysFlowForm> FlowForm = sysFlowFormService.queryContent(sysFlowForm);
                List<SysFlowForm> FlowForm1 = sysFlowFormService.queryAll(sysFlowForm);

                char xiaoxie = 'a';
                //定义循环，次数26次
                for (int i = 0; i < 26; i++) {

                    xiaoxie = (char) (i + 97);
                    try {
                        Method method = FlowForm.get(0).getClass().getMethod("getAttr" + xiaoxie);
                        String attrs = method.invoke(FlowForm.get(0)).toString();


                        if (attrs != null) {
                            sysFlowFormattr.setId(attrs);
                            FlowFormattr = sysFlowFormattrService.queryAll(sysFlowFormattr);

                            for (SysFlowFormattr attr : FlowFormattr
                            ) {
                                mapattr.put(attr.getName(), param.get("attr" + xiaoxie));
                                param.put(attr.getAlias(), param.remove("attr" + xiaoxie));
                                map.put(attr.getAlias(), param.get(attr.getAlias()));
                                param.remove(attr.getAlias());
                                break;
                            }
                        } else {
                            continue;
                        }
                    } catch (Exception e) {
                        continue;
                    }

                }
                String formName = FlowForm1.get(0).getName();
                sysFlowType.setId(FlowForm1.get(0).getTypeid());
                String formTypeName = typeService.selectTypeList(sysFlowType).get(0).getName();
                List<SysFlowType> sysFlowTypes = typeService.selectTypeList(sysFlowType);
                SysFlowType sysFlowType11 = sysFlowTypes.get(0);
                String name = sysFlowType11.getName();
                System.out.println(name);

                param.put("formName", formName);
                param.put("formTypeName", formTypeName);
                listattr.add(mapattr);
                list1.add(map);
                param.put("allAttrs", list1);
                param.put("listattr", listattr);

                String createTimeString = param.get("createTime").toString();
                Date createTime = new Date(Long.parseLong(createTimeString));
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                try {
                    String updateTimeString = param.get("updateTime").toString();
                    Date updateTime = new Date(Long.parseLong(updateTimeString));
                    String timeoutString = param.get("timeout").toString();
                    Date timeout = new Date(Long.parseLong(timeoutString));
                    param.put("updateTime", formatter.format(updateTime));
                    param.put("timeout", formatter.format(timeout));
                } catch (Exception e) {
                    param.put("updateTime", null);
                    param.put("timeout", null);
                }
                param.put("createTime", formatter.format(createTime));
                list.add(param);
            }
            return AjaxResult.success(list,String.valueOf(total),null);

    }

    @PostMapping("/add")
    public AjaxResult insert(@RequestBody SysFlowFormcontent sysFlowFormcontent) {
        return toAjax(sysFlowFormcontentService.insert(sysFlowFormcontent));
    }
    @PostMapping("/addVue")
    public AjaxResult addVue(@RequestBody SysFlowFormcontent sysFlowFormcontent, String token) {
        if ("1".equals(token)) {
        } else {
            return AjaxResult.error("抱歉，Token 错误，您没有权限填写此表。");
        }
        return toAjax(sysFlowFormcontentService.insert(sysFlowFormcontent));
    }

    @ApiOperation("删除内容")
    @ApiImplicitParam(name = "id", value = "ID", required = true, dataType = "String", paramType = "path")
    @DeleteMapping("/{id}")
    public AjaxResult remove(@PathVariable String[] id) {
        return toAjax(sysFlowFormcontentService.deleteById(id));
    }

    @ApiOperation("修改内容")
    @ApiImplicitParam(name = "id", value = "ID", required = true, dataType = "String", paramType = "path")
    @PutMapping
    public AjaxResult update(@RequestBody SysFlowFormcontent sysFlowFormcontent) {
        return toAjax(sysFlowFormcontentService.update(sysFlowFormcontent));
    }
}
