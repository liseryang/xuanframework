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
      <td class="td_context">计划编码</td>
      <td class="td_title">计划名称*</td>
      <td class="td_context">计划年度</td>
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
      <td height="21" class="td_title"><span class="td_context">计划经理*</span></td>
      <td class="td_context">计划经理</td>
      <td class="td_title">创建人*</td>
      <td class="td_context">创建人</td>
      <td class="td_title">创建时间*</td>
      <td class="td_context">2010-10-13</td>
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
      <td height="21" class="td_title">附件</td>
      <td class="td_context">xxx模板.xls <a href="#" class="easyui-linkbutton" iconcls="icon-search" plain="true">查看</a></td>
      <td class="td_title">备注</td>
      <td class="td_context">&nbsp;</td>
      <td colspan="2" class="td_context"><div align="center"><a href="#" class="easyui-linkbutton" iconcls="icon-ok" plain="true" onclick="alert('保存成功，可选择填报');">保存</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" plain="true" onclick="">重置</a></div></td>
    </tr>
  </table>
  </div>
   <x:grid id="first" hql="from AnnualInvestmentPlan" idfield="planId"
		sortName="planNum" where="planId > 3" onDblClickRow="window.location.href='/c/jsp/programManagement/publishedTaskPlan';">
	<x:gtb text="汇总填报模板" iconCls="icon-add" handler="alert('汇总');"/>
	<x:gtb text="催办填报任务" iconCls="icon-redo" handler="alert('催办');"/>
	<x:gtb text="查看汇总明细" iconCls="icon-search" handler="windowOpen('查看', '/car.htm');"/>
    <x:colsWrap>
      <x:col width="100" title="填报单位" field="planNum" sortable="true"
				frozen="true"></x:col>
      <x:col width="100" title="计划状态" field="planStatus"></x:col>
      <x:col width="100" title="填报人" field="programManager"></x:col>
	   <x:col width="100" title="填报日期" field="createDate"></x:col>
    </x:colsWrap>
	<x:grm iconCls="icon-add" handler="alert('催办');" text="汇总"/>
    <x:grm iconCls="icon-redo" handler="alert('催办');" text="催办"/>
	<x:grm iconCls="icon-search" handler="alert('查看');" text="查看"/>
	<x:grm iconCls="icon-undo" handler="popWin('退回', '/c/jsp/programManagement/returnThePeople', 'icon-help', 500, 300);" text="退回"/>
  </x:grid>
</x:tbody>
<script language="javascript">
function afterChoosePeople(){
	closePop();
	//打开另外一个popWin
	window.location.href= '<%=request.getParameter("edit") == null ? "/c/jsp/programManagement/taskPlanSearch" : "/c/jsp/task/toDoTasks"%>';
}
</script>
