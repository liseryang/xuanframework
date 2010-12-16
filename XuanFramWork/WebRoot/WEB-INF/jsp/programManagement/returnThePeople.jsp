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
          <td class="td_title">填报单位</td>
          <td class="td_context">分公司-1</td>
        </tr>
        <tr>
          <td height="21" class="td_title">填报人</td>
          <td class="td_context">谢平</td>
        </tr>
        <tr>
          <td height="21" class="td_title">填报日期</td>
          <td class="td_context">2010-11-01</td>
        </tr>
        
        <tr>
          <td height="21" class="td_title">退回意见</td>
          <td class="td_context">
            <textarea name="programManager" cols="50" rows="5" ></textarea>
            &nbsp;&nbsp;<a href="#" class="easyui-linkbutton" iconcls="icon-ok" plain="true" onclick="parent.closePop();">退回</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" plain="true" onclick="resetSearch('first');">重置</a></td>
        </tr>
      </table>
</x:tbody>
