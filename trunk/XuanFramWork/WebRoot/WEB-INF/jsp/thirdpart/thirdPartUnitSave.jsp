<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody>
  <table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
    <tr>
      <td width="15%" height="21" class="td_title">单位名称*</td>
      <td width="35%"class="td_context"><input type="text" name="textfield4" /></td>
      <td width="15%"class="td_title">组织机构代码*</td>
      <td width="35%"class="td_context"><input type="text" name="textfield3" /></td>
    </tr>
    <tr>
      <td height="21" class="td_title">负责人</td>
      <td class="td_context"><input type="text" name="textfield32" /></td>
      <td class="td_title">单位类别</td>
      <td class="td_context"><select name="select" class="easyui-combobox">
          <option value="301">设计单位</option>
          <option value="302">施工单位</option>
          <option value="303">监理单位</option>
        </select></td>
    </tr>
    <tr>
      <td height="21" class="td_title">登陆用户名*</td>
      <td class="td_context"><input type="text" name="textfield322" /></td>
      <td class="td_title">登陆密码*</td>
      <td class="td_context"><input type="text" name="textfield3222" /></td>
    </tr>
    <tr>
      <td height="21" class="td_title">单位资质</td>
      <td class="td_context"><input type="text" name="textfield3223" /></td>
      <td class="td_title">是否启用</td>
      <td class="td_context"><select name="select2" class="easyui-combobox">
        <option value="301">是</option>
        <option value="302">否</option>
      </select></td>
    </tr>
    <tr>
      <td height="21" class="td_title">说明</td>
      <td colspan="3" class="td_context"><textarea name="textarea" style="width:98%"></textarea></td>
    </tr>
  </table>
  <hr/>
  <div align="center"><a href="#" class="easyui-linkbutton" iconcls="icon-ok" onclick="alert('保存！');parent.closePop();">保存</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" onclick="">重置</a></div>
</x:tbody>
