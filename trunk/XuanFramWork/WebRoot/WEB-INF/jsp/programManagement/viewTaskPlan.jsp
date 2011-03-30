<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="年度计划填报任务工单派发" iconCls="icon-dot">
  <div id="p" class="easyui-panel" style="padding:2px; margin-bottom:2px;background:#fafafa;"><table class="userInput_table" cellspacing="0" cellpadding="0"
		border="1" style="margin: 1 auto; width: 100%;">
      <tr>
        <td class="td_context">&nbsp;<a href="#" class="easyui-linkbutton" plain="true" onclick="window.location.href= '<%=request.getParameter("edit") == null ? "/c/jsp/programManagement/taskPlanSearch" : "/c/jsp/task/toDoTasks"%>';">返回</a></td>
      </tr>
    </table></div>
  <div id="p" class="easyui-panel" title="任务工单" icon="icon-edit" style="padding:2px; margin-bottom:2px;background:#fafafa;">
  <table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
    <tr>
      <td class="td_title">计划编码*</td>
      <td class="td_context">计划编码</td>
      <td class="td_title">计划名称*</td>
      <td class="td_context">计划名称</td>
      <td class="td_title">计划状态*</td>
      <td class="td_context">编制中</td>
    </tr>
    <tr>
      <td height="21" class="td_title">计划模板*</td>
      <td class="td_context">计划模板</td>
      <td class="td_title">所属年度*</td>
      <td class="td_context">所属年度</td>
      <td class="td_title">公司类型*</td>
      <td class="td_context">有限公司</td>
    </tr>
	<tr>
      <td height="21" class="td_title">计划编报通知文号</td>
      <td class="td_context">计划编报通知文号</span></td>
      <td class="td_title">计划开始时间</td>
      <td class="td_context">2010-10-15</td>
      <td class="td_title">最晚完成时间</td>
      <td class="td_context">2010-10-30</td>
    </tr>
    <tr>
      <td height="21" class="td_title"><span class="td_context">计划经理*</span></td>
      <td class="td_context">计划经理</td>
      <td class="td_title">附件</td>
      <td class="td_context">xxx模板.xls <a href="#" class="easyui-linkbutton" iconcls="icon-search" plain="true">查看</a></td>
      <td class="td_title">备注</td>
      <td class="td_context">&nbsp;</td>
    </tr>
  </table>
  </div>
   <x:grid id="first" hql="from AnnualInvestmentPlan" idfield="planId"
		sortName="planNum" where="planId > 3" onDblClickRow="alert('查看');" needCk="false">
    <x:colsWrap>
      <x:col width="100" title="填报单位" field="planNum" sortable="true"
				frozen="true"></x:col>
      <x:col width="100" title="计划状态" field="planStatus"></x:col>
      <x:col width="100" title="填报人" field="programManager"></x:col>
	   <x:col width="100" title="填报日期" field="createDate"></x:col>
    </x:colsWrap>
    <x:grm iconCls="icon-redo" handler="alert('催办');" text="催办"/>
	<x:grm iconCls="icon-search" handler="alert('查看');" text="查看"/>
  </x:grid>
</x:tbody>
<script language="javascript">
function afterChoosePeople(){
	closePop();
	//打开另外一个popWin
	window.location.href= '<%=request.getParameter("edit") == null ? "/c/jsp/programManagement/taskPlanSearch" : "/c/jsp/task/toDoTasks"%>';
}
</script>
