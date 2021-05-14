package com.jeethink.project.dynamic.service.impl;

import com.jeethink.common.utils.IdWorker;
import com.jeethink.project.dynamic.domain.FormType;
import com.jeethink.project.dynamic.domain.SysFlowForm;
import com.jeethink.project.dynamic.domain.SysFlowFormattr;
import com.jeethink.project.dynamic.mapper.SysFlowFormMapper;
import com.jeethink.project.dynamic.mapper.SysFlowFormattrMapper;
import com.jeethink.project.dynamic.service.SysFlowFormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.*;

/**
 * (SysFlowForm)表服务实现类
 *
 * @author makejava
 * @since 2021-04-20 10:44:12
 */
@Service("sysFlowFormService")
public class SysFlowFormServiceImpl implements SysFlowFormService {
    @Resource
    private SysFlowFormMapper sysFlowFormMapper;
    @Resource
    private SysFlowFormattrMapper sysFlowFormattrMapper;
    @Autowired
    private IdWorker idWorker;


    @Override
    public List<Object> queryById(FormType formType) {
        List<String> strings = new ArrayList<>();
        List<Object> list = new ArrayList<>();
        List<FormType> formTypes = sysFlowFormMapper.queryById(null);
        for (FormType type : formTypes) {
            if (strings.contains(type.getTypeid())) {
                continue;
            }
            strings.add(type.getTypeid());
            Map<String, Object> map1 = new HashMap<>();
            map1.put("typename", type.getTypename());
            map1.put("remark", type.getRemark());
            FormType formType1 = new FormType();
            formType1.setTypename(type.getTypename());
            formType1.setRemark(type.getRemark());
            List<FormType> formTypess = sysFlowFormMapper.queryById(formType1);

            map1.put("list", formTypess);
            list.add(map1);

        }
        return list;
    }


