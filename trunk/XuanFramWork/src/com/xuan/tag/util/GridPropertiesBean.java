package com.xuan.tag.util;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;

public class GridPropertiesBean {
	// 标识Grid用必须填写
	private String id;
	// Grid的标题，可以不写
	private String title = "";
	// 图标,可以不写
	private String iconCls = "";
	// 高度,为空就需要转换为Auto
	private String width = "auto";
	// 宽度,为空就要转换为Auto
	private String height = "300";
	// 内容是否在一行显示，默认true
	private boolean nowrap = true;
	// 间隔显示，默认true
	private boolean striped = true;
	// 是否需要分页，默认true
	private boolean pagination = true;
	// 是否需要行号，默认true
	private boolean rownumbers = true;
	// 是否只能单选，默认为false
	private boolean singleSelect = false;
	// 每页大小
	private Integer pageSize = 10;
	// 每页大小列表
	private String pageList = "[10,20,30,40,50]";
	// 需要多选框，默认为true
	private boolean needCk = true;
	// 是否需要打印，默认true，没有pagination，则不行
	private boolean needPrint = true;
	// 是否需要配置，默认true，没有pagination，则不行
	private boolean needConfig = true;
	// 单击一行的方法，直接写js，两个参数，rowIndex,rec,为null则不处理
	private String onClickRow = null;
	// 双击方法,如果有操作,那么默认第一个为双击, 参数rowIndex，直接写js代码
	private String onDblClickRow = null;
	private String hql;
	private String idfield = "";// 多个以,分割
	private String where = "1=1";
	private String groupBy = "";
	private String orderBy = idfield;// 如果没有就默认排序为 idfield;
	private String sortName;
	private String sortOrder;
	
	private String queryId;

	private List<Object> frozenColumns = new ArrayList<Object>();//冻结列
	
	private List<Object> columns = new ArrayList<Object>();//自由列
	
	private List<GridToolBarBean> toolBars = new ArrayList<GridToolBarBean>();//工具条按钮

	private List<GridRowContextMenuBean> rowContextMenus = new ArrayList<GridRowContextMenuBean>();//行右键菜单

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}

	public String getWidth() {
		return width;
	}

	public void setWidth(String width) {
		this.width = width;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public boolean isNowrap() {
		return nowrap;
	}

	public void setNowrap(boolean nowrap) {
		this.nowrap = nowrap;
	}

	public boolean isStriped() {
		return striped;
	}

	public void setStriped(boolean striped) {
		this.striped = striped;
	}

	public boolean isPagination() {
		return pagination;
	}

	public void setPagination(boolean pagination) {
		this.pagination = pagination;
	}

	public boolean isRownumbers() {
		return rownumbers;
	}

	public void setRownumbers(boolean rownumbers) {
		this.rownumbers = rownumbers;
	}

	public boolean isSingleSelect() {
		return singleSelect;
	}

	public void setSingleSelect(boolean singleSelect) {
		this.singleSelect = singleSelect;
	}

	public String getPageList() {
		return pageList;
	}

	public void setPageList(String pageList) {
		this.pageList = pageList;
	}

	public boolean isNeedCk() {
		return needCk;
	}

	public void setNeedCk(boolean needCk) {
		this.needCk = needCk;
	}

	public boolean isNeedPrint() {
		return needPrint;
	}

	public void setNeedPrint(boolean needPrint) {
		this.needPrint = needPrint;
	}

	public boolean isNeedConfig() {
		return needConfig;
	}

	public void setNeedConfig(boolean needConfig) {
		this.needConfig = needConfig;
	}

	public String getOnClickRow() {
		return onClickRow;
	}

	public void setOnClickRow(String onClickRow) {
		this.onClickRow = onClickRow;
	}

	public String getOnDblClickRow() {
		return onDblClickRow;
	}

	public void setOnDblClickRow(String onDblClickRow) {
		this.onDblClickRow = onDblClickRow;
	}

	public String getHql() {
		return hql;
	}

	public void setHql(String hql) {
		this.hql = hql;
	}

	public String getIdfield() {
		return idfield;
	}

	public void setIdfield(String idfield) {
		this.idfield = idfield;
	}

	public String getWhere() {
		return where;
	}

	public void setWhere(String where) {
		this.where = where;
	}

	public String getGroupBy() {
		return groupBy;
	}

	public void setGroupBy(String groupBy) {
		this.groupBy = groupBy;
	}

	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public String getSortName() {
		return sortName;
	}

	public void setSortName(String sortName) {
		this.sortName = sortName;
	}

	public String getSortOrder() {
		return sortOrder;
	}

	public void setSortOrder(String sortOrder) {
		this.sortOrder = sortOrder;
	}

	@Override
	public int hashCode() {
		return new HashCodeBuilder(17, 37).append(id).toHashCode();
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public List<Object> getFrozenColumns() {
		return frozenColumns;
	}

	public void setFrozenColumns(List<Object> frozenColumns) {
		this.frozenColumns = frozenColumns;
	}

	public List<Object> getColumns() {
		return columns;
	}

	public void setColumns(List<Object> columns) {
		this.columns = columns;
	}

	public List<GridToolBarBean> getToolBars() {
		return toolBars;
	}

	public void setToolBars(List<GridToolBarBean> toolBars) {
		this.toolBars = toolBars;
	}

	public List<GridRowContextMenuBean> getRowContextMenus() {
		return rowContextMenus;
	}

	public void setRowContextMenus(List<GridRowContextMenuBean> rowContextMenus) {
		this.rowContextMenus = rowContextMenus;
	}

	public String getQueryId() {
		return queryId;
	}

	public void setQueryId(String queryId) {
		this.queryId = queryId;
	}
}
