<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:directive.page import="com.pccw.tag.TagGlobalNames" />
<jsp:directive.page import="java.util.HashMap" />
<jsp:directive.page import="java.util.Map" />
<jsp:directive.page import="java.util.Iterator" />
<jsp:directive.page import="java.util.List" />
<jsp:directive.page import="java.util.ArrayList" />
<%if (request.getAttribute("xuan_ui_page_nav") != null && !request.getAttribute("xuan_ui_page_nav").equals("null")) {%>
</div>
<%} %>
</body>
</html>
<script>
$().ready(function(){
});

<%
Map grids = (HashMap)request.getAttribute(TagGlobalNames.TAG_GRIDS);
if (grids != null){
	Iterator iter = grids.entrySet().iterator();
	while (iter.hasNext()) {
	    Map.Entry entry = (Map.Entry) iter.next();
	    String key = (String)entry.getKey();
	    com.pccw.tag.util.GridPropertiesBean val = (com.pccw.tag.util.GridPropertiesBean)entry.getValue();
	    List sortList = new ArrayList();
%>
$(function(){
	$('#<%=val.getId()%>').datagrid({
		title:'<%=val.getTitle()%>',
		iconCls:'<%=val.getIconCls()%>',
		width:'<%=val.getWidth()%>',
		height:'<%=val.getHeight().equalsIgnoreCase("auto") ? "300" : val.getHeight()%>',
		nowrap: <%=val.isNowrap()%>,
		striped: <%=val.isStriped()%>,
		sortName: '<%=val.getSortName() == null ? "" : val.getSortName()%>',
		sortOrder: '<%=val.getSortOrder() == null ? "asc" : val.getSortOrder()%>',
		url:'<%=val.getQueryURL()%>',
		queryParams:getParams('<%=val.getId()%>'),
		remoteSort: true,
		pagination:<%=val.isPagination()%>,
		rownumbers:<%=val.isRownumbers()%>,
		singleSelect:<%=val.isSingleSelect()%>,
		pageNumber:1,
		collapsible:false,
		pageSize:<%=val.getPageSize()%>,
		pageList:<%=val.getPageList()%>,
		// columns begin
		frozenColumns:[[
		    <%if(val.isNeedCk()){%>
            {field:'ck',checkbox:true},
            <%}%>
            <%
            for(int i = 0;i < val.getFrozenColumns().size();i++){
            	if(i > 0) out.print(",");
            	com.pccw.tag.util.ColumnPropertiesBean cpb = (com.pccw.tag.util.ColumnPropertiesBean)val.getFrozenColumns().get(i);
            	if (cpb.isSortable() && !cpb.getSortField().equals("")) sortList.add(cpb);
            %>
            {field:'<%=cpb.getField()%>',
             title:'<%=cpb.getTitle()%>',
             width:<%=cpb.getWidth()%>,
             align:'<%=cpb.getAlign()%>',
             sortable:<%=cpb.isSortable()%>,
          	 rowspan:<%=cpb.getRowspan()%>,
          	 colspan:<%=cpb.getColspan()%>
          	 <%if(cpb.getFormatter()!=null){%>
          	 ,formatter:function(value,rec){
					return "<%=cpb.getFormatter()%>";
				}
          	 <%}%>
          	 }
            <%}%>
		]],
		columns:[
		         <%
				 for(int i = 0;i<val.getColumns().size();i++){
					 if (i > 0) out.print(",");
					 java.util.List tmp = (java.util.List)val.getColumns().get(i);
				 %>
				 [
			        <%
			        for(int j=0;j<tmp.size();j++){
			        	if (j > 0) out.print(",");
			        	com.pccw.tag.util.ColumnPropertiesBean cpb = (com.pccw.tag.util.ColumnPropertiesBean)tmp.get(j);
			        	if (cpb.isSortable() && !cpb.getSortField().equals("")) sortList.add(cpb);
			        %>
			        {field:'<%=cpb.getField()%>',
			             title:'<%=cpb.getTitle()%>',
			             width:<%=cpb.getWidth()%>,
			             align:'<%=cpb.getAlign()%>',
			             sortable:<%=cpb.isSortable()%>,
			          	 rowspan:<%=cpb.getRowspan()%>,
			          	 colspan:<%=cpb.getColspan()%>
			          	 <%if(cpb.getFormatter()!=null){%>
			          	 ,formatter:function(value,rec){
								return <%=cpb.getFormatter()%>;
							}
			          	 <%}%>
			          	 
			        }
					<%
			        }
					%>
					<%
					if (i == 0 && val.getRowContextMenus().size() > 0){
					%>
					//加一列操作
					,{field:'<%=val.getId()%>_myOp',
						title:'操作',
						width:60,align:'center',
						rowspan:<%=val.getColumns().size()%>,
						formatter:function(value,rowData,rowIndex){
							return "<img src='/styles/icons/keys.png' style='cursor:pointer' onClick='handRow(event,\"<%=val.getId()%>\","+rowIndex+");'/>"; 
						}
					}
					<%}%>
				]
				<%}%>
				],
		// columns end
		
		// toolbars begin
		<%if (val.getToolBars().size() > 0){%>
		toolbar:[
			//$(".datagrid-toolbar"); 
		 <%
		 for(int i = 0;i < val.getToolBars().size();i++){
			 com.pccw.tag.util.GridToolBarBean tbb = (com.pccw.tag.util.GridToolBarBean)val.getToolBars().get(i);
		 %>
		 	<%if (i > 0){%>
		 	,'-',
		 	<%}%>
			{text:'<%=tbb.getText()%>',
			iconCls:'<%=tbb.getIconCls() == null ? "" : tbb.getIconCls()%>',
			handler:function(){
				<%=tbb.getHandler()%>
			}
			}
		<%}%>
		],
		<%}%>
		// toolbars end
		<%
		if (sortList.size()>0){
		%>
		
		onSortColumn:function(sort, order){
			<%
			for(int i = 0;i<sortList.size();i++){
				com.pccw.tag.util.ColumnPropertiesBean cpb = (com.pccw.tag.util.ColumnPropertiesBean)sortList.get(i);
			%>
			if (sort == '<%=cpb.getField()%>'){ $('#<%=val.getId()%>').datagrid('options').sortName = "<%=cpb.getSortField()%>";return;}
			<%
			}
			%>
			alert(sort);
			alert(order);
			//$('#<%=val.getId()%>').datagrid('options').sortName = "order_header_id";
			alert($('#<%=val.getId()%>').datagrid('options').sortName);
		},
		<%
		}
		%>
		<%if (val.getOnDblClickRow() != null){%>
		onDblClickRow:function(rowIndex,rec){
			<%=val.getOnDblClickRow()%>
		},
		<%}%>
		<%if (val.getOnClickRow() != null){%>
		onClickRow:function(rowIndex){
			<%=val.getOnClickRow()%>
		}
		<%}%>
		<%
		if (val.getRowContextMenus().size() > 0){
		%>
		onRowContextMenu:function(e, rowIndex, rowData){
			e.preventDefault();
			<%=val.getId()%>_createRowMenu(rowData);
			$('#<%=val.getId()%>_rowmenu').menu('show', {
				left:e.pageX,
				top:e.pageY
			});
			$("#<%=val.getId()%>_rowmenu").find("div[disabled='true']").unbind("mouseover").unbind("click").css("color","#ccc");
		}
		<%}%>
	});
	<%if (val.isPagination()){%>
	var p = $('#<%=val.getId()%>').datagrid('getPager');
	if (p){
		$(p).pagination({
			buttons:[
			<%if (val.isNeedExport()){%>
			{
				iconCls:'icon-excel',
				text:'导出Excel',
				handler:function(){
				popWin('导出Excel','/comm/exportSetup.jsp?id=<%=val.getId()%>&count=100','icon-excel',320,240);
				}
			}
			<%}%>
			]
		});
	}
	<%}%>
});
//需要处理右键部分
<%
if (val.getRowContextMenus().size() > 0){
%>
function <%=val.getId()%>_createRowMenu(rowData){
	if ($('#<%=val.getId()%>_rowmenu').length){
		$('#<%=val.getId()%>_rowmenu').remove();
	}
	var rowmenu = $('<div id="<%=val.getId()%>_rowmenu" style="width:100px;"></div>').appendTo('body');
	<%
	StringBuffer sb = new StringBuffer();
	 for(int i = 0;i < val.getRowContextMenus().size();i++){
		 com.pccw.tag.util.GridRowContextMenuBean rcm = (com.pccw.tag.util.GridRowContextMenuBean)val.getRowContextMenus().get(i);
		 sb.append(i > 0 ? "else " : "");
		 sb.append("if (item.iconCls=='");
		 sb.append(rcm.getIconCls());
		 sb.append("'){");
		 sb.append(rcm.getHandler());
		 sb.append("}");
	%>
	$('<div iconCls="<%=rcm.getIconCls()%>"/>').html("<%=rcm.getText()%>").attr("disabled",eval(<%=rcm.getDisabled()%>)).appendTo(rowmenu);
	<%}%>
	rowmenu.menu({
		onClick: function(item){
			<%=sb.toString()%>
		}
	});
}
<%
}
%>
//需要处理右键部分 end
<%}
}
%>
</script>
