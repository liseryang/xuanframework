<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>
<x:tbody title="测试页面">
  <!-- 
  <div id="toolBar">这里是一组按钮</div>
  <div id="search">这里是一组条件</div> -->
    <form action="" method="post" id="fm0" name="fm0">

      <input id="_first_hql" name="_first_hql" type="hidden" value="from Users" />
      <input id="_first_where" name="_first_where" type="hidden" value="1=1" />
      <input id="_first_groupby" name="_first_groupby" type="hidden" value="" />
      <input id="_first_sort_name" name="_first_sort_name" type="hidden" value="username" />
      <input id="_first_sort_order" name="_first_sort_order" type="hidden" value="" />
      <input id="_first_idfield" name="_first_idfield" type="hidden" value="id" />
      
      <input id="_first_field" name="_first_field" type="text" value="username" />
      <input id="_first_type" name="_first_type" type="text" value="String" />
      <input id="_first_operator" name="_first_operator" type="text" value="like" />
      <input id="_first_value" name="_first_value" type="text" value="" />
      
      <input id="_first_field" name="_first_field" type="text" value="username" />
      <input id="_first_type" name="_first_type" type="text" value="String" />
      <input id="_first_operator" name="_first_operator" type="text" value="like" />
      <input id="_first_value" name="_first_value" type="text" value="" />
      
      <input id="_first_search" name="_first_search" type="button" value="查询" onclick="searchPage('test');" />
      <input name="getSelVal" type="button" id="getSelVal" value="getSelVal" onclick="getSelections();"/>
    </form>
    <table id="test">
    </table>
</x:tbody>
<script>
function searchPage(id){
	$('#test').datagrid('options').queryParams=getParams('first');
	$('#test').datagrid('getPager').pagination('options').pageNumber = 1;
	$('#test').datagrid('options').pageNumber=1;
	$('#test').datagrid('reload');
	$('#test').datagrid('clearSelections');
}

		$(function(){
			$('#test').datagrid({
				//Panel的标题
				title:'表格实例',
				//Panel的图标
				iconCls:'icon-polygon',
				url:'/c/t/q/first',
				//Grid 宽度,默认为'auto'
				width:'auto',//document.documentElement.clientWidth - 10,
				//Grid 高度,默认为'auto'最好不这么做
				height:300,
				//内容是否在一行显示，默认true
				nowrap: false,
				//间隔显示，默认为falss
				striped: true,
				queryParams:getParams('first'),
				//初始排序字段,默认没有
				sortName: 'username',
				//初始排序顺序,默认asc
				sortOrder: 'asc',
				//服务器端排序,默认true
				remoteSort: true,
				//主键
				idField:'id',
				//是否需要分页，默认false
				pagination:true,
				//是否需要行号，默认false
				rownumbers:true,
				//是否只能单选，默认为false
				singleSelect:false,
				//Grid的页数，默认为1
				pageNumber:1,
				//Grid的页大小，默认为10
				pageSize:10,
				//Grid的分页，默认为[10,20,30,40,50]
				pageList:[10,20,30,40,50],
				collapsible:true,
				// columns begin
				frozenColumns:[[
				    
		            {field:'ck',checkbox:true},
		            
		            
		            {field:'username',
		             title:'名字',
		             width:100,
		             align:'left',
		             sortable:true,
		          	 rowspan:0,
		          	 colspan:0
		          	 
		          	 }
		            
				]],
				columns:[
				         
						 [
					        
					        {field:'pwd',
					             title:'密码',
					             width:100,
					             align:'left',
					             sortable:true,
					          	 rowspan:0,
					          	 colspan:0
					          	 
					          	 ,formatter:function(value,rec){
										return '*******';
									}
					          	 
					          	 }
							,
					        {field:'disabled',
					             title:'启用',
					             width:100,
					             align:'left',
					             sortable:false,
					          	 rowspan:0,
					          	 colspan:0
					          	 
					          	 ,formatter:function(value,rec){
										return value == '1' ? '是' :'否';
									}
					          	 
					          	 }
							
						]
						
						],
				// columns end				
				//双击一行
				onClickRow:function(rowIndex,rec){
					//alert("单击行："+rec.code);
				},
				//双击一行
				onDblClickRow:function(rowIndex){
					//alert("双击行"+rowIndex);
				},
				onSortColumn:function(sort, order){
					
				}
			
			});
			var p = $('#test').datagrid('getPager');
			if (p){
				$(p).pagination({
					buttons:[{
						iconCls:'icon-print',
						handler:function(){
						alert('Print');
						}
					},'-',{
						iconCls:'icon-config',
						handler:function(){
						alert('config');
						}
					}]
					
				});
			}
		});
		
	</script>
