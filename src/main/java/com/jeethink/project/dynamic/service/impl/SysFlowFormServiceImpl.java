package com.jeethink.project.dynamic.service.impl;

import com.alibaba.fastjson.JSON;
import com.jeethink.common.utils.IdWorker;
import com.jeethink.project.dynamic.domain.FormType;
import com.jeethink.project.dynamic.domain.SysFlowForm;
import com.jeethink.project.dynamic.domain.SysFlowFormattr;
import com.jeethink.project.dynamic.mapper.SysFlowFormMapper;
import com.jeethink.project.dynamic.mapper.SysFlowFormattrMapper;
import com.jeethink.project.dynamic.service.SysFlowFormService;
import lombok.val;
import netscape.javascript.JSObject;
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

//        "typeid": "200",
//        "typename": "政策相关",
//        "remark": "政策相关de"


    //        "formname": "请假条",
//        "formid": "1384419407308132352",

//    [{
//                name:"",
//                remark:":",
//                list:[{name:"倾教条"，id：""},{}]
//    }]
    @Override
    public List queryById(FormType formType) {
        List list = new ArrayList();
        List list1 = new ArrayList();
        List list2 = new ArrayList();
        Map<String,Object>  map=new HashMap<>();
        List<FormType> formTypes = sysFlowFormMapper.queryById(null);
        Set<Object> set=new HashSet<>();
        for (FormType type : formTypes) {

            String typename = type.getTypename();
            String remark = type.getRemark();
            FormType formType1=new FormType();
            formType1.setTypename(typename);
            formType1.setRemark(remark);
            List<FormType> formTypess = sysFlowFormMapper.queryById(formType1);
            set.add(formTypess);

        }
        System.out.println(set);
        String s = formTypes.toString();
        System.out.println(s);
/*        String s = formTypes.toString();

        Map map = new HashMap();
        Map map1 = new HashMap();
        Map map2 = new HashMap();
        Map map3 = new HashMap();
        for (FormType f : formTypes
        ) {
//            if (map.get(f.getTypename() + "," + f.getRemark()) != null) {
//                map.put(f.getTypename() + "," + f.getRemark(), map.get(f.getTypename() + "," + f.getRemark()) + "," + f.getFormname() + "," + f.getFormid());
//            } else {
//                map.put(f.getTypename() + "," + f.getRemark(), f.getFormname() + "," + f.getFormid());
//            }
//            System.out.println(map.toString());




            if (map3.get(f.getTypename()) != null) {
                map1.put("typeName",f.getTypename());
                map1.put("remark",f.getRemark());
                map2.put("formName", f.getFormname());
                map2.put("formId", f.getFormid());
                list1.add(map2);

                map1.put("list", list1);

            } else {
                map2.put("formName", f.getFormname());
                map2.put("formId", f.getFormid());
                list1.add(map2);
            }


            map3.put(f.getTypename(),1);
            list2.add(map1.toString());
            list.add(list2);




//            list.add(map3);
        }

//        list.add(map);*/
        return list;
    }

    @Override
    public List queryHtml(SysFlowForm sysFlowForm, SysFlowFormattr sysFlowFormattr) {
        List list = new ArrayList();
        List list1 = new ArrayList();
        List list2 = new ArrayList();
        StringBuilder sb = new StringBuilder();
        StringBuilder sb1 = new StringBuilder();
        String forf = "sex";
        String alise = "性别";
        String type = "text";
//      String sysFlowFormattrs= sysFlowFormattrMapper.queryAll(sysFlowFormattr).toString();
//        String sysFlowForms= sysFlowFormMapper.queryAll(sysFlowForm).toString();
        sysFlowForm.setId("1384419407308132352");
        List<SysFlowFormattr> attr = sysFlowFormattrMapper.queryAll(sysFlowFormattr);
        List<SysFlowForm> forms = sysFlowFormMapper.queryAll(sysFlowForm);
        for (SysFlowForm s : forms
        ) {
            if (s.getHtmlfrom() != null) {
                for (SysFlowFormattr sf:attr
                ) {

        sb = sb.append("<div>" +
                "    <label for='" + forf + "'>" + alise + ":</label>" +
                "    <input class='easyui-validatebox' type='" + type + "' name='" + forf + "'" +
                "        data-options='required:true' />" +
                "  </div>");
                }
            }
        }
//        sb = sb.append(attr.toString()+forms.toString());

//        sb = sb.append("<form id='box' method='post'>");
//        sb = sb.append("<div>" +
//                "    <label for='"+forf+"'>"+alise+":</label>" +
//                "    <input class='easyui-validatebox' type='"+type+"' name='"+forf+"'" +
//                "        data-options='required:true' />" +
//                "  </div>");
//
//
//        sb = sb.append("<div>" +
//                "    <label for='name'>Name:</label>" +
//                "    <input class='easyui-validatebox' type='text' name='name'" +
//                "        data-options='required:true' />" +
//                "  </div>");
//        sb = sb.append("<div>" +
//                "    <label for='email'>Email:</label>" +
//                "    <input class='easyui-validatebox' type='text' name='email'" +
//                "        data-options='validType:'email'' />" +
//                "  </div>");
//        sb = sb.append("<input type='submit'>" +
//                "</form>");
//        sb1.append(
//                "$(function () {" +
//                        "    $('#box').form({" +
//                        "      url : '#'," +
//                        "      onSubmit: function(){" +
//                        "      }," +
//                        "      success:function(data){" +
//                        "        alert(data);" +
//                        "      }" +
//                        "    });" +
//                        "  });"
//        );
        list1.add(sb);
//        }
        list2.add(sb1);
        list.add(list1);
        list.add(list2);

        return list;
    }

    @Override
    public List<SysFlowForm> queryAll(SysFlowForm sysFlowForm) {

        return sysFlowFormMapper.queryAll(sysFlowForm);
    }


//    @Override
//    public Map queryAllByLimit(SysFlowForm sysFlowForm) {
//        List<String> list = new ArrayList<>();
//        Map map = new HashMap();
//        List<SysFlowForm> types = sysFlowFormMapper.queryAll(sysFlowForm);
//        for (SysFlowForm typess : types
//        ) {
//            String sign = typess.getName();
////            if () {
////                list.add(sign);
////            }
//
//            map.put(typess.getTyp(), list);
//
////                list.add(typess.getTyp());
////                sign= typess.getTyp();
//        }
//
//        return map;
//    }

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