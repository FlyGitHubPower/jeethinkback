/*
 Navicat Premium Data Transfer

 Source Server         : PostgreSQL
 Source Server Type    : PostgreSQL
 Source Server Version : 120005
 Source Host           : localhost:5432
 Source Catalog        : jeethink
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 120005
 File Encoding         : 65001

 Date: 07/01/2021 14:29:38
*/


-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table";
CREATE TABLE "public"."gen_table" (
  "table_id" int8 NOT NULL,
  "table_name" varchar(200) COLLATE "pg_catalog"."default",
  "table_comment" varchar(500) COLLATE "pg_catalog"."default",
  "class_name" varchar(100) COLLATE "pg_catalog"."default",
  "tpl_category" varchar(200) COLLATE "pg_catalog"."default",
  "package_name" varchar(100) COLLATE "pg_catalog"."default",
  "module_name" varchar(30) COLLATE "pg_catalog"."default",
  "business_name" varchar(30) COLLATE "pg_catalog"."default",
  "function_name" varchar(50) COLLATE "pg_catalog"."default",
  "function_author" varchar(50) COLLATE "pg_catalog"."default",
  "options" varchar(1000) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."gen_table"."table_id" IS '编号';
COMMENT ON COLUMN "public"."gen_table"."table_name" IS '表名称';
COMMENT ON COLUMN "public"."gen_table"."table_comment" IS '表描述';
COMMENT ON COLUMN "public"."gen_table"."class_name" IS '实体类名称';
COMMENT ON COLUMN "public"."gen_table"."tpl_category" IS '使用的模板（crud单表操作 tree树表操作）';
COMMENT ON COLUMN "public"."gen_table"."package_name" IS '生成包路径';
COMMENT ON COLUMN "public"."gen_table"."module_name" IS '生成模块名';
COMMENT ON COLUMN "public"."gen_table"."business_name" IS '生成业务名';
COMMENT ON COLUMN "public"."gen_table"."function_name" IS '生成功能名';
COMMENT ON COLUMN "public"."gen_table"."function_author" IS '生成功能作者';
COMMENT ON COLUMN "public"."gen_table"."options" IS '其它生成选项';
COMMENT ON COLUMN "public"."gen_table"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."gen_table"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_table"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."gen_table"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."gen_table"."remark" IS '备注';
COMMENT ON TABLE "public"."gen_table" IS '代码生成业务表';

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table_column";
CREATE TABLE "public"."gen_table_column" (
  "column_id" int8 NOT NULL,
  "table_id" varchar(64) COLLATE "pg_catalog"."default",
  "column_name" varchar(200) COLLATE "pg_catalog"."default",
  "column_comment" varchar(500) COLLATE "pg_catalog"."default",
  "column_type" varchar(100) COLLATE "pg_catalog"."default",
  "java_type" varchar(500) COLLATE "pg_catalog"."default",
  "java_field" varchar(200) COLLATE "pg_catalog"."default",
  "is_pk" char(1) COLLATE "pg_catalog"."default",
  "is_increment" char(1) COLLATE "pg_catalog"."default",
  "is_required" char(1) COLLATE "pg_catalog"."default",
  "is_insert" char(1) COLLATE "pg_catalog"."default",
  "is_edit" char(1) COLLATE "pg_catalog"."default",
  "is_list" char(1) COLLATE "pg_catalog"."default",
  "is_query" char(1) COLLATE "pg_catalog"."default",
  "query_type" varchar(200) COLLATE "pg_catalog"."default",
  "html_type" varchar(200) COLLATE "pg_catalog"."default",
  "dict_type" varchar(200) COLLATE "pg_catalog"."default",
  "sort" int4,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."gen_table_column"."column_id" IS '编号';
COMMENT ON COLUMN "public"."gen_table_column"."table_id" IS '归属表编号';
COMMENT ON COLUMN "public"."gen_table_column"."column_name" IS '列名称';
COMMENT ON COLUMN "public"."gen_table_column"."column_comment" IS '列描述';
COMMENT ON COLUMN "public"."gen_table_column"."column_type" IS '列类型';
COMMENT ON COLUMN "public"."gen_table_column"."java_type" IS 'JAVA类型';
COMMENT ON COLUMN "public"."gen_table_column"."java_field" IS 'JAVA字段名';
COMMENT ON COLUMN "public"."gen_table_column"."is_pk" IS '是否主键（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_increment" IS '是否自增（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_required" IS '是否必填（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_insert" IS '是否为插入字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_edit" IS '是否编辑字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_list" IS '是否列表字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_query" IS '是否查询字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."query_type" IS '查询方式（等于、不等于、大于、小于、范围）';
COMMENT ON COLUMN "public"."gen_table_column"."html_type" IS '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）';
COMMENT ON COLUMN "public"."gen_table_column"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."gen_table_column"."sort" IS '排序';
COMMENT ON COLUMN "public"."gen_table_column"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."gen_table_column"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_table_column"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."gen_table_column"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."gen_table_column" IS '代码生成业务表字段';

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_config";
CREATE TABLE "public"."sys_config" (
  "config_id" int4 NOT NULL,
  "config_name" varchar(100) COLLATE "pg_catalog"."default",
  "config_key" varchar(100) COLLATE "pg_catalog"."default",
  "config_value" varchar(500) COLLATE "pg_catalog"."default",
  "config_type" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_config"."config_id" IS '参数主键';
COMMENT ON COLUMN "public"."sys_config"."config_name" IS '参数名称';
COMMENT ON COLUMN "public"."sys_config"."config_key" IS '参数键名';
COMMENT ON COLUMN "public"."sys_config"."config_value" IS '参数键值';
COMMENT ON COLUMN "public"."sys_config"."config_type" IS '系统内置（Y是 N否）';
COMMENT ON COLUMN "public"."sys_config"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_config"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_config"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_config"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_config" IS '参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO "public"."sys_config" VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO "public"."sys_config" VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO "public"."sys_config" VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dept";
CREATE TABLE "public"."sys_dept" (
  "dept_id" int8 NOT NULL,
  "parent_id" int8 DEFAULT 0,
  "ancestors" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dept_name" varchar(30) COLLATE "pg_catalog"."default",
  "order_num" varchar(100) COLLATE "pg_catalog"."default",
  "leader" varchar(20) COLLATE "pg_catalog"."default",
  "phone" varchar(11) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_dept"."dept_id" IS '部门id';
COMMENT ON COLUMN "public"."sys_dept"."parent_id" IS '父部门id';
COMMENT ON COLUMN "public"."sys_dept"."ancestors" IS '祖级列表';
COMMENT ON COLUMN "public"."sys_dept"."dept_name" IS '部门名称';
COMMENT ON COLUMN "public"."sys_dept"."order_num" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_dept"."leader" IS '负责人';
COMMENT ON COLUMN "public"."sys_dept"."phone" IS '联系电话';
COMMENT ON COLUMN "public"."sys_dept"."email" IS '邮箱';
COMMENT ON COLUMN "public"."sys_dept"."status" IS '部门状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_dept"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."sys_dept"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dept"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dept"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dept"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."sys_dept" IS '部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO "public"."sys_dept" VALUES (101, 100, '0,100', '深圳总公司', '1', '吉想', '15888888888', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO "public"."sys_dept" VALUES (102, 100, '0,100', '长沙分公司', '2', '吉想', '15888888888', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO "public"."sys_dept" VALUES (103, 101, '0,100,101', '研发部门', '1', '吉想', '15888888888', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO "public"."sys_dept" VALUES (104, 101, '0,100,101', '市场部门', '2', '吉想', '15888888888', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO "public"."sys_dept" VALUES (105, 101, '0,100,101', '测试部门', '3', '吉想', '15888888888', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO "public"."sys_dept" VALUES (106, 101, '0,100,101', '财务部门', '4', '吉想', '15888888888', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO "public"."sys_dept" VALUES (107, 101, '0,100,101', '运维部门', '5', '吉想', '15888888888', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO "public"."sys_dept" VALUES (108, 102, '0,100,102', '市场部门', '1', '吉想', '15888888888', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO "public"."sys_dept" VALUES (109, 102, '0,100,102', '财务部门', '2', '吉想', '15888888888', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO "public"."sys_dept" VALUES (110, 100, '0,100', '123', '122', '122', NULL, NULL, '0', '0', 'admin', '2021-01-06 16:43:23.135', NULL, NULL);
INSERT INTO "public"."sys_dept" VALUES (111, 100, '0,100', '12', '1', '1', '15211111111', '1@qq.com', '0', '0', 'admin', '2021-01-06 16:45:37.519', 'admin', '2021-01-06 16:46:05.605');
INSERT INTO "public"."sys_dept" VALUES (100, 0, '0', '吉想科技', '0', '吉想', '15888888888', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_data";
CREATE TABLE "public"."sys_dict_data" (
  "dict_code" int8 NOT NULL,
  "dict_sort" int4,
  "dict_label" varchar(100) COLLATE "pg_catalog"."default",
  "dict_value" varchar(100) COLLATE "pg_catalog"."default",
  "dict_type" varchar(100) COLLATE "pg_catalog"."default",
  "css_class" varchar(100) COLLATE "pg_catalog"."default",
  "list_class" varchar(100) COLLATE "pg_catalog"."default",
  "is_default" char(1) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_dict_data"."dict_code" IS '字典编码';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_sort" IS '字典排序';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_label" IS '字典标签';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_value" IS '字典键值';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."sys_dict_data"."css_class" IS '样式属性（其他样式扩展）';
COMMENT ON COLUMN "public"."sys_dict_data"."list_class" IS '表格回显样式';
COMMENT ON COLUMN "public"."sys_dict_data"."is_default" IS '是否默认（Y是 N否）';
COMMENT ON COLUMN "public"."sys_dict_data"."status" IS '状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_dict_data"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dict_data"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict_data"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dict_data"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_dict_data"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_dict_data" IS '字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO "public"."sys_dict_data" VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '性别男');
INSERT INTO "public"."sys_dict_data" VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '性别女');
INSERT INTO "public"."sys_dict_data" VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '性别未知');
INSERT INTO "public"."sys_dict_data" VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO "public"."sys_dict_data" VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO "public"."sys_dict_data" VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '停用状态');
INSERT INTO "public"."sys_dict_data" VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '停用状态');
INSERT INTO "public"."sys_dict_data" VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '默认分组');
INSERT INTO "public"."sys_dict_data" VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统分组');
INSERT INTO "public"."sys_dict_data" VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO "public"."sys_dict_data" VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO "public"."sys_dict_data" VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '通知');
INSERT INTO "public"."sys_dict_data" VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '公告');
INSERT INTO "public"."sys_dict_data" VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO "public"."sys_dict_data" VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '新增操作');
INSERT INTO "public"."sys_dict_data" VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '修改操作');
INSERT INTO "public"."sys_dict_data" VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '删除操作');
INSERT INTO "public"."sys_dict_data" VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '授权操作');
INSERT INTO "public"."sys_dict_data" VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '导出操作');
INSERT INTO "public"."sys_dict_data" VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '导入操作');
INSERT INTO "public"."sys_dict_data" VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '强退操作');
INSERT INTO "public"."sys_dict_data" VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '生成操作');
INSERT INTO "public"."sys_dict_data" VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '清空操作');
INSERT INTO "public"."sys_dict_data" VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_type";
CREATE TABLE "public"."sys_dict_type" (
  "dict_id" int8 NOT NULL,
  "dict_name" varchar(100) COLLATE "pg_catalog"."default",
  "dict_type" varchar(100) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_dict_type"."dict_id" IS '字典主键';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_name" IS '字典名称';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."sys_dict_type"."status" IS '状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_dict_type"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dict_type"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict_type"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dict_type"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_dict_type"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_dict_type" IS '字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO "public"."sys_dict_type" VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO "public"."sys_dict_type" VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO "public"."sys_dict_type" VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO "public"."sys_dict_type" VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO "public"."sys_dict_type" VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO "public"."sys_dict_type" VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO "public"."sys_dict_type" VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (11, '123', '12', '0', 'admin', '2021-01-06 16:55:24.124', NULL, NULL, '1');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_job";
CREATE TABLE "public"."sys_job" (
  "job_id" int8 NOT NULL,
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(255) COLLATE "pg_catalog"."default",
  "misfire_policy" varchar(20) COLLATE "pg_catalog"."default",
  "concurrent" char(1) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_job"."job_id" IS '任务ID';
COMMENT ON COLUMN "public"."sys_job"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."sys_job"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."sys_job"."invoke_target" IS '调用目标字符串';
COMMENT ON COLUMN "public"."sys_job"."cron_expression" IS 'cron执行表达式';
COMMENT ON COLUMN "public"."sys_job"."misfire_policy" IS '计划执行错误策略（1立即执行 2执行一次 3放弃执行）';
COMMENT ON COLUMN "public"."sys_job"."concurrent" IS '是否并发执行（0允许 1禁止）';
COMMENT ON COLUMN "public"."sys_job"."status" IS '状态（0正常 1暂停）';
COMMENT ON COLUMN "public"."sys_job"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_job"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_job"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_job"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_job"."remark" IS '备注信息';
COMMENT ON TABLE "public"."sys_job" IS '定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO "public"."sys_job" VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_job" VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(''ry'')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_job" VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_job_log";
CREATE TABLE "public"."sys_job_log" (
  "job_log_id" int8 NOT NULL,
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "job_message" varchar(500) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "exception_info" varchar(2000) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_job_log"."job_log_id" IS '任务日志ID';
COMMENT ON COLUMN "public"."sys_job_log"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."sys_job_log"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."sys_job_log"."invoke_target" IS '调用目标字符串';
COMMENT ON COLUMN "public"."sys_job_log"."job_message" IS '日志信息';
COMMENT ON COLUMN "public"."sys_job_log"."status" IS '执行状态（0正常 1失败）';
COMMENT ON COLUMN "public"."sys_job_log"."exception_info" IS '异常信息';
COMMENT ON COLUMN "public"."sys_job_log"."create_time" IS '创建时间';
COMMENT ON TABLE "public"."sys_job_log" IS '定时任务调度日志表';

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_logininfor";
CREATE TABLE "public"."sys_logininfor" (
  "info_id" int8 NOT NULL,
  "user_name" varchar(50) COLLATE "pg_catalog"."default",
  "ipaddr" varchar(50) COLLATE "pg_catalog"."default",
  "login_location" varchar(255) COLLATE "pg_catalog"."default",
  "browser" varchar(50) COLLATE "pg_catalog"."default",
  "os" varchar(50) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "msg" varchar(255) COLLATE "pg_catalog"."default",
  "login_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_logininfor"."info_id" IS '访问ID';
COMMENT ON COLUMN "public"."sys_logininfor"."user_name" IS '用户账号';
COMMENT ON COLUMN "public"."sys_logininfor"."ipaddr" IS '登录IP地址';
COMMENT ON COLUMN "public"."sys_logininfor"."login_location" IS '登录地点';
COMMENT ON COLUMN "public"."sys_logininfor"."browser" IS '浏览器类型';
COMMENT ON COLUMN "public"."sys_logininfor"."os" IS '操作系统';
COMMENT ON COLUMN "public"."sys_logininfor"."status" IS '登录状态（0成功 1失败）';
COMMENT ON COLUMN "public"."sys_logininfor"."msg" IS '提示消息';
COMMENT ON COLUMN "public"."sys_logininfor"."login_time" IS '访问时间';
COMMENT ON TABLE "public"."sys_logininfor" IS '系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO "public"."sys_logininfor" VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-08 20:43:10');
INSERT INTO "public"."sys_logininfor" VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-06 15:37:52.176');
INSERT INTO "public"."sys_logininfor" VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-06 17:05:35.905');
INSERT INTO "public"."sys_logininfor" VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-07 09:07:30.151');
INSERT INTO "public"."sys_logininfor" VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-07 09:12:59.503');
INSERT INTO "public"."sys_logininfor" VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-07 09:58:23.377');
INSERT INTO "public"."sys_logininfor" VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-07 13:58:02.592');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_menu";
CREATE TABLE "public"."sys_menu" (
  "menu_id" int8 NOT NULL,
  "menu_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" int8 DEFAULT 0,
  "order_num" varchar(100) COLLATE "pg_catalog"."default",
  "path" varchar(200) COLLATE "pg_catalog"."default",
  "component" varchar(255) COLLATE "pg_catalog"."default",
  "is_frame" varchar(100) COLLATE "pg_catalog"."default",
  "menu_type" char(1) COLLATE "pg_catalog"."default",
  "visible" char(1) COLLATE "pg_catalog"."default",
  "perms" varchar(100) COLLATE "pg_catalog"."default",
  "icon" varchar(100) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" varchar(100) COLLATE "pg_catalog"."default",
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_menu"."menu_id" IS '菜单ID';
COMMENT ON COLUMN "public"."sys_menu"."menu_name" IS '菜单名称';
COMMENT ON COLUMN "public"."sys_menu"."parent_id" IS '父菜单ID';
COMMENT ON COLUMN "public"."sys_menu"."order_num" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_menu"."path" IS '路由地址';
COMMENT ON COLUMN "public"."sys_menu"."component" IS '组件路径';
COMMENT ON COLUMN "public"."sys_menu"."is_frame" IS '是否为外链（0是 1否）';
COMMENT ON COLUMN "public"."sys_menu"."menu_type" IS '菜单类型（M目录 C菜单 F按钮）';
COMMENT ON COLUMN "public"."sys_menu"."visible" IS '菜单状态（0显示 1隐藏）';
COMMENT ON COLUMN "public"."sys_menu"."perms" IS '权限标识';
COMMENT ON COLUMN "public"."sys_menu"."icon" IS '菜单图标';
COMMENT ON COLUMN "public"."sys_menu"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_menu"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_menu"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_menu"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_menu"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_menu" IS '菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO "public"."sys_menu" VALUES (1, '系统管理', 0, '1', 'system', NULL, '1', 'M', '0', '', 'system', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO "public"."sys_menu" VALUES (2, '系统监控', 0, '2', 'monitor', NULL, '1', 'M', '0', '', 'monitor', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO "public"."sys_menu" VALUES (3, '系统工具', 0, '3', 'tool', NULL, '1', 'M', '0', '', 'tool', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO "public"."sys_menu" VALUES (4, '吉想官网', 0, '4', 'http://jeethink.vip', NULL, '0', 'M', '0', '', 'guide', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '吉想官网地址');
INSERT INTO "public"."sys_menu" VALUES (100, '用户管理', 1, '1', 'user', 'system/user/index', '1', 'C', '0', 'system:user:list', 'user', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO "public"."sys_menu" VALUES (101, '角色管理', 1, '2', 'role', 'system/role/index', '1', 'C', '0', 'system:role:list', 'peoples', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO "public"."sys_menu" VALUES (102, '菜单管理', 1, '3', 'menu', 'system/menu/index', '1', 'C', '0', 'system:menu:list', 'tree-table', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO "public"."sys_menu" VALUES (103, '部门管理', 1, '4', 'dept', 'system/dept/index', '1', 'C', '0', 'system:dept:list', 'tree', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO "public"."sys_menu" VALUES (104, '岗位管理', 1, '5', 'post', 'system/post/index', '1', 'C', '0', 'system:post:list', 'post', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO "public"."sys_menu" VALUES (105, '字典管理', 1, '6', 'dict', 'system/dict/index', '1', 'C', '0', 'system:dict:list', 'dict', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO "public"."sys_menu" VALUES (106, '参数设置', 1, '7', 'config', 'system/config/index', '1', 'C', '0', 'system:config:list', 'edit', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO "public"."sys_menu" VALUES (107, '通知公告', 1, '8', 'notice', 'system/notice/index', '1', 'C', '0', 'system:notice:list', 'message', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO "public"."sys_menu" VALUES (108, '日志管理', 1, '9', 'log', 'system/log/index', '1', 'M', '0', '', 'log', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO "public"."sys_menu" VALUES (109, '在线用户', 2, '1', 'online', 'monitor/online/index', '1', 'C', '0', 'monitor:online:list', 'online', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO "public"."sys_menu" VALUES (111, '数据监控', 2, '3', 'druid', 'monitor/druid/index', '1', 'C', '0', 'monitor:druid:list', 'druid', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO "public"."sys_menu" VALUES (112, '服务监控', 2, '4', 'server', 'monitor/server/index', '1', 'C', '0', 'monitor:server:list', 'server', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO "public"."sys_menu" VALUES (113, '表单构建', 3, '1', 'build', 'tool/build/index', '1', 'C', '0', 'tool:build:list', 'build', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO "public"."sys_menu" VALUES (114, '代码生成', 3, '2', 'gen', 'tool/gen/index', '1', 'C', '0', 'tool:gen:list', 'code', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO "public"."sys_menu" VALUES (115, '系统接口', 3, '3', 'swagger', 'tool/swagger/index', '1', 'C', '0', 'tool:swagger:list', 'swagger', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO "public"."sys_menu" VALUES (500, '操作日志', 108, '1', 'operlog', 'monitor/operlog/index', '1', 'C', '0', 'monitor:operlog:list', 'form', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO "public"."sys_menu" VALUES (501, '登录日志', 108, '2', 'logininfor', 'monitor/logininfor/index', '1', 'C', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO "public"."sys_menu" VALUES (1001, '用户查询', 100, '1', '', '', '1', 'F', '0', 'system:user:query', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1002, '用户新增', 100, '2', '', '', '1', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1003, '用户修改', 100, '3', '', '', '1', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1004, '用户删除', 100, '4', '', '', '1', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1005, '用户导出', 100, '5', '', '', '1', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1006, '用户导入', 100, '6', '', '', '1', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1007, '重置密码', 100, '7', '', '', '1', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1008, '角色查询', 101, '1', '', '', '1', 'F', '0', 'system:role:query', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1009, '角色新增', 101, '2', '', '', '1', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1010, '角色修改', 101, '3', '', '', '1', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1011, '角色删除', 101, '4', '', '', '1', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1012, '角色导出', 101, '5', '', '', '1', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1013, '菜单查询', 102, '1', '', '', '1', 'F', '0', 'system:menu:query', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1014, '菜单新增', 102, '2', '', '', '1', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1015, '菜单修改', 102, '3', '', '', '1', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1016, '菜单删除', 102, '4', '', '', '1', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1017, '部门查询', 103, '1', '', '', '1', 'F', '0', 'system:dept:query', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1018, '部门新增', 103, '2', '', '', '1', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1019, '部门修改', 103, '3', '', '', '1', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1020, '部门删除', 103, '4', '', '', '1', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1021, '岗位查询', 104, '1', '', '', '1', 'F', '0', 'system:post:query', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1022, '岗位新增', 104, '2', '', '', '1', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1023, '岗位修改', 104, '3', '', '', '1', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1024, '岗位删除', 104, '4', '', '', '1', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1025, '岗位导出', 104, '5', '', '', '1', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1026, '字典查询', 105, '1', '#', '', '1', 'F', '0', 'system:dict:query', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1027, '字典新增', 105, '2', '#', '', '1', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1028, '字典修改', 105, '3', '#', '', '1', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1029, '字典删除', 105, '4', '#', '', '1', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1030, '字典导出', 105, '5', '#', '', '1', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1031, '参数查询', 106, '1', '#', '', '1', 'F', '0', 'system:config:query', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1032, '参数新增', 106, '2', '#', '', '1', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1033, '参数修改', 106, '3', '#', '', '1', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1034, '参数删除', 106, '4', '#', '', '1', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1035, '参数导出', 106, '5', '#', '', '1', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1036, '公告查询', 107, '1', '#', '', '1', 'F', '0', 'system:notice:query', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1037, '公告新增', 107, '2', '#', '', '1', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1038, '公告修改', 107, '3', '#', '', '1', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1039, '公告删除', 107, '4', '#', '', '1', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1040, '操作查询', 500, '1', '#', '', '1', 'F', '0', 'monitor:operlog:query', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1041, '操作删除', 500, '2', '#', '', '1', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1042, '日志导出', 500, '4', '#', '', '1', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1043, '登录查询', 501, '1', '#', '', '1', 'F', '0', 'monitor:logininfor:query', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1044, '登录删除', 501, '2', '#', '', '1', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1045, '日志导出', 501, '3', '#', '', '1', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1046, '在线查询', 109, '1', '#', '', '1', 'F', '0', 'monitor:online:query', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1047, '批量强退', 109, '2', '#', '', '1', 'F', '0', 'monitor:online:batchLogout', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1048, '单条强退', 109, '3', '#', '', '1', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1049, '任务查询', 110, '1', '#', '', '1', 'F', '0', 'monitor:job:query', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1050, '任务新增', 110, '2', '#', '', '1', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1051, '任务修改', 110, '3', '#', '', '1', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1052, '任务删除', 110, '4', '#', '', '1', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1053, '状态修改', 110, '5', '#', '', '1', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1054, '任务导出', 110, '7', '#', '', '1', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1055, '生成查询', 114, '1', '#', '', '1', 'F', '0', 'tool:gen:query', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1056, '生成修改', 114, '2', '#', '', '1', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1057, '生成删除', 114, '3', '#', '', '1', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1058, '导入代码', 114, '2', '#', '', '1', 'F', '0', 'tool:gen:import', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1059, '预览代码', 114, '4', '#', '', '1', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_menu" VALUES (1060, '生成代码', 114, '5', '#', '', '1', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_notice";
CREATE TABLE "public"."sys_notice" (
  "notice_id" int4 NOT NULL,
  "notice_title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "notice_type" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "notice_content" varchar(2000) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_notice"."notice_id" IS '公告ID';
COMMENT ON COLUMN "public"."sys_notice"."notice_title" IS '公告标题';
COMMENT ON COLUMN "public"."sys_notice"."notice_type" IS '公告类型（1通知 2公告）';
COMMENT ON COLUMN "public"."sys_notice"."notice_content" IS '公告内容';
COMMENT ON COLUMN "public"."sys_notice"."status" IS '公告状态（0正常 1关闭）';
COMMENT ON COLUMN "public"."sys_notice"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_notice"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_notice"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_notice"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_notice"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_notice" IS '通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO "public"."sys_notice" VALUES (1, '温馨提醒：2018-07-01 吉想新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '管理员');
INSERT INTO "public"."sys_notice" VALUES (2, '维护通知：2018-07-01 吉想系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_oper_log";
CREATE TABLE "public"."sys_oper_log" (
  "oper_id" int8 NOT NULL,
  "title" varchar(50) COLLATE "pg_catalog"."default",
  "business_type" int4,
  "method" varchar(100) COLLATE "pg_catalog"."default",
  "request_method" varchar(10) COLLATE "pg_catalog"."default",
  "operator_type" int4,
  "oper_name" varchar(50) COLLATE "pg_catalog"."default",
  "dept_name" varchar(50) COLLATE "pg_catalog"."default",
  "oper_url" varchar(255) COLLATE "pg_catalog"."default",
  "oper_ip" varchar(50) COLLATE "pg_catalog"."default",
  "oper_location" varchar(255) COLLATE "pg_catalog"."default",
  "oper_param" varchar(2000) COLLATE "pg_catalog"."default",
  "json_result" varchar(2000) COLLATE "pg_catalog"."default",
  "status" int4,
  "error_msg" varchar(2000) COLLATE "pg_catalog"."default",
  "oper_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."sys_oper_log"."oper_id" IS '日志主键';
COMMENT ON COLUMN "public"."sys_oper_log"."title" IS '模块标题';
COMMENT ON COLUMN "public"."sys_oper_log"."business_type" IS '业务类型（0其它 1新增 2修改 3删除）';
COMMENT ON COLUMN "public"."sys_oper_log"."method" IS '方法名称';
COMMENT ON COLUMN "public"."sys_oper_log"."request_method" IS '请求方式';
COMMENT ON COLUMN "public"."sys_oper_log"."operator_type" IS '操作类别（0其它 1后台用户 2手机端用户）';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_name" IS '操作人员';
COMMENT ON COLUMN "public"."sys_oper_log"."dept_name" IS '部门名称';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_url" IS '请求URL';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_ip" IS '主机地址';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_location" IS '操作地点';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_param" IS '请求参数';
COMMENT ON COLUMN "public"."sys_oper_log"."json_result" IS '返回参数';
COMMENT ON COLUMN "public"."sys_oper_log"."status" IS '操作状态（0正常 1异常）';
COMMENT ON COLUMN "public"."sys_oper_log"."error_msg" IS '错误消息';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_time" IS '操作时间';
COMMENT ON TABLE "public"."sys_oper_log" IS '操作日志记录';

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_post";
CREATE TABLE "public"."sys_post" (
  "post_id" int8 NOT NULL,
  "post_code" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "post_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "post_sort" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_post"."post_id" IS '岗位ID';
COMMENT ON COLUMN "public"."sys_post"."post_code" IS '岗位编码';
COMMENT ON COLUMN "public"."sys_post"."post_name" IS '岗位名称';
COMMENT ON COLUMN "public"."sys_post"."post_sort" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_post"."status" IS '状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_post"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_post"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_post"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_post"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_post"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_post" IS '岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO "public"."sys_post" VALUES (1, 'ceo', '董事长', '1', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_post" VALUES (2, 'se', '项目经理', '2', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_post" VALUES (3, 'hr', '人力资源', '3', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_post" VALUES (4, 'user', '普通员工', '4', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO "public"."sys_post" VALUES (5, '1', '123', '0', '0', 'admin', '2021-01-06 16:54:24.385', NULL, NULL, '12');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role";
CREATE TABLE "public"."sys_role" (
  "role_id" int8 NOT NULL,
  "role_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "role_key" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "role_sort" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "data_scope" char(1) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 0,
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_role"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_role"."role_name" IS '角色名称';
COMMENT ON COLUMN "public"."sys_role"."role_key" IS '角色权限字符串';
COMMENT ON COLUMN "public"."sys_role"."role_sort" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_role"."data_scope" IS '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）';
COMMENT ON COLUMN "public"."sys_role"."status" IS '角色状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_role"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."sys_role"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_role"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_role"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_role"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_role" IS '角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO "public"."sys_role" VALUES (1, '管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '管理员');
INSERT INTO "public"."sys_role" VALUES (2, '普通角色', 'common', '2', '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '普通角色');
INSERT INTO "public"."sys_role" VALUES (3, '123', '1', '7', NULL, '0', NULL, 'admin', '2021-01-06 15:18:42.954', NULL, NULL, NULL);
INSERT INTO "public"."sys_role" VALUES (4, '1239', '1299', '123', '1', '0', '2', 'admin', '2021-01-06 15:19:41.268', 'admin', '2021-01-06 15:20:01.011', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_dept";
CREATE TABLE "public"."sys_role_dept" (
  "role_id" int8 NOT NULL,
  "dept_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_role_dept"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_role_dept"."dept_id" IS '部门ID';
COMMENT ON TABLE "public"."sys_role_dept" IS '角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO "public"."sys_role_dept" VALUES (2, 100);
INSERT INTO "public"."sys_role_dept" VALUES (2, 101);
INSERT INTO "public"."sys_role_dept" VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_menu";
CREATE TABLE "public"."sys_role_menu" (
  "role_id" int8 NOT NULL,
  "menu_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_role_menu"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_role_menu"."menu_id" IS '菜单ID';
COMMENT ON TABLE "public"."sys_role_menu" IS '角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO "public"."sys_role_menu" VALUES (2, 1);
INSERT INTO "public"."sys_role_menu" VALUES (2, 2);
INSERT INTO "public"."sys_role_menu" VALUES (2, 3);
INSERT INTO "public"."sys_role_menu" VALUES (2, 4);
INSERT INTO "public"."sys_role_menu" VALUES (2, 100);
INSERT INTO "public"."sys_role_menu" VALUES (2, 101);
INSERT INTO "public"."sys_role_menu" VALUES (2, 102);
INSERT INTO "public"."sys_role_menu" VALUES (2, 103);
INSERT INTO "public"."sys_role_menu" VALUES (2, 104);
INSERT INTO "public"."sys_role_menu" VALUES (2, 105);
INSERT INTO "public"."sys_role_menu" VALUES (2, 106);
INSERT INTO "public"."sys_role_menu" VALUES (2, 107);
INSERT INTO "public"."sys_role_menu" VALUES (2, 108);
INSERT INTO "public"."sys_role_menu" VALUES (2, 109);
INSERT INTO "public"."sys_role_menu" VALUES (2, 110);
INSERT INTO "public"."sys_role_menu" VALUES (2, 111);
INSERT INTO "public"."sys_role_menu" VALUES (2, 112);
INSERT INTO "public"."sys_role_menu" VALUES (2, 113);
INSERT INTO "public"."sys_role_menu" VALUES (2, 114);
INSERT INTO "public"."sys_role_menu" VALUES (2, 115);
INSERT INTO "public"."sys_role_menu" VALUES (2, 500);
INSERT INTO "public"."sys_role_menu" VALUES (2, 501);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1000);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1001);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1002);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1003);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1004);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1005);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1006);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1007);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1008);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1009);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1010);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1011);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1012);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1013);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1014);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1015);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1016);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1017);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1018);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1019);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1020);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1021);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1022);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1023);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1024);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1025);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1026);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1027);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1028);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1029);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1030);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1031);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1032);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1033);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1034);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1035);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1036);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1037);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1038);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1039);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1040);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1041);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1042);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1043);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1044);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1045);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1046);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1047);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1048);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1049);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1050);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1051);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1052);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1053);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1054);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1055);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1056);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1057);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1058);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1059);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1060);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1);
INSERT INTO "public"."sys_role_menu" VALUES (3, 100);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1001);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1002);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1003);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1004);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1005);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1006);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1007);
INSERT INTO "public"."sys_role_menu" VALUES (3, 101);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1008);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1009);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1010);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1011);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1012);
INSERT INTO "public"."sys_role_menu" VALUES (3, 102);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1013);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1014);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1015);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1016);
INSERT INTO "public"."sys_role_menu" VALUES (3, 103);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1017);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1018);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1019);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1020);
INSERT INTO "public"."sys_role_menu" VALUES (3, 104);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1021);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1022);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1023);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1024);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1025);
INSERT INTO "public"."sys_role_menu" VALUES (3, 105);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1026);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1027);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1028);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1029);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1030);
INSERT INTO "public"."sys_role_menu" VALUES (3, 106);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1031);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1032);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1033);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1034);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1035);
INSERT INTO "public"."sys_role_menu" VALUES (3, 107);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1036);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1037);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1038);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1039);
INSERT INTO "public"."sys_role_menu" VALUES (3, 108);
INSERT INTO "public"."sys_role_menu" VALUES (3, 500);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1040);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1041);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1042);
INSERT INTO "public"."sys_role_menu" VALUES (3, 501);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1043);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1044);
INSERT INTO "public"."sys_role_menu" VALUES (3, 1045);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1);
INSERT INTO "public"."sys_role_menu" VALUES (4, 100);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1001);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1002);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1003);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1004);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1005);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1006);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1007);
INSERT INTO "public"."sys_role_menu" VALUES (4, 101);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1008);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1009);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1010);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1011);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1012);
INSERT INTO "public"."sys_role_menu" VALUES (4, 102);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1013);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1014);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1015);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1016);
INSERT INTO "public"."sys_role_menu" VALUES (4, 103);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1017);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1018);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1019);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1020);
INSERT INTO "public"."sys_role_menu" VALUES (4, 104);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1021);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1022);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1023);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1024);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1025);
INSERT INTO "public"."sys_role_menu" VALUES (4, 105);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1026);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1027);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1028);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1029);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1030);
INSERT INTO "public"."sys_role_menu" VALUES (4, 106);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1031);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1032);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1033);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1034);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1035);
INSERT INTO "public"."sys_role_menu" VALUES (4, 107);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1036);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1037);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1038);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1039);
INSERT INTO "public"."sys_role_menu" VALUES (4, 108);
INSERT INTO "public"."sys_role_menu" VALUES (4, 500);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1040);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1041);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1042);
INSERT INTO "public"."sys_role_menu" VALUES (4, 501);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1043);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1044);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1045);
INSERT INTO "public"."sys_role_menu" VALUES (4, 3);
INSERT INTO "public"."sys_role_menu" VALUES (4, 113);
INSERT INTO "public"."sys_role_menu" VALUES (4, 114);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1055);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1056);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1058);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1057);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1059);
INSERT INTO "public"."sys_role_menu" VALUES (4, 1060);
INSERT INTO "public"."sys_role_menu" VALUES (4, 115);
INSERT INTO "public"."sys_role_menu" VALUES (4, 4);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user" (
  "user_id" int8 NOT NULL,
  "dept_id" int8,
  "user_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "nick_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "user_type" varchar(2) COLLATE "pg_catalog"."default" DEFAULT 0,
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "phonenumber" varchar(11) COLLATE "pg_catalog"."default",
  "sex" char(1) COLLATE "pg_catalog"."default",
  "avatar" varchar(100) COLLATE "pg_catalog"."default",
  "password" varchar(100) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "login_ip" varchar(50) COLLATE "pg_catalog"."default",
  "login_date" timestamp(6),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_user"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user"."dept_id" IS '部门ID';
