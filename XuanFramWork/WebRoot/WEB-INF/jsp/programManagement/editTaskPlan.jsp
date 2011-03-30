<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="年度计划填报任务工单派发" iconCls="icon-dot">
  <div id="p" class="easyui-panel" title="" icon="" style="padding:2px; margin-bottom:2px;background:#fafafa;">
    <table class="userInput_table" cellspacing="0" cellpadding="0"
		border="1" style="margin: 1 auto; width: 100%;">
      <tr>
        <td class="td_context"><a href="#" class="easyui-linkbutton" iconcls="icon-ok" plain="true" onclick="alert('保存成功，可选择填报');">完成</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" plain="true" onclick="">重置</a>&nbsp;<a href="#" class="easyui-linkbutton" plain="true" onclick="alert('暂存成功');window.location.href= '/c/jsp/programManagement/taskPlanSearch';">暂存</a>&nbsp;<a href="#" class="easyui-linkbutton" plain="true" onclick="window.location.href= '<%=request.getParameter("edit") == null ? "/c/jsp/programManagement/taskPlanSearch" : "/c/jsp/task/toDoTasks"%>';">返回</a></td>
      </tr>
    </table>
  </div>
  <div id="p" class="easyui-panel" title="任务工单" icon="icon-edit" style="padding:2px; margin-bottom:2px;background:#fafafa;">
    <table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
      <tr>
        <td class="td_title">计划编码*</td>
        <td class="td_context"><input name="receipt_memo_number_condition" type="text" id="receipt_memo_number_condition" value="000001"/>        </td>
        <td class="td_title">计划名称*</td>
        <td class="td_context"><input name="receipt_memo_number_condition3" type="text" id="receipt_memo_number_condition3" value="计划名称"/></td>
        <td class="td_title">计划状态*</td>
        <td class="td_context">草稿</td>
      </tr>
      <tr>
        <td height="21" class="td_title">计划模板*</td>
        <td class="td_context"><select name="select" class="easyui-combobox" <%=request.getParameter("edit") == null ? "" : "disabled"%>>
            <option>---未选择---</option>
            <option selected>填报模板1</option>
            <option>填报模板2</option>
            <option>填报模板3</option>
          </select>        </td>
        <td class="td_title">所属年度*</td>
        <td class="td_context"><input name="operator_name_condition" type="text" id="operator_name_condition" value="2011"/></td>
        <td class="td_title">公司类型*</td>
        <td class="td_context"><input class="easyui-combobox" name="planStatus2" url="/json/companyType_data.json"	valuefield="id" textfield="text" editable="false"panelheight="auto" /></td>
      </tr>
      <tr>
        <td height="21" class="td_title">计划编报通知文号</td>
        <td class="td_context"><input name="textfield2" type="text" value="11111111" /></td>
        <td class="td_title">计划开始时间</td>
        <td class="td_context"><input name="Input4" class="easyui-datebox" id="dd" value="2011-01-01"/></td>
        <td class="td_title">最晚完成时间</td>
        <td class="td_context"><input name="Input" class="easyui-datebox" id="Input"  value="2011-12-31"/></td>
      </tr>
      <tr>
        <td height="21" class="td_title"><span class="td_context">计划经理*</span></td>
        <td class="td_context"><input  name="programManager"  value="张伟" readonly="true"/>&nbsp;<a href="#" class="easyui-linkbutton" plain="false" onclick="alert('弹出选择用户框')">选择</a></td>
        <td class="td_title">附件</td>
        <td class="td_context"><input type="file" name="file" /></td>
        <td class="td_title">备注</td>
        <td class="td_context"><textarea name="textarea" style="width:98%"></textarea></td>
      </tr>
    </table>
  </div>
  <x:grid id="first" hql="from AnnualInvestmentPlan" idfield="planId"
		sortName="planNum" where="planId > 3" onDblClickRow="window.location.href='/c/jsp/programManagement/publishedTaskPlan';">
	<x:gtb text="选择填报单位" iconCls="icon-add" handler="popWin('选择下阶段处理人', '/c/jsp/programManagement/chooseThePeople', 'icon-search', 780, 480);"/>
	<x:gtb text="移除填报单位" iconCls="icon-redo" handler="alert('移除填报单位');"/>
    <x:colsWrap>
      <x:col width="100" title="填报单位" field="planNum" sortable="true"
				frozen="true"></x:col>
      <x:col width="100" title="计划状态" field="planStatus"></x:col>
      <x:col width="100" title="填报人" field="programManager"></x:col>
	   <x:col width="100" title="填报日期" field="createDate" formatter="''"></x:col>
    </x:colsWrap>
  </x:grid>
</x:tbody>
<script language="javascript">
function afterChoosePeople(){
	closePop();
	//打开另外一个popWin
	window.location.href= '<%=request.getParameter("edit") == null ? "/c/jsp/programManagement/taskPlanSearch" : "/c/jsp/task/toDoTasks"%>';
}
</script>