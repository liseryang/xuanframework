<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<HEAD>
<TITLE>中国移动通信集团工程项目管理系统</TITLE>
<META content="text/html; charset=UTF-8" http-equiv="Content-Type">
<link rel=stylesheet type=text/css href="/styles/xuan.css">
<link rel=stylesheet type=text/css href="/styles/ddsmoothmenu.css">
<link rel="stylesheet" type="text/css" href="/styles/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/styles/icon.css">
<script type="text/javascript" src="/scripts/jquery-1.4.2.js"></script>
<script type="text/javascript" src="/scripts/jquery.easyui.min.js"></script>
<script type=text/javascript src="/scripts/ddsmoothmenu.js"></SCRIPT>
<script type=text/javascript src="/scripts/xuan.js"></SCRIPT>
<style type="text/css">
<!--
.topinn {
	background: url(../../images/banner_bg.jpg) top left repeat-x #e4f5ff;
	height: 60px;
	width: 100%;
	clear: both;
}

.topinnlogo {
	background: url(../../images/banner.jpg) top left no-repeat;
	height: 60px;
}

.leftNavDiv {
	width: 160px;
	height: 300px;
	border: #778 1px solid;
}

#userInfoDiv {
	text-align: center;
	PADDING-BOTTOM: 8px;
	PADDING-TOP: 8px;
	border: #00CCFF 1px solid;
	height: 100px;
	MARGIN: 2px;
}

#searchDiv {
	PADDING-BOTTOM: 8px;
	PADDING-LEFT: 10px;
	PADDING-RIGHT: 10px;
	PADDING-TOP: 8px;
	border: #00CCFF 1px solid;
	MARGIN: 2px;
	height: 20px;
}

.buttonMenu {
	background-color: #CCCCCC;
	PADDING-BOTTOM: 4px;
	PADDING-LEFT: 50px;
	PADDING-RIGHT: 10px;
	PADDING-TOP: 8px;
	border: #778 1px solid;
	MARGIN: 2px;
	height: 20px;
	cursor: pointer;
}

.subMenuDiv {
	background-color: #fff;
	PADDING-LEFT: 10px;
	border: #778 1px solid;
	margin-top: 0px;
	margin-bottom: 0px;
	margin-left: 4px;
	margin-right: 4px;
}
-->
</style>
</HEAD>
<BODY>
<TABLE id=Header border=0 cellSpacing=0 cellPadding=0 width="100%"
	class="topinn">
  <TBODY>
    <TR class="topinnlogo">
      <TD width=500 align="left">&nbsp;</TD>
      <TD valign="bottom"><DIV id=menu>
          <UL>
            <LI><A href="###">功能地图</A></LI>
            <LI class=menuDiv></LI>
            <LI><A href="###">查看日志</A></LI>
            <LI class=menuDiv></LI>
            <LI><A href="###">重登录</A></LI>
            <LI class=menuDiv></LI>
            <LI><A href="###">退出</A></LI>
          </UL>
        </DIV></TD>
    </TR>
  </TBODY>