COMMENT ON COLUMN "public"."sys_user"."user_name" IS '用户账号';
COMMENT ON COLUMN "public"."sys_user"."nick_name" IS '用户昵称';
COMMENT ON COLUMN "public"."sys_user"."user_type" IS '用户类型（00系统用户）';
COMMENT ON COLUMN "public"."sys_user"."email" IS '用户邮箱';
COMMENT ON COLUMN "public"."sys_user"."phonenumber" IS '手机号码';
COMMENT ON COLUMN "public"."sys_user"."sex" IS '用户性别（0男 1女 2未知）';
COMMENT ON COLUMN "public"."sys_user"."avatar" IS '头像地址';
COMMENT ON COLUMN "public"."sys_user"."password" IS '密码';
COMMENT ON COLUMN "public"."sys_user"."status" IS '帐号状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_user"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."sys_user"."login_ip" IS '最后登陆IP';
COMMENT ON COLUMN "public"."sys_user"."login_date" IS '最后登陆时间';
COMMENT ON COLUMN "public"."sys_user"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_user"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_user"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_user"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_user" IS '用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "public"."sys_user" VALUES (1, 103, 'admin', '吉想', '00', 'jt@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '管理员');
INSERT INTO "public"."sys_user" VALUES (2, 105, 'jt', '吉想', '00', 'jt@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '测试员');
INSERT INTO "public"."sys_user" VALUES (3, 103, '12345134', '142', '0', '1523673@qq.com', '15211111112', '2', NULL, '$2a$10$g.X48p9Iv9CAQ2qSEEVzGOnOzCCO5ZW/RioeK7TDAnDozxfyHjJeu', '0', '2', NULL, NULL, 'admin', '2021-01-06 15:16:11.332', 'admin', NULL, '1');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_post";
CREATE TABLE "public"."sys_user_post" (
  "user_id" int8 NOT NULL,
  "post_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_user_post"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user_post"."post_id" IS '岗位ID';
COMMENT ON TABLE "public"."sys_user_post" IS '用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO "public"."sys_user_post" VALUES (1, 1);
INSERT INTO "public"."sys_user_post" VALUES (2, 2);
INSERT INTO "public"."sys_user_post" VALUES (4, 1);
INSERT INTO "public"."sys_user_post" VALUES (3, 1);
INSERT INTO "public"."sys_user_post" VALUES (3, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_role";
CREATE TABLE "public"."sys_user_role" (
  "user_id" int8 NOT NULL,
  "role_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_user_role"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user_role"."role_id" IS '角色ID';
COMMENT ON TABLE "public"."sys_user_role" IS '用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO "public"."sys_user_role" VALUES (1, 1);
INSERT INTO "public"."sys_user_role" VALUES (2, 2);
INSERT INTO "public"."sys_user_role" VALUES (4, 1);
INSERT INTO "public"."sys_user_role" VALUES (3, 1);
INSERT INTO "public"."sys_user_role" VALUES (3, 1);

-- ----------------------------
-- View structure for dual
-- ----------------------------
DROP VIEW IF EXISTS "public"."dual";
CREATE VIEW "public"."dual" AS  SELECT NULL::text AS unknown
  WHERE (1 = 1);

-- ----------------------------
-- Primary Key structure for table gen_table
-- ----------------------------
ALTER TABLE "public"."gen_table" ADD CONSTRAINT "gen_table_pkey" PRIMARY KEY ("table_id");

-- ----------------------------
-- Primary Key structure for table gen_table_column
-- ----------------------------
ALTER TABLE "public"."gen_table_column" ADD CONSTRAINT "gen_table_column_pkey" PRIMARY KEY ("column_id");

-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE "public"."sys_config" ADD CONSTRAINT "sys_config_pkey" PRIMARY KEY ("config_id");

-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE "public"."sys_dept" ADD CONSTRAINT "sys_dept_pkey" PRIMARY KEY ("dept_id");

-- ----------------------------
-- Primary Key structure for table sys_dict_data
-- ----------------------------
ALTER TABLE "public"."sys_dict_data" ADD CONSTRAINT "sys_dict_data_pkey" PRIMARY KEY ("dict_code");

-- ----------------------------
-- Indexes structure for table sys_dict_type
-- ----------------------------
CREATE INDEX "dict_type" ON "public"."sys_dict_type" USING btree (
  "dict_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_dict_type
-- ----------------------------
ALTER TABLE "public"."sys_dict_type" ADD CONSTRAINT "sys_dict_type_pkey" PRIMARY KEY ("dict_id");

-- ----------------------------
-- Primary Key structure for table sys_job
-- ----------------------------
ALTER TABLE "public"."sys_job" ADD CONSTRAINT "sys_job_pkey" PRIMARY KEY ("job_id", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table sys_job_log
-- ----------------------------
ALTER TABLE "public"."sys_job_log" ADD CONSTRAINT "sys_job_log_pkey" PRIMARY KEY ("job_log_id");

-- ----------------------------
-- Primary Key structure for table sys_logininfor
-- ----------------------------
ALTER TABLE "public"."sys_logininfor" ADD CONSTRAINT "sys_logininfor_pkey" PRIMARY KEY ("info_id");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "public"."sys_menu" ADD CONSTRAINT "sys_menu_pkey" PRIMARY KEY ("menu_id");

-- ----------------------------
-- Primary Key structure for table sys_notice
-- ----------------------------
ALTER TABLE "public"."sys_notice" ADD CONSTRAINT "sys_notice_pkey" PRIMARY KEY ("notice_id");

-- ----------------------------
-- Primary Key structure for table sys_oper_log
-- ----------------------------
ALTER TABLE "public"."sys_oper_log" ADD CONSTRAINT "sys_oper_log_pkey" PRIMARY KEY ("oper_id");

-- ----------------------------
-- Primary Key structure for table sys_post
-- ----------------------------
ALTER TABLE "public"."sys_post" ADD CONSTRAINT "sys_post_pkey" PRIMARY KEY ("post_id");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "public"."sys_role" ADD CONSTRAINT "sys_role_pkey" PRIMARY KEY ("role_id");

-- ----------------------------
-- Primary Key structure for table sys_role_dept
-- ----------------------------
ALTER TABLE "public"."sys_role_dept" ADD CONSTRAINT "sys_role_dept_pkey" PRIMARY KEY ("role_id", "dept_id");

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE "public"."sys_role_menu" ADD CONSTRAINT "sys_role_menu_pkey" PRIMARY KEY ("role_id", "menu_id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "sys_user_pkey" PRIMARY KEY ("user_id");
