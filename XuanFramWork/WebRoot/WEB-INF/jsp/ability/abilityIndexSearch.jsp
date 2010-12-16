<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="能力指标" iconCls="icon-dot">
  <table id="test">
  </table>
  <div id="mm" class="easyui-menu" style="width:120px;">
		<div onclick="append()">修改指标</div>
		<div onclick="remove()">移除指标</div>
	</div>
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
					{field:'addr',title:'单位',width:120,rowspan:2},
					{field:'col4',title:'指标定义',width:280,rowspan:2}
				]],
				toolbar:[{text:'增加',
						iconCls:'icon-add',
						handler:function(){popWin('增加能力指标', '/c/jsp/ability/abilityIndexAdd', 'icon-search', 360, 200);}
				},'-'],
				onContextMenu: function(e,row){
					e.preventDefault();
					$(this).treegrid('unselectAll');
					$(this).treegrid('select', row.code);
					$('#mm').menu('show', {
						left: e.pageX,
						top: e.pageY
					});
				}
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
