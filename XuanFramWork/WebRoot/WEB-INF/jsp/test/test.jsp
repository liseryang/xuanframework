<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>
<x:tbody title="测试页面" iconCls="icon-polygon">
	<x:grid id="first" title="第一个" hql="from Users" idfield="id"
		sortName="username">
		<input id="_first_field" name="_first_field" type="text"
			value="username" />
		<input id="_first_type" name="_first_type" type="text" value="String" />
		<input id="_first_operator" name="_first_operator" type="text"
			value="like" />
		<input id="_first_value" name="_first_value" type="text" value="" />

		<input id="_first_field" name="_first_field" type="text"
			value="username" />
		<input id="_first_type" name="_first_type" type="text" value="String" />
		<input id="_first_operator" name="_first_operator" type="text"
			value="like" />
		<input id="_first_value" name="_first_value" type="text" value="" />

		<input id="_first_search" name="_first_search" type="button"
			value="查询" onclick="searchPage('first');" />
		<x:colsWrap>
			<x:col width="100" title="名字" field="username" sortable="true"
				frozen="true"></x:col>
			<x:col width="100" title="密码" field="pwd" sortable="true"
				formatter="'*******'"></x:col>
			<x:col width="100" title="启用" field="disabled"
				formatter="value == '1' ? '是' :'否'"></x:col>
		</x:colsWrap>
	</x:grid>
</x:tbody>