</TABLE>
<DIV id="opMenu" class="ddsmoothmenu">
  <UL>
    <LI><A href="###">我的任务</A>
      <UL>
        <LI><A href="###" onClick="addTab('待办任务', '/c/jsp/task/toDoTasks');">待办任务</A></LI>
        <LI><A href="###">待阅任务</A></LI>
        <LI><A href="###">在办项目</A></LI>
        <LI><A href="###">派发任务</A></LI>
      </UL>
    </LI>
    <LI><A href="###">投资计划管理</A>
      <UL>
        <LI><A href="###">年度计划</A>
			<ul>
            <LI><A href="###" onClick="addTab('计划填报任务', '/c/jsp/programManagement/taskPlanSearch');">计划填报任务</A></LI>
			<LI><A href="###" onClick="addTab('年度计划查询', '/c/jsp/programManagement/annualPlanSearch');">年度计划查询</A></LI>
            <LI><A href="###" onClick="addTab('地市公司查询', '/c/jsp/programManagement/annualPlanSearch2');">地市公司查询</A></LI>
            <LI><A href="###" onClick="addTab('滚动规划', '/c/jsp/programManagement/rollingPlanSearch');">滚动规划</A></LI>
          </ul>
		</LI>
        <LI><A href="###">计划项目</A>
          <ul>
            <LI><A href="###" onClick="addTab('项目申请', '/c/jsp/task/taskDeclare');">项目申请</A></LI>
            <LI><A href="###" onClick="addTab('项目立项', '/c/jsp/task/taskApproval');">项目立项</A></LI>
          </ul>
        </LI>
        <LI><A href="###">基础信息设置</A>
		<ul>
            <LI><A href="###" onClick="addTab('计划模板', '/c/jsp/template/templateSearch');">计划模板</A></LI>
			<LI><A href="###" onClick="addTab('能力指标', '/c/jsp/ability/abilityIndexSearch');">能力指标</A></LI>
			<LI><A href="###" onClick="addTab('计划类别扩展', '/c/jsp/ability/planTypeSearch');">计划类别扩展</A></LI>
          </ul>
		</LI>
      </UL>
    </LI>
	<LI><A href="###">项目审计</A>
		<ul>
		<LI><A href="###"">项目结算</A>
		<ul>
			<LI><A href="###" onClick="addTab('结算审计申请', '/c/jsp/account/sendAccountBook1');">项目结算申请</A></LI>
			<LI><A href="###" onClick="addTab('建设单位意见', '/c/jsp/account/sendAccountBook2');">建设单位意见</A></LI>
			<LI><A href="###" onClick="addTab('选择审计单位', '/c/jsp/account/sendAccountBook3');">选择审计单位</A></LI>
			<LI><A href="###" onClick="addTab('提交审计报告初稿', '/c/jsp/account/sendAccountBook4');">提交审计报告初稿</A></LI>
			<LI><A href="###" onClick="addTab('确认审计报告初稿', '/c/jsp/account/sendAccountBook5');">确认审计报告初稿</A></LI>
			<LI><A href="###" onClick="addTab('提交审计报告', '/c/jsp/account/sendAccountBook6');">提交审计报告</A></LI>
			<LI><A href="###" onClick="addTab('确认审计报告', '/c/jsp/account/sendAccountBook7');">确认审计报告</A></LI>
		</ul>
		</LI>
        <LI><A href="###"">项目决算</A>
		<ul>
			<LI><A href="###" onClick="addTab('决算审计申请', '/c/jsp/account/sendAuditBook1');">决算审计申请</A></LI>
			<LI><A href="###" onClick="addTab('财务部审计', '/c/jsp/account/sendAuditBook2');">财务部审计</A></LI>
			<LI><A href="###" onClick="addTab('决算选择审计单位', '/c/jsp/account/sendAuditBook3');">选择审计单位</A></LI>
			<LI><A href="###" onClick="addTab('提交决算审计报告初稿', '/c/jsp/account/sendAuditBook4');">提交决算审计报告初稿</A></LI>
			<LI><A href="###" onClick="addTab('确认决算审计报告初稿', '/c/jsp/account/sendAuditBook5');">确认决算审计报告初稿</A></LI>
			<LI><A href="###" onClick="addTab('提交决算审计报告', '/c/jsp/account/sendAuditBook6');">提交决算审计报告</A></LI>
			<LI><A href="###" onClick="addTab('确认决算审计报告', '/c/jsp/account/sendAuditBook7');">确认决算审计报告</A></LI>
			<LI><A href="###" onClick="addTab('补充供应链订单号', '/c/jsp/account/sendAuditBook8');">补充供应链订单号</A></LI>
		</ul>
		</LI>
		 <LI><A href="###"">审计查询</A>
		 	<ul>
		 		<LI><A href="###" onClick="addTab('项目结算查询', '/c/jsp/account/projectAccountSearch');">项目结算查询</A></LI>
				<LI><A href="###" onClick="addTab('项目决算查询', '/c/jsp/account/projectAuditSearch');">项目决算查询</A></LI>
				</ul>
		</LI>
        </ul>
	</LI>
	<LI><A href="###">系统管理</A>
		<ul>
            <LI><A href="###" onClick="addTab('合作单位信息维护', '/html/pwassign/pwassign_probuild.html');">合作单位信息维护</A></LI>
			<LI><A href="###" onClick="addTab('用户管理', '/html/pwassign/pwassign_usermanager.html');">用户管理</A></LI>
			<LI><A href="###" onClick="addTab('组织管理', '/html/pwassign/pwassign_orzmanager.html');">组织管理</A></LI>
        </ul>
	</LI>
  </UL>
  <BR style="CLEAR: left">
