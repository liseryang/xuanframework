<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EXTJS 4 PR布局</title>
<link rel="stylesheet" type="text/css"
	href="/ExtJS4/resources/css/ext.css" />
<script type="text/javascript" src="/ExtJS4/bootstrap.js"></script>
<script language="javascript">
	Ext.onReady(function() {
		var item1 = new Ext.Panel({
			title : '我的收藏',
			html : '&lt;我的收藏&gt;',
			cls : 'empty'
		});

		var item2 = new Ext.Panel({
			title : '快速通道',
			html : '&lt;快速通道&gt;',
			cls : 'empty'
		});

		var item3 = new Ext.Panel({
			title : '最近操作',
			html : '&lt;最近操作&gt;',
			cls : 'empty'
		});
		
		Ext.create('Ext.Viewport', {
			layout : {
				type : 'border',
				padding : 2
			},
			defaults : {
				split : false
			},
			items : [ {
				region : 'north',
				collapsible : true,
				title : '项目与计划管理平台（PPMP）',
				split : true,
				height : 100,
				html : 'north'
			}, {
				region : 'west',
				collapsible : true,
				floatable : true,
				title : '导航栏',
				split : true,
				layout : 'auto',
				width : 210,
				items : [ item1, item2, item3 ]
			}, {
				region : 'center'
			//title : '中间'
			} ]
		});
	});
</script>
</head>
<body></body>
</html>
