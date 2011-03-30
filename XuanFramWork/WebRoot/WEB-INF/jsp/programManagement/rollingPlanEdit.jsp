<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody>
	<table class="userInput_table" cellspacing="0" cellpadding="0"
		border="1" style="margin: 1 auto; width: 100%;">
		<tr>
			<td height="21" class="td_title">滚动规划名称*</td>
			<td class="td_context"><input type="text" name="textfield2"
				style="width: 90%" /></td>
		</tr>
		<tr>
			<td height="21" class="td_title">规划文件*</td>
			<td class="td_context"><input type="file" name="file"
				style="width: 90%" /></td>
		</tr>
		<tr>
			<td height="21" class="td_title">说明</td>
			<td class="td_context"><input type="text" name="textfield2"
				style="width: 90%" /></td>
		</tr>
		<tr>
			<td height="21" class="td_title">有效期</td>
			<td class="td_context"><input name="Input4"
				class="easyui-datebox" id="start" size="12" />至<input name="Input4"
				class="easyui-datebox" id="end" size="12" /></td>
		</tr>
		<tr>
			<td height="28" colspan="2" align="center">
			<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
				onclick="alert('保存成功，可选择填报');parent.closePop();">保存</a> <a href="#"
				class="easyui-linkbutton" iconcls="icon-undo" onclick="">重置</a></td>
		</tr>
	</table>
</x:tbody>
