<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody>
<table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
    
    <tr>
      <td width="10%" height="21" class="td_title">上级类别</td>
      <td class="td_context"><label>
        <select name="select" class="easyui-combobox">
          <option>根</option>
          <option value="01">零星购置</option>
        </select>
      </label></td>
    </tr>
	
    <tr>
      <td height="21" class="td_title">类别名称*</td>
      <td class="td_context"><input type="text" name="textfield" /></td>
    </tr>
    <tr>
      <td height="21" class="td_title">说明</td>
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