</DIV>
<div id="layout" class="easyui-layout"
	style="width: 100%; height: 600px;">
  <div region="west" split="true" title="当前用户：DarkXie"
	style="width: 160px; padding-left: 1px;">
    <div id="leftNav" class="easyui-accordion" fit="true">
      <div title="我的收藏" icon="icon-ok" style="overflow: auto; padding: 2px;"> <a href="#" class="easyui-linkbutton" plain="true" icon="icon-save">定制我的收藏</a>
        <ul id="tt1" class="easyui-tree">
          <li><span>Folder1</span>
            <ul>
              <li><span>Sub Folder 1</span>
                <ul>
                  <li><span>File 11</span></li>
                  <li><span>File 12</span></li>
                  <li><span>File 13</span></li>
                </ul>
              </li>
              <li><span>File 2</span></li>
              <li><span>File 3</span></li>
            </ul>
          </li>
          <li><span>File2</span></li>
        </ul>
      </div>
      <div title="快速通道" selected="true" icon="icon-redo" style="padding: 2px;"> <a href="#" class="easyui-linkbutton" plain="true" style="width: 138px;"
	icon="icon-polygon" onClick="addTab('百度搜索', 'http://www.baidu.com');">百度搜索</a> <a href="#" class="easyui-linkbutton" plain="true" style="width: 138px;"
	icon="icon-redo" onClick="addTab('新浪中国', 'http://www.sina.com.cn');">新浪中国</a> <a href="#" class="easyui-linkbutton" plain="true" style="width: 138px;"
	icon="icon-polygon" onClick="addTab('搜狐首页', 'http://www.sohu.com');">搜狐首页</a> <a href="#" class="easyui-linkbutton" plain="true" style="width: 138px;"
	icon="icon-redo" onClick="addTab('腾讯首页', 'http://www.qq.com');">腾讯首页</a> </div>
      <div title="最近操作" icon="icon-reload">
        <ul id="tt1" class="easyui-tree">
          <li><span>Folder1</span>
            <ul>
              <li><span>Sub Folder 1</span>
                <ul>
                  <li><span>File 11</span></li>
                  <li><span>File 12</span></li>
                  <li><span>File 13</span></li>
                </ul>
              </li>
              <li><span>File 2</span></li>
              <li><span>File 3</span></li>
            </ul>
          </li>
          <li><span>File2</span></li>
        </ul>
      </div>
    </div>
  </div>
  <div id="main" region="center" class="easyui-tabs">
    <div title="我的工作台" style="padding: 2px;">
      <iframe id="home"	scrolling="auto" frameborder="0" src=""	style="width: 100%; height: 99%;"></iframe>
    </div>
  </div>
</div>
</BODY>
</HTML>
<SCRIPT language=javascript>
	ddsmoothmenu.init( {
		mainmenuid : "opMenu", //menu DIV id
		orientation : 'h', //Horizontal or vertical menu: Set to "h" or "v"
		classname : 'ddsmoothmenu', //class added to menu's outer DIV
		customtheme : [ "#1c5a80", "#18374a" ],
		contentsource : "markup" //"markup" or ["container_id", "path_to_menu_file"]
	})

	function addTab(title, url) {
		if ($('#main').tabs('exists', title)) {
			$('#main').tabs('select', title);
		} else {
			var content = '<iframe scrolling="auto" frameborder="0"  src="' + url + '" style="width:100%;height:99%;">__tag_200$110_';
			$('#main').tabs('add', {
				title : title,
				content : content,
				closable : true
			});
		}
	}

	$().ready(function() {
		$("#home").attr('src', '/c/jsp/table');

	})
	$("#layout").css("height",document.documentElement.clientHeight - 94);
</SCRIPT>