    @Override
    public List queryHtml(SysFlowForm sysFlowForm, SysFlowFormattr sysFlowFormattr, String[] formid) {
        List list = new ArrayList();
        List list1 = new ArrayList();
        List list2 = new ArrayList();
        StringBuilder sb = new StringBuilder();
        StringBuilder sb1 = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        sysFlowForm.setId(formid[0]);
        List<SysFlowForm> forms = sysFlowFormMapper.queryAll(sysFlowForm);
        SysFlowForm s = forms.get(0);

        if (s.getHtmlfrom()!=null) {

            if (formid.length != 1) {

            String source = s.getHtmlfrom();

            String[] sourceArray = source.split("<script>");
                boolean status = sourceArray[0].contains("class=\"drag-item droppable\"");
                if (status) {
                    String[] sourceArray1 = sourceArray[1].split("</script>");
                    sb2.append(s.getName());
                    sb.append(sourceArray[0]);
                    sb1.append(sourceArray1[0]);

                    list1.add(sb);
                    list2.add(sb1);
                    list.add(sb2);
                    list.add(list1);
                    list.add(list2);
                    return list;
                } else {
                    String source1 = s.getHtmlfrom();

                    String[] sourceArray2 = source1.split("<script>");
                    String[] sourceArray1 = sourceArray2[1].split("</script>");
                    sb2.append(s.getName());
                    String sAString = sourceArray2[0].replace("<tr","<tr class='drag-item'").replace("data-options=\"required:true\"","readonly='true'");
                    sb.append(sAString);

                    sb1.append(sourceArray1[0]);

                    list1.add(sb);
                    list2.add(sb1);
                    list.add(sb2);
                    list.add(list1);
                    list.add(list2);
                    return list;
                }

            }else {
                String source = s.getHtmlfrom();

                String[] sourceArray = source.split("<script>");
                String[] sourceArray1 = sourceArray[1].split("</script>");
                sb2.append(s.getName());
                String sAString = sourceArray[0].replace("class=\"drag-item droppable\"","").replace("readonly=\"true\"","data-options='required:true'");
                sb.append(sAString);

                sb1.append(sourceArray1[0]);

                list1.add(sb);
                list2.add(sb1);
                list.add(sb2);
                list.add(list1);
                list.add(list2);
                return list;
            }
        }


        sb2.append(s.getName());
        List<String> list3 = new ArrayList();
        list3.add(s.getAttra());
        list3.add(s.getAttrb());
        list3.add(s.getAttrc());
        list3.add(s.getAttrd());
        list3.add(s.getAttre());
        list3.add(s.getAttrf());
        list3.add(s.getAttrg());
        list3.add(s.getAttrh());
        list3.add(s.getAttri());
        list3.add(s.getAttrj());
        list3.add(s.getAttrk());
        list3.add(s.getAttrl());
        list3.add(s.getAttrm());
        list3.add(s.getAttrn());
        list3.add(s.getAttro());
        list3.add(s.getAttrp());
        list3.add(s.getAttrq());
        list3.add(s.getAttrr());
        list3.add(s.getAttrs());
        list3.add(s.getAttrt());
        list3.add(s.getAttru());
        list3.add(s.getAttrv());
        list3.add(s.getAttrw());
        list3.add(s.getAttrx());
        list3.add(s.getAttry());
        list3.add(s.getAttrz());
        sb = sb.append("<form id='ff' action='#' method='post'>" +
                "<table>");
        for (int i = 0; i < 26; i++) {
            Boolean outFlag = true;
            if (list3.get(i) != null) {
                outFlag = false;
                char c1 = (char) (i + 97);
                String idString = "attr" + c1;
                sysFlowFormattr.setId(list3.get(i));
                List<SysFlowFormattr> attr = sysFlowFormattrMapper.queryAll(sysFlowFormattr);
                for (SysFlowFormattr sf : attr
                ) {
                    String classString = "easyui-textbox";
                    if (sf.getTypes().equals("文本")) {
                        sf.setTypes("text");
                        classString = "easyui-textbox";
                    } else if (sf.getTypes().equals("下拉框")) {
                        sf.setTypes("select");
                        classString = "easyui-combotreegrid";
                    } else if (sf.getTypes().equals("按钮")) {
                        sf.setTypes("button");
                        classString = "easyui-textbox";
                    } else if (sf.getTypes().equals("日期")) {
                        sf.setTypes("data");
                        classString = "easyui-datebox";
                    } else if (sf.getTypes().equals("文件")) {
                        sf.setTypes("data");
                        classString = "easyui-filebox";
                    }
                    String dataOptions = "";
                    String readonly="";
                    if (formid.length != 1) {
                        sb = sb.append("<tr class='drag-item'>");
                        readonly="readonly='true'";
                    } else {
                        sb = sb.append("<tr>");
                        dataOptions = "data-options='required:true'";
                    }


                    sb = sb.append(
                            "<td>" + sf.getAlias() + ":</td>" +
                                    "    <td><input  " + readonly + " name='" + idString + "' class='" + classString + "' type='" + sf.getTypes() +  "'" +
                                    dataOptions +
                                    "/></td>" +
                                    "</tr>");
                }
            }
            if (outFlag) {
                break;
            }
        }
        sb = sb.append("</table>" +
                "</form>");

        sb1.append(
                "$(function () {" +
                        "    $('#box').form({" +
                        "      url : '#'," +
                        "      onSubmit: function(){" +
                        "      }," +
                        "      success:function(data){" +
                        "        alert(data);" +
                        "      }" +
                        "    });" +
                        "  });"
        );
        list1.add(sb);
        list2.add(sb1);
        list.add(sb2);
        list.add(list1);
        list.add(list2);

        return list;
    }

    @Override
    public List<SysFlowForm> queryAll(SysFlowForm sysFlowForm) {

        return sysFlowFormMapper.queryAll(sysFlowForm);
    }


    /**
     * 新增数据
     *
     * @param sysFlowForm 实例对象
     * @return 实例对象
     */
    @Override
    public int insert(SysFlowForm sysFlowForm) {
        sysFlowForm.setId(String.valueOf(idWorker.nextId()));
        return sysFlowFormMapper.insert(sysFlowForm);
    }

    /**
     * 修改数据
     *
     * @param sysFlowForm 实例对象
     * @return 实例对象
     */
    @Override
    public int update(SysFlowForm sysFlowForm) {
        System.out.println(sysFlowForm);
        return sysFlowFormMapper.update(sysFlowForm);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public int deleteById(String[] id) {
        return sysFlowFormMapper.deleteById(id);
    }
}