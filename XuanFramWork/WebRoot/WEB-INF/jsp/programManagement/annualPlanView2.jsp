<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>
<x:tbody title="查看年度计划-总部" iconCls="icon-dot">
<table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
<tr>
<td class="td_title" width="10%">GSM核心网2011年建设计划</td>
  <td class="td_context"><a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-analysis">计划汇总表</a> <a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-doc">部门1</a> <a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-doc">部门2</a> <a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-doc">部门3</a> 
  </td>
  </tr>
</table>
<table width="1608" class="easyui-datagrid" id="tt1" style="width:auto;height:auto;">
  <thead>
    <tr>
      <th width="70" field="name1"><strong>建设单位</strong></th>
      <th width="350" field="name2"><strong>项目类别</strong></th>
      <th width="391" field="name3"><strong>项目名称</strong></th>
      <th width="116" field="name4"><strong>建设规模</strong></th>
      <th width="137" field="name5"><strong>项目投资</strong></th>
      <th width="121" field="name6"><strong>2011开支计划</strong></th>
      <th width="149" field="name7"><strong>预计结转2012年开支</strong></th>
      <th width="131" field="name8"><strong>2011年预计转资</strong></th>
      </tr>
  </thead>
  <tbody>
    
    <tr>
      <td>部门1</td>
      <td>GSM工程</td>
      <td>2011年省统筹GSM工程</td>
      <td>一干项目</td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      </tr>
    
    <tr>
      <td><span style="color:blue">部门2</span></td>
      <td><span style="color:blue">传输工程</span></td>
      <td><span style="color:blue">2011年省统筹传输工程</span></td>
      <td><span style="color:blue">一干项目</span></td>
      <td><div align="right"><span style="color:blue">20000.00</span></div></td>
      <td><div align="right"><span style="color:blue">20000.00</span></div></td>
      <td><div align="right"><span style="color:blue">20000.00</span></div></td>
      <td><div align="right"><span style="color:blue">20000.00</span></div></td>
      </tr>
    
    <tr>
      <td>部门3</td>
      <td>土建项目（含营业厅购置项目）</td>
      <td>2011年土建项目（含营业厅购置项目）</td>
      <td>项目规模说明</td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      </tr>
    <tr>
      <td>部门2</td>
      <td>新技术新业务（含WLAN、小区宽带、集团客户等项目）</td>
      <td>2011年新技术新业务（含WLAN、小区宽带、集团客户等项目）</td>
      <td>项目规模说明</td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      </tr>
    <tr>
      <td>部门1</td>
      <td>支撑网项目（含网管、计费、信息化等项目）</td>
      <td>2011年支撑网项目（含网管、计费、信息化等项目）</td>
      <td>项目规模说明</td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      </tr>
    <tr>
      <td>部门3</td>
      <td>其他项目（含消防、配套改造等项目）</td>
      <td>2011年其他项目（含消防、配套改造等项目）</td>
      <td>项目规模说明</td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      <td><div align="right">20000.00</div></td>
      </tr>
  </tbody>
</table>
<table id="test">
  </table>
</x:tbody>
<script>
		$(function(){
			$('#test').treegrid({
				title:'能力指标',
				iconCls:'icon-save',
				width:'auto',
				height:'auto',
				nowrap: false,
				rownumbers: false,
				animate:true,
				collapsible:false,
				url:"/json/treegrid_data.json",
				idField:'code',
				treeField:'code',
				frozenColumns:[[
	                {title:'代码',field:'code',width:150,
		                formatter:function(value){
		                	return '<span style="color:red">'+value+'</span>';
		                }
	                }
				]],
				columns:[[
					{field:'name',title:'指标名称',width:120},
					{field:'addr',title:'单位',width:120},
					{field:'col4',title:'指标定义',width:280},
					{field:'col5',title:'2009年达到数量',width:280,formatter:function(value){
		                	return '<span style="color:blue">2009年达到数量</span>';
		                }},
					{field:'col6',title:'2010年底预测到达数量',width:280,formatter:function(value){
		                	return '<span style="color:green">2009年达到数量</span>';
		                }},
					{field:'col7',title:'2011年底预测到达数量',width:280,formatter:function(value){
		                	return '<span style="color:red">2009年达到数量</span>';
		                }}
				]]
			});
		});
		var codeIndex = 1000;
		function append(){
			popWin('增加能力指标', '/c/jsp/ability/abilityIndexAdd', 'icon-search', 360, 200);
		}
		function remove(){
			var node = $('#test').treegrid('getSelected');
			if (node){
				if (confirm("是否移除该指标？"))
				$('#test').treegrid('remove', node.code);
			}
		}
</script>