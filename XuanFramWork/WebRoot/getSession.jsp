<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>获得Session里面所有的参数</title>
</head>
<body>
<table>
	<tr>
		<td>name</td>
		<td>class</td>
		<td>value</td>
	</tr>
<%
	Enumeration en = session.getAttributeNames();
	String tmp = "";
	while (en.hasMoreElements()) {
		tmp = (String) en.nextElement();
		out.print("<tr>");
		out.print("<td>"+tmp+"</td>");
		out.print("<td>"+session.getAttribute(tmp).getClass()+"</td>");
		out.print("<td>"+session.getAttribute(tmp)+"</td>");
		out.print("</tr>");
	}
%>
</table>
</body>
</html>