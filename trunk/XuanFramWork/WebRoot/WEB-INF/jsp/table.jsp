<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>
<x:tbody title="我的任务" iconCls="icon-polygon">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr height="160">
    <td width="77%"><x:grid id="tab_1" title="待办任务" hql="from Users" idfield="id" sortName="username" height="158" needCk="false" pagination="false">
    <x:colsWrap>
      <x:col width="100" title="业务流程名称" field="username" sortable="true" frozen="true"></x:col>
      <x:col width="100" title="任务名称" field="pwd" sortable="true"></x:col>
      <x:col width="100" title="时间" field="pwd" sortable="true"></x:col>
      <x:col width="100" title="紧急程度" field="pwd" sortable="true"></x:col>
    </x:colsWrap>
	</x:grid></td>
    <td width="23%" rowspan="2" height="320" valign="top">
	<div style="background:#e2f1f9; padding-left:8px; border-bottom:1px #b1cfe0 solid; border-right:1px #b1cfe0 solid; text-align:center; font-weight:bold; color: #333333;">系统公告</div>
	<marquee style="color:#414141;font-size:12px;line-height:17px" direction="up" scrollamount="1" scrolldelay="100" onMouseOver="this.scrollDelay=500" onMouseOut="this.scrollDelay=1" height="290">1、<a href="#">福建省移动工程项目管理平台二期工程项目，顺利通过验收准备试运行的公告。</a><br>2、<a href="#">福建省移动公司关于工程项目管理建设的分步实施战略的一些建议。</a><br>3、<a href="#">福建省移动公司关于滚动规划与计划管理系统的若干指导意见。</a></marquee></td>
  </tr>
  <tr height="160">
    <td><x:grid id="tab_2" title="待办任务" hql="from Users" idfield="id" sortName="username" height="158" needCk="false" pagination="false">
    <x:colsWrap>
      <x:col width="100" title="待阅任务" field="username" sortable="true" frozen="true"></x:col>
      <x:col width="100" title="任务名称" field="pwd" sortable="true"></x:col>
      <x:col width="100" title="时间" field="pwd" sortable="true"></x:col>
      <x:col width="100" title="紧急程度" field="pwd" sortable="true"></x:col>
    </x:colsWrap>
	</x:grid></td>
    </tr>
</table>

  <x:grid id="tab_3" title="在办项目" hql="from Users" idfield="id" sortName="username" height="200" needCk="false" pagination="false">
    <x:colsWrap>
      <x:col width="100" title="项目编号" field="username" sortable="true"
				frozen="true"></x:col>
      <x:col width="100" title="项目名称" field="pwd" sortable="true"></x:col>
      <x:col width="100" title="MIS编号" field="pwd" sortable="true"></x:col>
      <x:col width="100" title="立项文号" field="pwd" sortable="true"></x:col>
      <x:col width="100" title="项目性质" field="pwd" sortable="true"></x:col>
      <x:col width="100" title="专业类别" field="pwd" sortable="true"></x:col>
      <x:col width="100" title="项目阶段" field="pwd" sortable="true"></x:col>
      <x:col width="100" title="项目状态" field="pwd" sortable="true"></x:col>
      <x:col width="100" title="&nbsp;&nbsp;&nbsp;&nbsp;" field="disabled"	formatter="'操作'"></x:col>
    </x:colsWrap>
  </x:grid>
</x:tbody>
