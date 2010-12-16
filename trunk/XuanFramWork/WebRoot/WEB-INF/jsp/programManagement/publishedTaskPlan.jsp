<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="年度计划填报任务工单派发" iconCls="icon-dot">
  <div id="p" class="easyui-panel" title="流程处理" icon="icon-polygon" style="padding:2px; margin-bottom:2px;background:#fafafa;"><table class="userInput_table" cellspacing="0" cellpadding="0"
		border="1" style="margin: 1 auto; width: 100%;">
		<tr><td class="td_title">流程处理</td><td class="td_context"><a href="#" class="easyui-linkbutton" onclick="popWin('选择下阶段处理人', '/c/jsp/programManagement/chooseThePeople', 'icon-search', 780, 480);">填报</a>&nbsp;<a href="#" class="easyui-linkbutton" onclick="alert('暂存成功');window.location.href= '/c/jsp/programManagement/taskPlanSearch';">暂存</a>&nbsp;<a href="#" class="easyui-linkbutton" onclick="window.location.href= '<%=request.getParameter("edit") == null ? "/c/jsp/programManagement/taskPlanSearch" : "/c/jsp/task/toDoTasks"%>';">返回</a></td>
		</tr>
		</table></div>
  <div id="p" class="easyui-panel" title="任务工单" icon="icon-edit" style="padding:2px; margin-bottom:2px;background:#fafafa;">
  <table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
    <tr>
      <td class="td_title">计划编码*</td>
      <td class="td_context"><input type="text" name="receipt_memo_number_condition" id="receipt_memo_number_condition"/>      </td>
      <td class="td_title">计划名称*</td>
      <td class="td_context"><input type="text" name="receipt_memo_number_condition3" id="receipt_memo_number_condition3"/></td>
      <td class="td_title">计划状态*</td>
      <td class="td_context"><input class="easyui-combobox" name="planStatus" url="/json/planStatus_data.json"	valuefield="id" textfield="text" editable="false"panelheight="auto" /></td>
    </tr>
    <tr>
      <td height="21" class="td_title">计划模板*</td>
      <td class="td_context">
	  <select name="select" class="easyui-combobox" <%=request.getParameter("edit") == null ? "" : "disabled"%>>
        <option>---未选择---</option>
        <option <%=request.getParameter("edit") == null ? "" : "selected"%>>填报模板1</option>
        <option>填报模板2</option>
        <option>填报模板3</option>
        </select>        </td>
      <td class="td_title">所属年度*</td>
      <td class="td_context"><input type="text" name="operator_name_condition" id="operator_name_condition"/></td>
      <td class="td_title">公司类型*</td>
      <td class="td_context"><input class="easyui-combobox" name="planStatus2" url="/json/companyType_data.json"	valuefield="id" textfield="text" editable="false"panelheight="auto" /></td>
    </tr>
    <tr>
      <td height="21" class="td_title"><span class="td_context">计划经理*</span></td>
      <td class="td_context"><input class="easyui-combobox" name="programManager" url="/json/programManager_data.json"	valuefield="id" textfield="text" editable="false"panelheight="auto" /></td>
      <td class="td_title">创建人*</td>
      <td class="td_context"><input type="text" name="textfield" /></td>
      <td class="td_title">创建时间*</td>
      <td class="td_context"><input name="Input2" class="easyui-datebox" id="Input2" /></td>
    </tr>
    
    <tr>
      <td height="21" class="td_title">计划编报通知文号</td>
      <td class="td_context"><input type="text" name="textfield2" /></td>
      <td class="td_title">计划开始时间</td>
      <td class="td_context"><input name="Input4" class="easyui-datebox" id="dd" /></td>
      <td class="td_title">最晚完成时间</td>
      <td class="td_context"><input name="Input" class="easyui-datebox" id="Input" /></td>
    </tr>
    <tr>
      <td height="21" class="td_title">附件</td>
      <td class="td_context"><input type="file" name="file" /></td>
      <td class="td_title">备注</td>
      <td class="td_context"><textarea name="textarea" style="width:98%"></textarea></td>
      <td colspan="2" class="td_context"><div align="center"><a href="#" class="easyui-linkbutton" iconcls="icon-ok" plain="true" onclick="alert('保存成功，可选择填报');">保存</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" plain="true" onclick="">重置</a></div></td>
    </tr>
  </table>
  </div>
   <%if (request.getParameter("edit") != null){%>
  <div id="p" align="center">
  <a href="\car.xls" class="easyui-linkbutton" target="_blank">下载模板</a>&nbsp;<a href="#" class="easyui-linkbutton" onclick="alert('弹出上传，选择数据文件上传并处理');">上传模板</a>&nbsp;<a href="\car.htm" class="easyui-linkbutton" target="_blank">预览查看</a>
  </div>
  <%}%>
</x:tbody>
<script language="javascript">
function afterChoosePeople(){
	closePop();
	//打开另外一个popWin
	window.location.href= '<%=request.getParameter("edit") == null ? "/c/jsp/programManagement/taskPlanSearch" : "/c/jsp/task/toDoTasks"%>';
}
</script>
