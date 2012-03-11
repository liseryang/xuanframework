<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="待办任务" iconCls="icon-dot">
  <x:grid id="first" hql="from TaskInfo" idfield="taskId" where="taskStatus = 0" onDblClickRow="if (rec.taskId == 1 ) window.location.href='/c/jsp/programManagement/submitTaskPlan'; else window.location.href='/c/jsp/programManagement/publishedTaskPlan?edit=false';">
    <div id="p" class="easyui-panel" title="查询条件" icon="icon-search" collapsible="true" style="padding:2px;background:#fafafa;">
      <table class="userInput_table" cellspacing="0" cellpadding="0"
		border="1" style="margin: 1 auto; width: 100%;">
        <tr>
          <td class="td_title">发起人</td>
          <td class="td_context"><input type="text" name="receipt_memo_number_condition" id="receipt_memo_number_condition"/>          </td>
          <td class="td_title">工单类型</td>
          <td class="td_context"><input type="text" name="receipt_memo_number_condition3" id="receipt_memo_number_condition3"/></td>
          <td class="td_title">主题</td>
          <td class="td_context"><input type="text" name="receipt_memo_number_condition32" id="receipt_memo_number_condition32"/></td>
        </tr>
        <tr>
          <td height="21" class="td_title">申请时间</td>
          <td class="td_context"><input name="Input4" class="easyui-datebox" id="dd" /></td>
          <td colspan="4" class="td_context" align="center"><a href="#" class="easyui-linkbutton" iconcls="icon-search" plain="true" onclick="searchPage('first');">查询</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" plain="true" onclick="resetSearch('first');">重置</a></td>
        </tr>
      </table>
    </div>
	<x:gtb text="签收" iconCls="icon-add" handler="alert('签收');"/>
	<x:gtb text="退回" iconCls="icon-redo" handler="alert('退回');"/>
	
    <x:colsWrap>
      <x:col width="100" title="发起人" field="creater" sortable="true" frozen="true"></x:col>
      <x:col width="100" title="申请时间" field="createDate" sortable="true"></x:col>
      <x:col width="200" title="工单类型" field="taskType" sortable="true"></x:col>
      <x:col width="200" title="主题" field="topics" sortable="true"></x:col>
      <x:col width="100" title="当前状态" field="taskStatus" sortable="true"></x:col>
    </x:colsWrap>
    <x:grm iconCls="icon-ok" handler="alert('签收：'+rowData.topics);" text="签收"/>
    <x:grm iconCls="icon-redo" handler="alert('退回：'+rowData.topics);" text="退回" disabled="rowData.taskStatus == '0'"/>
  </x:grid>
</x:tbody>
