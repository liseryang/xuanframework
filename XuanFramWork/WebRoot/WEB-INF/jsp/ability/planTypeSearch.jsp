<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="计划类别扩展" iconCls="icon-dot">
  <table id="planType">
  </table>
  <div id="planType_mm" class="easyui-menu" style="width:120px;">
		<div onclick="append()">修改</div>
		<div onclick="remove()">移除</div>
	</div>
</x:tbody>
<script>
		$(function(){
			$('#planType').treegrid({
				title:'扩展计划类别',
				iconCls:'icon-save',
				width:'auto',
				height:'auto',
				nowrap: false,
				rownumbers: false,
				animate:true,
				collapsible:false,
				url:"/json/treegrid_data_plan.json",
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
					{field:'name',title:'类别名称',width:120},
					{field:'addr',title:'说明',width:120,rowspan:2}
				]],
				toolbar:[{text:'增加',
						iconCls:'icon-add',
						handler:function(){popWin('增加扩展计划类别', '/c/jsp/ability/planTypeAdd', 'icon-search', 360, 200);}
				},'-'],
				onContextMenu: function(e,row){
					e.preventDefault();
					$(this).treegrid('unselectAll');
					$(this).treegrid('select', row.code);
					$('#planType_mm').menu('show', {
						left: e.pageX,
						top: e.pageY
					});
				}
			});
		});
		var codeIndex = 1000;
		function append(){
			popWin('增加扩展计划类别', '/c/jsp/ability/planTypeAdd', 'icon-search', 360, 200);
		}
		function remove(){
			var node = $('#planType').treegrid('getSelected');
			if (node){
				if (confirm("是否移除该类别？"))
				$('#planType').treegrid('remove', node.code);
			}
		}
</script>
