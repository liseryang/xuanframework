<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="计划填报任务派发" iconCls="icon-dot">
  <x:grid id="first" hql="from AnnualInvestmentPlan" idfield="planId"
		sortName="planNum" where="planId < 4" onDblClickRow="window.location.href='/c/jsp/programManagement/publishedTaskPlan';">
    <div id="p" class="easyui-panel" title="查询条件" icon="icon-search" collapsible="true" style="padding:2px;background:#fafafa;">
      <table class="userInput_table" cellspacing="0" cellpadding="0"
		border="1" style="margin: 1 auto; width: 100%;">
        <tr>
          <td class="td_title">计划编码</td>
          <td class="td_context"><input type="text" name="receipt_memo_number_condition" id="receipt_memo_number_condition"/>          </td>
          <td class="td_title">计划名称</td>
          <td class="td_context"><input type="text" name="receipt_memo_number_condition3" id="receipt_memo_number_condition3"/></td>
          <td class="td_title">计划状态</td>
          <td class="td_context"><input class="easyui-combobox" name="planStatus" url="/json/planStatus_data.json"	valuefield="id" textfield="text" editable="false"panelheight="auto" /></td>
        </tr>
        <tr>
          <td height="21" class="td_title">所属年度</td>
          <td class="td_context"><input type="text" name="operator_name_condition" id="operator_name_condition"/></td>
          <td class="td_title">公司类型</td>
          <td class="td_context"><input class="easyui-combobox" name="planStatus2" url="/json/companyType_data.json"	valuefield="id" textfield="text" editable="false"panelheight="auto" /></td>
          <td class="td_title"><span class="td_context">计划经理</span></td>
          <td class="td_context">
            <input class="easyui-combobox" name="programManager" url="/json/programManager_data.json"	valuefield="id" textfield="text" editable="false"panelheight="auto" />&nbsp;&nbsp;<a href="#" class="easyui-linkbutton" iconcls="icon-search" plain="true" onclick="searchPage('first');">查询</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" plain="true" onclick="resetSearch('first');">重置</a></td>
        </tr>
      </table>
    </div>
	<x:gtb text="新增" iconCls="icon-add" handler="window.location.href='/c/jsp/programManagement/publishedTaskPlan';"/>
	<x:gtb text="删除" iconCls="icon-remove" handler="alert('删除');"/>
	
    <x:colsWrap>
      <x:col width="100" title="计划编号" field="planNum" sortable="true"
				frozen="true"></x:col>
      <x:col width="100" title="所属年度" field="yearInWhich" sortable="true"></x:col>
      <x:col width="100" title="计划状态" field="planStatus"></x:col>
      <x:col width="100" title="计划名称" field="planName"></x:col>
      <x:col width="100" title="公司类型" field="companyType"></x:col>
      <x:col width="100" title="计划项目经理" field="programManager"></x:col>
    </x:colsWrap>
	<x:grm iconCls="icon-ok" handler="window.location.href='/c/jsp/programManagement/editTaskPlan';" text="编辑"/>
	<x:grm iconCls="icon-search" handler="window.location.href='/c/jsp/programManagement/viewTaskPlan';" text="查看"/>
  </x:grid>
</x:tbody>
