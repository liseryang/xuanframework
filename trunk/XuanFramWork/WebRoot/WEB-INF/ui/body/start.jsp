<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:directive.page	import="com.pccw.tag.TagGlobalNames" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" " http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><%=request.getAttribute("xuan_ui_page_title")%></title>
<link rel=stylesheet type=text/css href="/styles/xuan.css">
<link rel="stylesheet" type="text/css" href="/styles/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/styles/icon.css">
<script type="text/javascript" src="/scripts/jquery-1.4.2.js"></script>
<script type="text/javascript" src="/scripts/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/scripts/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="/scripts/datagrid-detailview.js"></script>
<script type=text/javascript src="/scripts/jquery.form.js"></SCRIPT>
<script type=text/javascript src="/scripts/jquery.json-2.2.min.js"></SCRIPT>
<script type=text/javascript src="/scripts/jquery.cookies.2.2.0.min.js"></SCRIPT>
<script type=text/javascript src="/scripts/xuan.js"></SCRIPT>
</head>
<%
	response.setDateHeader("Expires", -10);
%>
<%
//还需要处理登陆的问题
%>
<body <%if (request.getAttribute("xuan_ui_page_nav") != null && !request.getAttribute("xuan_ui_page_nav").equals("null")) {%>class="easyui-layout"<%} %>>
<%if (request.getAttribute("xuan_ui_page_nav") != null && !request.getAttribute("xuan_ui_page_nav").equals("null")) {%>
<div id="body_center" region="center" title="当前功能：<%=request.getAttribute("xuan_ui_page_nav")%>" iconCls="<%=request.getAttribute("xuan_ui_page_iconCls")%>" style="padding:2px;" fit="true">
<%} %>
