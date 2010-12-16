<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>
<x:tbody title="测试页面" iconCls="icon-polygon">

</x:tbody>
<script language="javascript">
$.messager.confirm('确认', 'Msg',aa = function(r) {
		alert(r);
	});
</script>