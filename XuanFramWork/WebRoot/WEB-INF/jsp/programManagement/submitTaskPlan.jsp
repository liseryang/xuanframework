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
        <td class="td_context">&nbsp;<a href="#" class="easyui-linkbutton" onclick="alert('暂存成功');window.location.href= '/c/jsp/programManagement/taskPlanSearch';">暂存</a>&nbsp;<a href="\car.xls" class="easyui-linkbutton" target="_blank">下载模板</a>&nbsp;<a href="#" class="easyui-linkbutton" onclick="alert('弹出上传，选择数据文件上传并处理');">上传模板</a>&nbsp;
<a href="#" class="easyui-linkbutton" onclick="window.location.href= '/c/jsp/task/toDoTasks';">返回</a></td>
      </tr>
    </table>
  </div>
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
</x:tbody>
<script language="javascript">
function afterChoosePeople(){
	closePop();
	//打开另外一个popWin
	window.location.href= '/c/jsp/task/toDoTasks';
}
</script>
