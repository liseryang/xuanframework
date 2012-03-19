<%com.xuan.tag.util.GridPropertiesBean gpb = (com.xuan.tag.util.GridPropertiesBean)request.getAttribute(com.xuan.tag.TagGlobalNames.TAG_GRID_OBJECT);%>
<form action="" method="post" id="fm_<%=gpb.getId()%>" name="fm_<%=gpb.getId()%>">
<%if (gpb.getQueryId() == null) {%>
<input id="_<%=gpb.getId()%>_hql" name="_<%=gpb.getId()%>_hql" type="hidden" value="<%=gpb.getHql()%>" />
<input id="_<%=gpb.getId()%>_where" name="_<%=gpb.getId()%>_where" type="hidden" value="<%=gpb.getWhere()%>" />
<input id="_<%=gpb.getId()%>_groupby" name="_<%=gpb.getId()%>_groupby" type="hidden" value="<%=gpb.getGroupBy()%>" />
<input id="_<%=gpb.getId()%>_orderby" name="_<%=gpb.getId()%>_orderby" type="hidden" value="<%=gpb.getOrderBy() == null ? "" : gpb.getOrderBy()%>" />
<input id="_<%=gpb.getId()%>_idfield" name="_<%=gpb.getId()%>_idfield" type="hidden" value="<%=gpb.getIdfield()%>" />
<%} %>

<!-- search tag begin -->