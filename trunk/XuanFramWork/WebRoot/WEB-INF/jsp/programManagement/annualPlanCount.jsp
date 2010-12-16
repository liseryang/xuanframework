<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>
<x:tbody title="年度计划汇总" iconCls="icon-dot">
<table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
<tr>
<td class="td_title" width="10%">GSM核心网2011年建设计划</td>
  <td class="td_context"><a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-analysis">年度计划汇总</a>
  </td>
  </tr>
</table>
<table width="1139" class="easyui-datagrid" id="tt1" style="width:auto;height:auto;">
  <thead>
    <tr>
      <th width="52" field="name1"><input type="checkbox" name="checkbox" value="checkbox" /></th>
      <th width="52" field="name1"><strong>分公司</strong></th>
      <th width="196" field="name2"><strong>填报人</strong></th>
      <th width="235" field="name3"><strong>填报时间</strong></th>
      <th width="456" field="name4"><strong>状态</strong></th>
      <th width="108" field="name5">操作</th>
      </tr>
  </thead>
  <tbody>
    <tr>
      <td><div align="center">
        <input type="checkbox" name="checkbox2" value="checkbox" />
      </div></td>
      <td>福州</td>
      <td>张山</td>
      <td>20100909</td>
      <td>已经提交</td>
      <td><a href="#">催办</a></td>
      </tr>
    
    <tr>
      <td><div align="center">
        <input type="checkbox" name="checkbox3" value="checkbox" />
      </div></td>
      <td>厦门</td>
      <td>王五</td>
      <td>20100909</td>
      <td>已经提交</td>
      <td><a href="#">催办</a></td>
      </tr>
  </tbody>
</table>
</x:tbody>