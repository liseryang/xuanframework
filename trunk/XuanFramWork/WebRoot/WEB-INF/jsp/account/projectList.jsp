<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody>
<div id="p" class="easyui-panel" title="项目列表" icon="icon-polygon" style="padding:2px; margin-bottom:2px;background:#fafafa;">
  <table width="673" class="easyui-datagrid" id="tt2" style="width:auto;height:auto;">
  <thead>
        <tr>
            <th field="name1" width="85"><strong>项目编号</strong></th>
            <th field="name2" width="96"><strong>项目名称</strong></th>
            <th field="name3" width="74"><strong>MIS编号</strong></th>
			
            <th field="name4" width="95"><strong>立项文号</strong></th>
			<th field="name5" width="82"><strong>项目性质</strong></th>
			<th field="name6" width="201"><strong>专业类别</strong></th>
		</tr>                          
    </thead>  

    <tbody>
      <tr>
        <td>100001</td>
        <td>测试项目A</td>
        <td>mis00001</td>
        <td>A00001</td>
        <td>省管</td>
        <td>GSM网络建设</td>
        </tr>
      <tr>
        <td>100002</td>
        <td>测试项目B</td>
        <td>mis00002</td>
        <td>A00002</td>
        <td>省管</td>
        <td>数据业务网-WAP网关</td>
        </tr>
      <tr>
        <td>200001</td>
        <td>测试项目C</td>
        <td>mis00003</td>
        <td>C00001</td>
        <td>市管</td>
        <td>数据承载网短信系统（SMSC）</td>
        </tr>
      <tr>
        <td>220001</td>
        <td>测试项目DD</td>
        <td>mis0000DD</td>
        <td>DD0001</td>
        <td>省管</td>
        <td>传输网传输-管道</td>
        </tr>
    </tbody>
  </table>
  </div>
  <div align="center"><a href="###" onclick="parent.closePop();" class="easyui-linkbutton" iconcls="icon-ok" >选择</a>
  </div>
</x:tbody>
