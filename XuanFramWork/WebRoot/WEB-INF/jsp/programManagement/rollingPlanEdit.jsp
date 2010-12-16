<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody>

  <div id="p" class="easyui-panel" title="文件信息" icon="icon-edit" style="padding:2px; margin-bottom:2px;background:#fafafa;">
  <table class="userInput_table" cellspacing="0" cellpadding="0"
		border="1" style="margin: 1 auto; width: 100%;">
    
    

    
      <td height="21" class="td_title">文件*</td>
      <td class="td_context"><input type="file" name="file"  style="width:90%"/></td>
      </tr>
	  <tr>
      <td height="21" class="td_title">说明</td>
      <td class="td_context"><input type="text" name="textfield2" style="width:90%"/></td>
      </tr>
	  <tr>
      <td height="21" class="td_title">有效期</td>
      <td class="td_context"><input name="Input4" class="easyui-datebox" id="start" size="12"/>至<input name="Input4" class="easyui-datebox" id="end"  size="12"/></td>
      </tr>
	  <tr>
      <td height="21" colspan="2" class="td_context">&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="#" class="easyui-linkbutton" iconcls="icon-ok" onclick="alert('保存成功，可选择填报');parent.closePop();">保存</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" onclick="">重置</a></td>
      </tr>
    </table>
  </div>
</x:tbody>
