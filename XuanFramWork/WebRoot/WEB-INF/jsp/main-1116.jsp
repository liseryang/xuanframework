<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
.topinn{background:url(../../images/banner_bg.jpg) top left repeat-x  #e4f5ff; height:60px; width:100%; clear:both;}
.topinnlogo{background:url(../../images/banner.jpg) top left no-repeat; height:60px;}
.leftNavDiv{
	width:160px;
	height:300px;
	border:#778 1px solid;
}
#userInfoDiv{
	text-align:center;
	PADDING-BOTTOM: 8px;
	PADDING-TOP: 8px;
	border:#00CCFF 1px solid;
	height:100px;
	MARGIN: 2px;
}
#searchDiv{
	PADDING-BOTTOM: 8px;
	PADDING-LEFT: 10px; 
	PADDING-RIGHT: 10px;
	PADDING-TOP: 8px;
	border:#00CCFF 1px solid;
	MARGIN: 2px;
	height:20px;
}
.buttonMenu{
	background-color:#CCCCCC;
	PADDING-BOTTOM: 4px;
	PADDING-LEFT: 50px; 
	PADDING-RIGHT: 10px;
	PADDING-TOP: 8px;
	border:#778 1px solid;
	MARGIN: 2px;
	height:20px;
	cursor:pointer;
}
.subMenuDiv{
	background-color:#fff;
	PADDING-LEFT: 10px;
	border:#778 1px solid;
	margin-top:0px;
	margin-bottom:0px;
	margin-left:4px;
	margin-right:4px;
}
-->
</style>
</HEAD>
<BODY>
<TABLE id=Header border=0 cellSpacing=0 cellPadding=0 width="100%" class="topinn">
  <TBODY>
    <TR class="topinnlogo" >
      <TD width=500 align="left">&nbsp;</TD>
      <TD valign="bottom"><DIV id=menu>
          <UL>
            <LI> <A href="###">功能地图</A> </LI>
            <LI class=menuDiv></LI>
            <LI> <A href="###">查看日志</A> </LI>
            <LI class=menuDiv></LI>
            <LI> <A href="###">重登录</A> </LI>
            <LI class=menuDiv></LI>
            <LI> <A href="###">退出</A> </LI>
          </UL>
        </DIV></TD>
    </TR>
  </TBODY>
