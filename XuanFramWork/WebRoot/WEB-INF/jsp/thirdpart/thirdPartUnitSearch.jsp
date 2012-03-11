<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="第三方单位" iconCls="icon-dot">
	<x:grid2 id="first" queryId="q_thirdpart" needCk="false">
		<div id="p" class="easyui-panel" title="查询条件" icon="icon-search"
			collapsible="true" style="padding: 2px; background: #fafafa;">
		<table class="userInput_table" cellspacing="0" cellpadding="0"
			border="1" style="margin: 1 auto; width: 100%;">
			<tr>
				<td class="td_title">单位名称</td>
				<td class="td_context"><input type="text"
					name="receipt_memo_number_condition"
					id="receipt_memo_number_condition" /></td>
				<td class="td_title">组织结构代码</td>
				<td class="td_context"><input type="text"
					name="receipt_memo_number_condition3"
					id="receipt_memo_number_condition3" /></td>
				<td class="td_title">负责人</td>
				<td class="td_context"><input name="planStatus" type="text"/></td>
			</tr>
			<tr>
				<td height="21" class="td_title">单位类型</td>
			  <td class="td_context">
				  <select name="select" class="easyui-combobox">
				    <option selected="selected">------------------</option>
				    <option value="301">设计单位</option>
				    <option value="302">施工单位</option>
				    <option value="303">监理单位</option>
			        </select>
			    </td>
				<td class="td_title">单位资质</td>
				<td class="td_context"><input name="planStatus2" type="text"/></td>
				<td class="td_title"><span class="td_context">是否启用</span></td>
				<td class="td_context"><input class="easyui-combobox"
					name="programManager" url="/json/programManager_data.json"
					valuefield="id" textfield="text" editable="false"
					panelheight="auto" />&nbsp;&nbsp;<a href="#"
					class="easyui-linkbutton" iconcls="icon-search" plain="true"
					onclick="searchPage('first');">查询</a> <a href="#"
					class="easyui-linkbutton" iconcls="icon-undo" plain="true"
					onclick="resetSearch('first');">重置</a></td>
			</tr>
		</table>
		</div>
		<x:gtb text="新增" iconCls="icon-add" handler="popWin('增加第三方单位', '/c/jsp/thirdpart/thirdPartUnitSave', 'icon-edit', 600, 300);"/>
		<x:colsWrap>
			<x:col width="100" title="单位名称" field="unitname" sortable="true"
				frozen="true"></x:col>
			<x:col width="100" title="组织结构代码" field="orgCode" sortable="true" frozen="true"></x:col>
			<x:col width="100" title="负责人" field="personInCharge"></x:col>
			<x:col width="100" title="单位类型" field="relationType" formatter="formatRelationType(value);"></x:col>
			<x:col width="100" title="单位资质" field="qualification"></x:col>
			 <x:col width="100" title="是否启用" field="deleteFlag" formatter="value == '0' ? '否' : '是';"/>
		</x:colsWrap>
		<x:grm iconCls="icon-edit"
			handler="popWin('编辑第三方单位', '/c/jsp/thirdpart/thirdPartUnitSave', 'icon-edit',600, 300);"
			text="编辑" />
	</x:grid2>
</x:tbody>
<script>
function formatRelationType(value){
	if (value == 301) 
		return '设计单位'; 
	else if (value == '302')
		return '施工单位';
	else if (value == '303')
		return '监理单位';
	else
		return value;
}
</script>
