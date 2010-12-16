<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="2010年GSM网络建设计划" iconCls="icon-dot">
<div id="p" class="easyui-panel" title="项目列表" icon="icon-polygon" style="padding:2px; margin-bottom:2px;background:#fafafa;">
  <table class="easyui-datagrid" id="tt2" style="width:auto;height:auto;">
  <thead>
        <tr>
            <th field="name1" width="63"><strong>项目编号</strong></th>
            <th field="name2" width="76"><strong>项目名称</strong></th>
            <th field="name3" width="80"><strong>MIS编号</strong></th>
			
            <th field="name4" width="75"><strong>立项文号</strong></th>
			<th field="name5" width="56"><strong>项目性质</strong></th>
			<th field="name6" width="196"><strong>专业类别</strong></th>
			
			<th field="name7" width="92"><strong>项目状态</strong></th>
            <th field="name8" width="74"><strong>工程物质</strong></th>
            <th field="name9" width="73"><strong>在建工程</strong></th>
            <th field="name10" width="73"><strong>资产总额</strong></th>
            <th field="name11" width="54"><strong>操作</strong></th>
        </tr>                          
    </thead>  

    <tbody>
      <tr>
        <td>100001</td>
        <td><a href=projectDetail>测试项目A</a></td>
        <td>mis00001</td>
        <td>A00001</td>
        <td>省管</td>
        <td>GSM网络建设</td>
        <td>设计审批结束</td>
        <td><div align="right">100000.00</div></td>
        <td><div align="right">0.00</div></td>
        <td><div align="right">100000.00</div></td>
        <td><a class="easyui-linkbutton" plain="true" href="projectDetail">查看</a></td>
      </tr>
      <tr>
        <td>100002</td>
        <td><a href=projectDetail>测试项目B</a></td>
        <td>mis00002</td>
        <td>A00002</td>
        <td>省管</td>
        <td>数据业务网-WAP网关</td>
        <td>立项审批中</td>
        <td><div align="right">100000.00</div></td>
        <td><div align="right">0.00</div></td>
        <td><div align="right">100000.00</div></td>
        <td><a class="easyui-linkbutton" plain="true" href="projectDetail">查看</a></td>
      </tr>
      <tr>
        <td>200001</td>
        <td><a href=projectDetail>测试项目C</a></td>
        <td>mis00003</td>
        <td>C00001</td>
        <td>市管</td>
        <td>数据承载网短信系统（SMSC）</td>
        <td>立项审批结束</td>
        <td><div align="right">0.00</div></td>
        <td><div align="right">0.00</div></td>
        <td><div align="right">100000.00</div></td>
        <td><a class="easyui-linkbutton" plain="true" href="projectDetail">查看</a></td>
      </tr>
      <tr>
        <td>220001</td>
        <td><a href=projectDetail>测试项目DD</a></td>
        <td>mis0000DD</td>
        <td>DD0001</td>
        <td>省管</td>
        <td>传输网传输-管道</td>
        <td>预转固结束</td>
        <td><div align="right">0.00</div></td>
        <td><div align="right">100000.00</div></td>
        <td><div align="right">100000.00</div></td>
        <td><a class="easyui-linkbutton" plain="true" href="projectDetail">查看</a></td>
      </tr>
    </tbody>
  </table>
  </div>
  <div align="center" style=" padding-top:2px;"><a href="#" class="easyui-linkbutton" onclick="window.location.href= '/c/jsp/programManagement/annualPlanSearch';">返回</a></div>
</x:tbody>