</TABLE>
<DIV id="opMenu" class="ddsmoothmenu">
  <UL>
    <LI><A href="###">我的任务</A>
      <UL>
        <LI> <A href="###">待办任务</A> </LI>
        <LI> <A href="###">待阅任务</A> </LI>
        <LI> <A href="###">在办项目</A> </LI>
        <LI> <A href="###">派发任务</A> </LI>
      </UL>
    </LI>
    <LI> <A href="###">IT项目通用流程管理</A>
      <UL>
        <LI> <A href="###">割接申请审批工单</A> </LI>
        <LI> <A href="###">审批付款申请工单</A> </LI>
        <LI> <A href="###">立项批复变更工单</A> </LI>
        <LI> <A href="###">项目变更工单</A> </LI>
        <LI> <A href="###">任务工单</A> </LI>
        <LI> <A href="###">合同维护</A> </LI>
      </UL>
    </LI>
    <LI> <A href="###">计划项目管理</A>
      <UL>
        <LI> <A href="###">计划填报任务派发工单</A> </LI>
        <LI> <A href="###">计划项目</A>
          <UL>
            <LI> <A href="###">年度计划需求管理</A></LI>
            <LI> <A href="###">年度计划汇总</A></LI>
            <LI> <A href="###">年度计划查询</A></LI>
          </UL>
        </LI>
        <LI> <A href="###">计划月报</A>
          <UL>
            <LI> <A href="###">月度报表总结填报</A></LI>
            <LI> <A href="###">月度计划总结查询</A></LI>
            <LI> <A href="###">计划项目查询</A></LI
			>
          </UL>
        </LI>
        <LI> <A href="###">计划项目立项批复工单</A> </LI>
        <LI> <A href="###">计划项目管理</A>
          <UL>
            <LI> <A href="###">计划项目申请填报工单</A></LI>
            <LI> <A href="###">计划项目申请查询</A></LI>
            <LI> <A href="###">计划项目调整工单</A></LI>
          </UL>
        </LI>
        <LI> <A href="###">年度计划编制通知工单</A> </LI>
        <LI> <A href="###">现网数据查询分析</A> </LI>
        <LI> <A href="###">计划基础信息</A>
          <UL>
            <LI> <A href="###">计划模板管理</A></LI>
            <LI> <A href="###">计划期间</A></LI>
            <LI> <A href="###">批量项目导入</A></LI>
          </UL>
        </LI>
      </UL>
    </LI>
    <LI> <A href="###">土建项目管理</A>
      <UL>
        <li><a href="###">土建通用工单</a></li>
        <li><a href="###">提交付款申请工单</a></li>
        <li><a href="###">审批付款申请工单</a></li>
        <li><a href="###">提交工程用款计划申请工单</a></li>
        <li><a href="###">审批工程用款计划申请工单</a></li>
        <li><a href="###">施工进度管理</a></li>
        <li><a href="###">项目数据预警</a></li>
        <li><a href="###">提交项目招标通知工单</a></li>
        <li><a href="###">审计项目招标通知工单</a></li>
        <li><a href="###">工前准备工单</a></li>
      </UL>
    </LI>
    <LI> <A href="###">土建项目维护</A>
      <UL>
        <li><a href="###">项目维护在线咨询模块</a></li>
        <li><a href="###">项目数据变更工单</a></li>
        <li><a href="###">项目维护工单填报</a></li>
        <li><a href="###">项目维护处理工单</a></li>
        <li><a href="###">项目维护工单查询</a></li>
        <li><a href="###">项目维护反馈工单</a></li>
      </UL>
    </LI>
    <LI> <A href="###">督办项目管理</A>
      <UL>
        <li><a href="###">本地数据专线</a>
          <ul>
            <li><a href="###">发起申请工单</a></li>
            <li><a href="###">开工报告工单</a></li>
            <li><a href="###">数据提交及配置</a></li>
            <li><a href="###">建设完工报告工单</a></li>
            <li><a href="###">数据归档管理</a></li>
            <li><a href="###">待办任务工单</a></li>
            <li><a href="###">已办任务工单</a></li>
            <li><a href="###">工单查询</a></li>
          </ul>
        </li>
        <li><a href="###">宽带督办项目</a>
          <ul>
            <li><a href="###">立项申请工单</a></li>
            <li><a href="###">工单派发</a></li>
            <li><a href="###">总体实施计划</a></li>
            <li><a href="###">设计会审通知工单</a></li>
            <li><a href="###">提交会审结果</a></li>
            <li><a href="###">开工报告工单</a></li>
            <li><a href="###">进度填报工单</a></li>
            <li><a href="###">上电申请工单</a></li>
            <li><a href="###">委托项目设计</a></li>
            <li><a href="###">完工报告工单</a></li>
            <li><a href="###">初验通报工单</a></li>
            <li><a href="###">终验通报工单</a></li>
            <li><a href="###">预转固通知工单</a></li>
            <li><a href="###">正式转固通知</a></li>
            <li><a href="###">项目审计工单</a></li>
          </ul>
        </li>
      </UL>
    </LI>
    <LI> <A href="###">发文管理</A>
      <UL>
        <li><a href="###">付款通知</a></li>
        <li><a href="###">割接申请批复</a></li>
        <li><a href="###">施工费审计通知</a></li>
        <li><a href="###">立项批复变更</a></li>
        <li><a href="###">项目变更批复</a></li>
        <li><a href="###">计划项目管理</a>
          <ul>
            <li><a href="###">年度计划编制通知</a></li>
            <li><a href="###">计划项目立项批复</a></li>
            <li><a href="###">计划项目设计批复</a></li>
          </ul>
        </li>
        <li><a href="###">土建项目通用</a>
          <ul>
            <li><a href="###">立项批复变更</a></li>
            <li><a href="###">项目变更批复</a></li>
          </ul>
        </li>
        <li><a href="###">土建项目</a>
          <ul>
            <li><a href="###">起草项目招标发文</a></li>
            <li><a href="###">审批项目招标发文</a></li>
            <li><a href="###">单项工程验收通知</a></li>
            <li><a href="###">项目数据变更通知</a></li>
          </ul>
        </li>
        <li><a href="###">宽带督办项目</a>
          <ul>
            <li><a href="###">立项批复</a></li>
            <li><a href="###">委托设计函</a></li>
            <li><a href="###">委托施工函</a></li>
            <li><a href="###">委托监理函</a></li>
            <li><a href="###">设计批复</a></li>
            <li><a href="###">初验通知</a></li>
            <li><a href="###">终验通知</a></li>
          </ul>
        </li>
        <li><a href="###">第三方设计批复发文</a></li>
        <li><a href="###">第三方施工函发文</a></li>
        <li><a href="###">第三方施工监理监理发文</a></li>
        <li><a href="###">第三方开工报告</a></li>
        <li><a href="###">第三方进度报告</a></li>
        <li><a href="###">第三方完工报告</a></li>
      </UL>
    </LI>
    <LI> <A href="###">跟踪查询</A>
      <UL>
        <li><a href="###">年度计划执行情况跟踪</a></li>
        <li><a href="###">计划项目跟踪</a></li>
        <li><a href="###">计划项目查询</a></li>
        <li><a href="###">土建项目查询</a></li>
        <li><a href="###">已办任务</a></li>
        <li><a href="###">已阅任务</a></li>
      </UL>
    </LI>
    <LI> <A href="###">常用报表管理</A>
      <UL>
        <li><a href="###">固定资产投资结构表</a></li>
        <li><a href="###">项目资本开支报表</a></li>
        <li><a href="###">年度计划的填报汇总报表</a></li>
        <li><a href="###">数据专线项目督</a>
          <ul>
            <li><a href="###">用户报表</a></li>
            <li><a href="###">基站报表</a></li>
            <li><a href="###">年度计划的填报汇总报表</a></li>
            <li><a href="###">固定资产投资结构表</a></li>
            <li><a href="###">城域网核心报表</a></li>
            <li><a href="###">传输设备报表</a></li>
            <li><a href="###">固定资产投资结构表</a></li>
            <li><a href="###">核心设备使用情况查询报表</a></li>
            <li><a href="###">传输设备使用情况查询报表</a></li>
            <li><a href="###">基站设备使用情况查询报表</a></li>
            <li><a href="###">专线开通情况查询报表</a></li>
            <li><a href="###">工单考核图表</a></li>
            <li><a href="###">办统计图表</a></li>
          </ul>
        </li>
      </UL>
    </LI>
	<LI> <A href="###">广东院报表管理</A>
		<UL>
		<li><a href="###">中心领导全局视图一</a></li>
		<li><a href="###">中心领导全局视图二</a></li>
		<li><a href="###">中心领导全局视图三</a></li>
		<li><a href="###">科室经理全局视图一</a></li>
		<li><a href="###">科室经理全局视图二</a></li>
		<li><a href="###">工程项目经理全局视图</a></li>
		<li><a href="###">各地市指标完成情况</a></li>
		<li><a href="###">部门经理全局视图一</a></li>
		<li><a href="###">部门经理全局视图二</a></li>
		<li><a href="###">中心经理全局视图一</a></li>
		<li><a href="###">中心经理全局视图二</a></li>
		<li><a href="###">工程项目经理全局视图</a></li>
		</UL>
	</LI>
	<LI> <A href="###">共建共享数据报表管理</A>
		<UL>
		<li><a href="###">铁塔统计信息数据表</a></li>
		<li><a href="###">室分系统统计信息数据表</a></li>
		<li><a href="###">基站设施统计信息数据表</a></li>
		<li><a href="###">杆路统计信息数据表</a></li>
		<li><a href="###">管道统计信息数据表</a></li>
		<li><a href="###">直埋光缆统计信息数据表</a></li>
		<li><a href="###">月统计表</a></li>
		<li><a href="###">新增情况表</a></li>
		<li><a href="###">三方核对表</a></li>
		<li><a href="###">基数表</a></li>
		<li><a href="###">效益分析综合情况表</a></li>
		<li><a href="###">铁塔效益分析表</a></li>
		<li><a href="###">管道效益分析表</a></li>
		<li><a href="###">杆路效益分析表</a></li>
		<li><a href="###">光缆效益分析表</a></li>
		<li><a href="###">基站效益分析表</a></li>
		<li><a href="###">年度租费收支情况统计表</a></li>
		</UL>
	</LI>
	<LI> <A href="###">第三方系统集成</A>
		<UL>
		<li><a href="###">第三方系统桌面</a></li>
		<li><a href="###">第三方基本信息管理</a></li>
		<li><a href="###">第三方流程审批</a></li>
		<li><a href="###">第三方待办任务列表</a></li>
		<li><a href="###">第三方已办任务列表</a></li>
		<li><a href="###">第三方待阅任务列表</a></li>
		<li><a href="###">第三方已阅任务列表</a></li>
		<li><a href="###">第三方项目信息查询</a></li>
		<li><a href="###">第三方现场物资管理</a></li>		 
		</UL>
	</LI>
  </UL>
  <BR style="CLEAR: left">
