<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody>
<div id="p" class="easyui-panel" title="基本信息" icon="icon-polygon" style="padding:2px; margin-bottom:2px;background:#fafafa;">
<table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
  <tr>
    <td width="10%" class="td_title">项目编号</td>
    <td width="23%" class="td_context">项目编号</td>
    <td width="10%" class="td_title">项目名称</td>
    <td width="23%" class="td_context">项目名称</td>
    <td width="10%" class="td_title">MIS编号</td>
    <td width="23%" class="td_context">MIS编号</td>
  </tr>
    <tr>
    <td width="10%" class="td_title">建设单位</td>
    <td width="23%" class="td_context">建设单位</td>
    <td width="10%" class="td_title">立项文号</td>
    <td width="23%" class="td_context">立项文号</td>
    <td width="10%" class="td_title">项目申请文号</td>
    <td width="23%" class="td_context">项目申请文号</td>
  </tr>
 <tr>
    <td class="td_title">项目性质</td>
    <td class="td_context">项目性质</td>
    <td class="td_title">投资规模</td>
    <td nowrap class="td_context">投资规模</td>
    <td nowrap class="td_title">建设内容/规模</td>
    <td nowrap class="td_context">建设内容/规模</td>
 </tr>
  
    <tr>
    <td width="10%" class="td_title">投资金额</td>
    <td width="23%" class="td_context">投资金额</td>
    <td width="10%" class="td_title">专业类别</td>
    <td width="23%" class="td_context">专业类别</td>
    <td width="10%" class="td_title">预计投产时间</td>
    <td width="23%" class="td_context">2008-04-24</td>
  </tr>
  <tr>
    <td class="td_title">附件 </td>
    <td colspan="5" class="td_context">附件 </td>
    </tr>
</table>
</div>
<div id="p" class="easyui-panel" title="相关工单" icon="icon-analysis" collapsible="true" style="padding:2px; margin-bottom:2px;background:#fafafa;">
<table id="tt1" class="easyui-datagrid" style="width:auto;height:auto;">
<thead>
  <tr>
    <th width="157" field="name1"><strong>工单编号</strong></th>
    <th width="140" field="name2"><strong>工单主题</strong></th>    
    <th width="128" field="name3"><strong>工单类型</strong></th>
    <th width="68" field="name4"><strong>工单状态</strong></th>
    <th width="68" field="name5"><strong>流程跟踪</strong></th>
  </tr>
  </thead>
  <tbody>
  <tr> 
    <td><A href="项目建设任务工单_detail.html" >WORK-ORDER-001</a></td>
    <td><A href="项目建设任务工单_detail.html" >项目建设任务工单</a></td>
    <td>项目建设任务</td>
    <td>审批中</td>
    <td><A href="../constructing.html" >流程跟踪</a></td> 
  </tr>
  <tr>
    <td><A href="项目总体实施计划工单_detail.html" >WORK-ORDER-002</a></td>
    <td><A href="项目总体实施计划工单_detail.html" >项目总体实施计划工单</a></td>
    <td>项目总体实施计划</td>
    <td>待审批</td>
    <td><A href="../constructing.html" >流程跟踪</a></td>   
  </tr>
  <tr>
    <td><A href="组织项目设计会审工单_detail.html" >WORK-ORDER-003</a></td>
    <td><A href="组织项目设计会审工单_detail.html" >组织项目设计会审工单</a></td>
    <td>组织项目设计会审</td>
    <td>审批通过</td>
    <td><A href="../constructing.html" >流程跟踪</a></td> 
  </tr>
  </tbody>
</table>
</div>
<div id="p" class="easyui-panel" title="相关发文" icon="icon-save" collapsible="true" style="padding:2px; margin-bottom:2px;background:#fafafa;">
<table width="603" class="easyui-datagrid" id="tt2" style="width:auto;height:auto;">
<thead>
  <tr>
    <th field="name1" width="165"><strong>项目编号</strong></th>
    <th field="name2" width="113"><strong>项目名称</strong></th>    
    <th field="name3" width="120"><strong>专业类别</strong></th>
    <th field="name4" width="100"><strong>报告单位</strong></th>
    <th field="name5" width="81"><strong>流程跟踪</strong></th>     
  </tr>
  </thead>
  <tr> 
    <td class="td_context"><A href="../wangyunlong/待阅任务.html" >PRO-001</a></td>
    <td class="td_context"><A href="../wangyunlong/待阅任务.html" >初验通报流程</a></td>
    <td class="td_context">GSM网络</td>
    <td class="td_context">福建移动</td>
    <td class="td_context"><A href="../constructing.html" >流程跟踪</a></td> 
  </tr>
  <tr>
    <td class="td_context"><A href="../wangyunlong/待阅任务2.html" >PRO-002</a></td>
    <td class="td_context"><A href="../wangyunlong/待阅任务2.html" >终验通报流程</a></td>
    <td class="td_context">GSM网络</td>
    <td class="td_context">福建移动</td>
    <td class="td_context"><A href="../constructing.html" >流程跟踪</a></td> 
  </tr>
</table>
</div>
</x:tbody>