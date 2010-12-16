<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:directive.page import="com.xuan.tag.TagGlobalNames" />
<jsp:directive.page import="java.util.HashMap" />
<jsp:directive.page import="java.util.Map" />
<jsp:directive.page import="java.util.Iterator" />
<%if (request.getAttribute("xuan_ui_page_nav") != null && !request.getAttribute("xuan_ui_page_nav").equals("null")) {%>
</div>
<%} %>
</body>
</html>
<script><!--
$().ready(function(){
});
<%
Map grids = (HashMap)request.getAttribute(TagGlobalNames.TAG_GRIDS);
if (grids != null){
	Iterator iter = grids.entrySet().iterator();
	while (iter.hasNext()) {
	    Map.Entry entry = (Map.Entry) iter.next();
	    String key = (String)entry.getKey();
	    com.xuan.tag.util.GridPropertiesBean val = (com.xuan.tag.util.GridPropertiesBean)entry.getValue();
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
		url:'/c/t/q/<%=val.getId()%><%=val.getQueryId() == null ? "" : "/"+val.getQueryId()%>',
		queryParams:getParams('<%=val.getId()%>'),
		remoteSort: true,
		idField:'<%=val.getIdfield()%>',
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
            	com.xuan.tag.util.ColumnPropertiesBean cpb = (com.xuan.tag.util.ColumnPropertiesBean)val.getFrozenColumns().get(i);
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
			        	com.xuan.tag.util.ColumnPropertiesBean cpb = (com.xuan.tag.util.ColumnPropertiesBean)tmp.get(j);
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
					//加一列操作
					<%
					if (i == 0 && val.getRowContextMenus().size() > 0){
					%>
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
		<%if (val.getQueryId() != null){%>
		//detail View begin		
		/*view: detailview,
		detailFormatter: function(rowIndex, rowData){
			        return '<table><tr>' +
	                '<td style="border:0">' +
	                '<p>计划编号: ' + rowData.planNum + '</p>' +
	                '<p>计划状态: ' + rowData.planStatus + '</p>' +
	                '</td>' +
	                '</tr></table>';
		},*/
		<%}%>
		//detail View end
		
		// toolbars begin
		<%if (val.getToolBars().size() > 0){%>
		toolbar:[
			//$(".datagrid-toolbar"); 
		 <%
		 for(int i = 0;i < val.getToolBars().size();i++){
			 com.xuan.tag.util.GridToolBarBean tbb = (com.xuan.tag.util.GridToolBarBean)val.getToolBars().get(i);
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
			<%if (val.isNeedPrint()){%>
			{
				iconCls:'icon-print',
				handler:function(){
				popWin('打印','/c/jsp/comm/print?id=<%=val.getId()%>','icon-print',640,480);
				}
			},
			<%}%>
			<%if (val.isNeedPrint() || val.isNeedConfig()){%>
			'-'
			<%}%>
			<%if (val.isNeedConfig()){%>
			,{
				iconCls:'icon-config',
				handler:function(){
				popWin('配置','/c/jsp/comm/config?id=<%=val.getId()%>','icon-config',640,480);
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
		 com.xuan.tag.util.GridRowContextMenuBean rcm = (com.xuan.tag.util.GridRowContextMenuBean)val.getRowContextMenus().get(i);
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
--></script>