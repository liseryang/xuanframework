<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="项目决算查询" iconCls="icon-dot">
  <x:grid id="first" hql="from ProjectAudit" idfield="id" onDblClickRow="windowOpen('项目决算信息','/c/jsp/account/sendAuditBook'+(rec.id));">
    <div id="p" class="easyui-panel" title="查询条件" icon="icon-search" collapsible="true" style="padding:2px;background:#fafafa;">
      <table class="userInput_table" cellspacing="0" cellpadding="0"
		border="1" style="margin: 1 auto; width: 100%;">
        <tr>
          <td class="td_title">项目编号</td>
          <td class="td_context"><input type="text" name="receipt_memo_number_condition" id="receipt_memo_number_condition"/>          </td>
          <td class="td_title">项目名称</td>
          <td class="td_context"><input type="text" name="receipt_memo_number_condition3" id="receipt_memo_number_condition3"/></td>
          <td class="td_title">MIS编号</td>
          <td class="td_context"><input name="planStatus" type="text"/></td>
        </tr>
        <tr>
          <td height="21" class="td_title">项目属性</td>
          <td class="td_context"><select name="select2">
            <option>--请选择--</option>
            <option>省管省建</option>
            <option>省管市建</option>
          </select></td>
          <td class="td_title">公司类型</td>
          <td class="td_context"><input class="easyui-combobox" name="planStatus2" url="/json/companyType_data.json"	valuefield="id" textfield="text" editable="false"panelheight="auto" /></td>
          <td class="td_title"><span class="td_context">状态</span></td>
          <td class="td_context"><select name="select">
            <option>--请选择--</option>
            <option>未审计</option>
            <option>已审计</option>
            <option>审计中</option>
          </select>            &nbsp;&nbsp;<a href="#" class="easyui-linkbutton" iconcls="icon-search" plain="true" onclick="searchPage('first');">查询</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" plain="true" onclick="resetSearch('first');">重置</a></td>
        </tr>
      </table>
    </div>
	<x:colsWrap>
      <x:col width="80" title="项目编号" field="projectNum" sortable="true" frozen="true"/>
      <x:col width="200" title="项目名称" field="projectName" sortable="true"/>
      <x:col width="100" title="MIS编号" field="misNum"/>
      <x:col width="100" title="项目属性" field="projectAttr"/>
      <x:col width="100" title="公司类型" field="companyType"/>
      <x:col width="100" title="预计决算审计日期" field="test" formatter="'2010-12-30'"/>
      <x:col width="100" title="状态" field="status"/>
    </x:colsWrap>
	<x:grm iconCls="icon-ok" handler="windowOpen('项目决算信息','/c/jsp/account/sendAuditBook'+rowData.id);" text="查看"/>
  </x:grid>
</x:tbody>
