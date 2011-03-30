<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody>
<table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
    
    <tr>
      <td height="21" class="td_title">上级指标</td>
      <td class="td_context"><select name="select" class="easyui-combobox">
        <option>--------</option>
        <option value="01">管道</option>
		<option value="02">杆路</option>
      </select></td>
    </tr>
	
    <tr>
      <td width="10%" height="21" class="td_title">指标名称*</td>
      <td class="td_context"><input type="text" name="textfield" />        <label></label></td>
    </tr>
    <tr>
      <td height="21" class="td_title"><span class="td_context">单位</span></td>
      <td class="td_context"><input name="programManager" url="/json/programManager_data.json"	valuefield="id" textfield="text" editable="false"panelheight="auto" /></td>
    </tr>
    
    <tr>
      <td height="21" class="td_title">指标定义</td>
      <td class="td_context"><textarea name="textarea" style="width:98%"></textarea></td>
    </tr>
    <tr>
      <td height="21" class="td_title">排序字段</td>
      <td class="td_context"><input type="text" name="textfield2" /></td>
      </tr>
  </table>
  <hr/>
  <div align="center"><a href="#" class="easyui-linkbutton" iconcls="icon-ok" onclick="alert('保存！');parent.closePop();">保存</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" onclick="">重置</a></div>
</x:tbody>
