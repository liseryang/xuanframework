<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="滚动规划" iconCls="icon-dot">
  <x:grid id="first" hql="from RollingPlan" idfield="id"
		sortName="id" onDblClickRow="popWin('滚动规划', '/c/jsp/programManagement/rollingPlanEdit', 'icon-file',640,380);">
    <div id="p" class="easyui-panel" title="查询条件" icon="icon-search" collapsible="true" style="padding:2px;background:#fafafa;">
      <table class="userInput_table" cellspacing="0" cellpadding="0"
		border="1" style="margin: 1 auto; width: 100%;">
        <tr>
          <td class="td_title">滚动规划名称</td>
          <td class="td_context"><input type="text" name="receipt_memo_number_condition" id="receipt_memo_number_condition"/>          </td>
          <td class="td_title">有效日期</td>
          <td class="td_context"><input name="Input4" class="easyui-datebox" id="start" />至<input name="Input4" class="easyui-datebox" id="end" />&nbsp;&nbsp;<a href="#" class="easyui-linkbutton" iconcls="icon-search" plain="true" onclick="searchPage('first');">查询</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" plain="true" onclick="resetSearch('first');">重置</a></td>
        </tr>
      </table>
    </div>
	<x:gtb text="增加" iconCls="icon-add" handler="popWin('滚动规划', '/c/jsp/programManagement/rollingPlanEdit', 'icon-file',640,380);"/>
	<x:gtb text="删除" iconCls="icon-remove" handler="alert('删除');"/>
	
    <x:colsWrap>
      <x:col width="100" title="滚动规划名称" field="fileName222" sortable="true" frozen="true" formatter="规划名称"/>
      <x:col width="100" title="文件" field="fileName" sortable="true" frozen="true"/>
      <x:col width="100" title="说明" field="fileNotes" sortable="true"/>
      <x:col width="100" title="上传用户" field="uploadUser" sortable="true"/>
      <x:col width="100" title="生效日期" field="uploadDate" sortable="true"/>
	  <x:col width="100" title="失效日期" field="abc"/>
	  <x:col width="100" title="文件类型" field="extensionName" sortable="true"/>
    </x:colsWrap>
	
	<x:grm iconCls="icon-edit" handler="popWin('滚动规划', '/c/jsp/programManagement/rollingPlanEdit', 'icon-file',640,380);" text="编辑"/>
	<x:grm iconCls="icon-down" handler="alert('下载');" text="下载"/>
	<x:grm iconCls="icon-remove" handler="confirm('是否删除文件：'+rowData.fileName+'？');" text="删除"/>
  </x:grid>
</x:tbody>