</DIV>
<div id="layout" class="easyui-layout" style="width:100%;height:600px;">
  <div region="west" split="true" title="当前用户：DarkXie" style="width:160px; padding-left:1px;">
    <div id="leftNav" class="easyui-accordion" fit="true" >
      <div title="我的收藏" icon="icon-ok" style="overflow:auto;padding:2px;"> <a href="#" class="easyui-linkbutton" plain="true" icon="icon-save">定制我的收藏</a>
        <ul id="tt1" class="easyui-tree">
          <li> <span>Folder1</span>
            <ul>
              <li> <span>Sub Folder 1</span>
                <ul>
                  <li> <span>File 11</span> </li>
                  <li> <span>File 12</span> </li>
                  <li> <span>File 13</span> </li>
                </ul>
              </li>
              <li> <span>File 2</span> </li>
              <li> <span>File 3</span> </li>
            </ul>
          </li>
          <li> <span>File2</span> </li>
        </ul>
      </div>
      <div title="快速通道" selected="true" icon="icon-redo" style="padding:2px;"> <a href="#" class="easyui-linkbutton" plain="true" style="width:138px;" icon="icon-polygon" onClick="addTab('百度搜索', 'http://www.baidu.com');">百度搜索</a> <a href="#" class="easyui-linkbutton" plain="true" style="width:138px;" icon="icon-redo" onClick="addTab('新浪中国', 'http://www.sina.com.cn');">新浪中国</a> <a href="#" class="easyui-linkbutton" plain="true" style="width:138px;" icon="icon-polygon" onClick="addTab('搜狐首页', 'http://www.sohu.com');">搜狐首页</a> <a href="#" class="easyui-linkbutton" plain="true" style="width:138px;" icon="icon-redo" onClick="addTab('腾讯首页', 'http://www.qq.com');">腾讯首页</a> </div>
      <div title="最近操作" icon="icon-reload">
        <ul id="tt1" class="easyui-tree">
          <li> <span>Folder1</span>
            <ul>
              <li> <span>Sub Folder 1</span>
                <ul>
                  <li> <span>File 11</span> </li>
                  <li> <span>File 12</span> </li>
                  <li> <span>File 13</span> </li>
                </ul>
              </li>
              <li> <span>File 2</span> </li>
              <li> <span>File 3</span> </li>
            </ul>
          </li>
          <li> <span>File2</span> </li>
        </ul>
      </div>
    </div>
  </div>
  <div id="main" region="center" class="easyui-tabs">
    <div title="我的工作台" style="padding:2px;">
      <iframe id="home" scrolling="auto" frameborder="0"  src="" style="width:100%;height:99%;"></iframe>
    </div>
  </div>
</div>
</BODY>
</HTML>
<SCRIPT language=javascript>
ddsmoothmenu.init({
 mainmenuid: "opMenu", //menu DIV id
 orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
 classname: 'ddsmoothmenu', //class added to menu's outer DIV
 customtheme: ["#1c5a80", "#18374a"],
 contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})


function addTab(title, url){
    if ($('#main').tabs('exists', title)){
        $('#main').tabs('select', title);
    } else {
        var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:99%;"></iframe>';
        $('#main').tabs('add',{
            title:title,
            content:content,
            closable:true
        });
    }
}

$().ready(function(){
	$("#home").attr('src','/c/jsp/table');

})
$("#layout").css("height",document.documentElement.clientHeight - 94);
</SCRIPT>
