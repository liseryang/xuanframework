<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="计划模板管理" iconCls="icon-dot">
  <x:grid id="first" hql="from Template" idfield="id"
		sortName="id" onDblClickRow="window.location.href='/c/jsp/template/templateAdd';">
    <div id="p" region="north" class="easyui-panel" title="查询条件" icon="icon-search" collapsible="true" style="padding:2px;background:#fafafa;" fit="true">
      <table class="userInput_table" cellspacing="0" cellpadding="0"
		border="1" style="margin: 1 auto; width: 100%;">
        <tr>
          <td class="td_title">模板编码</td>
          <td class="td_context"><input type="text" name="tcode" id="tcode"/>          </td>
          <td class="td_title">模板名称</td>
          <td class="td_context"><input type="text" name="tname" id="tname"/></td>
          <td class="td_title">公司类型</td>
          <td class="td_context"><input class="easyui-combobox" id="ctype" name="ctype" url="/json/companyType_data.json"	valuefield="id" textfield="text" editable="false"panelheight="auto" /></td>
        </tr>
        <tr>
          <td height="21" class="td_title">是否新版本</td>
          <td class="td_context"><select id="select" class="easyui-combobox" name="select">
            <option>---未选择---</option>
            <option>是</option>
            <option>否</option>
          </select></td>
          <td class="td_title">版本号</td>
          <td class="td_context"><input type="text" name="tname2" id="tname2"/></td>
          <td class="td_title">专业类型</td>
          <td class="td_context"><select class="easyui-combobox" name="select2" id="select2">
            <option>---未选择---</option>
            <option>数据业务网</option>
            <option>IT项目建设</option>
          </select></td>
        </tr>
        <tr>
          <td height="21" class="td_title">启用状态</td>
          <td class="td_context"><select id="select3" class="easyui-combobox" name="select3">
              <option>---未选择---</option>
              <option>启用</option>
              <option>禁用</option>
            </select></td>
          <td class="td_title">启用日期</td>
          <td class="td_context"><input id="Input4" name="Input4" class="easyui-datebox" size="10" />
至
  <input id="Input" name="Input" class="easyui-datebox" size="10" /></td>
          <td colspan="2" class="td_context"><a href="#" class="easyui-linkbutton" iconcls="icon-search" plain="true" onclick="searchPage('first');">
            
          查询</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" plain="true" onclick="resetSearch('first');">重置</a></td>
        </tr>
      </table>
    </div>
	<x:gtb text="新增" iconCls="icon-add" handler="window.location.href='/c/jsp/template/templateAdd';"/>
	<x:gtb text="删除" iconCls="icon-remove" handler="alert('删除');"/>
	
    <x:colsWrap>
      <x:col width="100" title="模板编号" field="templateNum" sortable="true" frozen="true"/>
      <x:col width="100" title="模板名称" field="templateName" sortable="true"/>
	  <x:col width="100" title="模板文件" field="templateFileName"/>
      <x:col width="60" title="新版本" field="templateType" formatter="'是';"/>
	  <x:col width="60" title="版本号" field="111" formatter="'1';"/>
      <x:col width="100" title="公司类型" field="companyType"/>
      <x:col width="100" title="专业类型" field="professionalType"/>
	  <x:col width="100" title="是否启用" field="enabled" formatter="value == '0' ? '否' : '是';"/>
	  <x:col width="100" title="生效日期" field="startDate"/>
	  <x:col width="100" title="失效日期" field="endDate"/>
	  <x:col width="100" title="创建人" field="createUser"/>
	  <x:col width="100" title="创建日期" field="createDate"/>
    </x:colsWrap>
	<x:grm iconCls="icon-edit" handler="window.location.href='/c/jsp/template/templateAdd';" text="编辑"/>
	<x:grm iconCls="icon-copy" handler="window.location.href='/c/jsp/template/templateEdit';" text="创建新版本"/>
	<x:grm iconCls="icon-validate" handler="window.location.href='/c/jsp/template/templateEdit';" text="验证该模板"/>
	<x:grm iconCls="icon-remove" handler="alert('删除');" text="删除"/>
  </x:grid>
</x:tbody>
