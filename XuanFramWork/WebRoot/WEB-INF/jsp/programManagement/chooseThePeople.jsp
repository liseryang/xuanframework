<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" " http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link rel=stylesheet type=text/css href="/styles/xuan.css">
<link rel="stylesheet" type="text/css" href="/styles/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/styles/icon.css">
<script type="text/javascript" src="/scripts/jquery-1.4.2.js"></script>
<script type="text/javascript" src="/scripts/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/scripts/easyui-lang-zh_CN.js"></script>
<script type=text/javascript src="/scripts/jquery.form.js"></SCRIPT>
<script type=text/javascript src="/scripts/jquery.json-2.2.min.js"></SCRIPT>
<script type=text/javascript src="/scripts/xuan.js"></SCRIPT>
</head>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>
<body>
<div class="easyui-layout" style="width: 746px; height: 430px;">
<div region="north" style="height: 40px; padding: 2px;">
<table class="userInput_table" cellspacing="0" cellpadding="0"
	border="1" style="margin: 1 auto; width: 100%;">
	<tr>
		<td width="20%" class="td_title">当前处理方式</td>
		<td width="30%" class="td_context">填报</td>
		<td width="20%" class="td_title">流程流向</td>
		<td width="20%" class="td_context"><select name="">
			<option>派发</option>
			<option>审核</option>
			<option>审批</option>
		</select></td>
	</tr>
</table>
</div>
<div region="south"
	style="height: 34px; background: #efefef; padding-top: 5px;"
	align="center"><a href="#" class="easyui-linkbutton"
	onClick="parent.afterChoosePeople();">确定</a>&nbsp;<a
	href="#" class="easyui-linkbutton">清空已选</a>&nbsp;<a href="#"
	class="easyui-linkbutton" onClick="parent.closePop();">取消</a></div>
<div region="east" title="已选择用户" collapsible="false"
	style="width: 180px; padding-top: 4px;" align="center"><select
	size="10" style="height: 320px; width: 99%">
</select></div>
<div region="west" style="width: 180px; padding: 2px;">
<div align="center" style="height: 24px;"><strong>组织方式：</strong> <select
	name="">
	<option>用户</option>
	<option>用户组</option>
	<option>组织</option>
</select></div>
<hr>
<ul id="tt1" class="easyui-tree" animate="true" dnd="true">
	<li><span>总公司</span>
	<ul>
		<li state="closed"><span>分公司 1</span>
		<ul>
			<li><span><a href="#">部门 11</a></span></li>
			<li><span>部门 12</span></li>
			<li><span>部门 13</span></li>
		</ul>
		</li>
		<li><span>部门 2</span></li>
		<li><span>部门 3</span></li>
		<li>部门 4</li>
		<li>部门 5</li>
	</ul>
	</li>
	<li><span>部门21</span></li>
</ul>
</div>
<div region="center" style="padding: 2px;">
<div align="center" style="height: 24px;"><strong>用户名： <input
	type="text" name="textfield"> </strong>&nbsp;&nbsp;<a href="#"
	class="easyui-linkbutton" iconcls="icon-search" plain="true"
	onClick="searchPage('first');">查询</a></div>
<hr />
<table id="tt" class="easyui-datagrid" style="width: 360px;">
	<thead>
		<tr>
			<th field="name1" width="100">用户登录名</th>
			<th field="name2" width="60">姓名</th>
			<th field="name3" width="120">电子邮件</th>
			<th field="name4" width="50">操作</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Data 1</td>
			<td>Data 2</td>
			<td>Data 3</td>
			<td>选择</td>
		</tr>
		<tr>
			<td>Data 1</td>
			<td>Data 2</td>
			<td>Data 3</td>
			<td>选择</td>
		</tr>
		<tr>
			<td>Data 1</td>
			<td>Data 2</td>
			<td>Data 3</td>
			<td>选择</td>
		</tr>
		<tr>
			<td>Data 1</td>
			<td>Data 2</td>
			<td>Data 3</td>
			<td>选择</td>
		</tr>
	</tbody>
</table>

</div>
</div>
</body>
</html>
