<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/styles/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/styles/icon.css">
<style type="text/css">
<!--
A:link {
	COLOR: #000000; TEXT-DECORATION: none
}
A:visited {
	COLOR: #000000; TEXT-DECORATION: none
}
A:hover {
	COLOR: #f88c01; TEXT-DECORATION: underline
}
A:active {
	COLOR: #888888; TEXT-DECORATION: none
}
#menu {
	FLOAT: right
}
#menu UL {
	LIST-STYLE-TYPE: none; MARGIN: 0px; LIST-STYLE-IMAGE: none
}
#menu UL LI {
	LINE-HEIGHT: 28px; MARGIN: 0px 10px; DISPLAY: block; FLOAT: left
}
.menuDiv {
	WIDTH: 1px; BACKGROUND: #999; HEIGHT: 28px
}
-->
</style>
<script type="text/javascript" src="/scripts/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/scripts/jquery.easyui.min.js"></script>
<script type="text/javascript">
$(function(){
	var p = $('body').layout('panel','west').panel({
		onCollapse:function(){
			
		}
	});
});
</script>
<title>首页－XXXX</title>
</head>
<body class="easyui-layout">
<div region="north" border="false" style="height:64px;background:#efefef;"> <font size="5" color="#1c5a80">&nbsp;&nbsp;XuanFrameWork Demo</font>
  <DIV id=menu>
    <UL>
      <LI> <A href="###">首页</A> </LI>
      <LI class=menuDiv></LI>
      <LI> <A href="###">功能地图</A> </LI>
      <LI class=menuDiv></LI>
      <LI> <A href="###">查看日志</A> </LI>
      <LI class=menuDiv></LI>
      <LI> <A href="###">重登录</A> </LI>
      <LI class=menuDiv></LI>
      <LI> <A href="###">退出</A> </LI>
    </UL>
  </DIV>
  <div style="width:99%; height:30px; padding-top:2px; margin-left:4px;"> <a href="javascript:void(0)" id="mb1" class="easyui-menubutton" menu="#mm1">用户与组织</a> <a href="javascript:void(0)" id="mb2" class="easyui-menubutton" menu="#mm2">系统配置</a> <a href="javascript:void(0)" id="mb3" class="easyui-menubutton" menu="#mm3">个人设置</a> </div>
  <div id="mm1" style="width:100px;">
    <div>部门管理</div>
    <div>用户管理</div>
    <div>分组管理</div>
  </div>
  <div id="mm2" style="width:100px;">
    <div>备份与还原</div>
    <div>参数调整</div>
    <div>菜单配置</div>
    <div><span>权限配置</span>
      <div style="width:150px;">
        <div>角色管理</div>
        <div>权限管理</div>
        <div>控制策略</div>
      </div>
    </div>
    <div>日志查看</div>
  </div>
  <div id="mm3" style="width:100px;">
    <div>参数配置</div>
    <div>权限转授</div>
    <div>修改信息</div>
  </div>
</div>
<div region="west" split="true" title="全面预算组：谢平" style="width:160px; padding-left:1px;">
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
    <div title="快速通道" selected="true" icon="icon-redo" style="padding:2px;"> <a href="#" class="easyui-linkbutton" plain="true" icon="icon-redo" onClick="addTab('百度搜索', 'http://www.baidu.com');">百度搜索</a> <a href="#" class="easyui-linkbutton" plain="true" icon="icon-redo" onClick="addTab('新浪中国', 'http://www.sina.com.cn');">新浪中国</a> <a href="#" class="easyui-linkbutton" plain="true" icon="icon-redo" onClick="addTab('搜狐首页', 'http://www.sohu.com');">搜狐首页</a> <a href="#" class="easyui-linkbutton" plain="true" icon="icon-redo" onClick="addTab('腾讯首页', 'http://www.qq.com');">腾讯首页</a> </div>
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
<div region="south" border="false" style="height:20px;background:#A9FACD; text-align:center">兆轩现在很开心</div>
<div id="main" region="center" class="easyui-tabs">
  <div title="首页">
    <iframe id="home" scrolling="auto" frameborder="0"  src="" style="width:100%;height:99%;"></iframe>
  </div>
</div>
</body>
</html>
<script type="text/javascript">
function addTab(title, url){
    if ($('#main').tabs('exists', title)){
        $('#main').tabs('select', title);
    } else {
        var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
        $('#main').tabs('add',{
            title:title,
            content:content,
            closable:true
        });
    }
}

$().ready(function(){
	$("#home").attr('src','/c/jsp/test/test');
})



$("#leftNav").css("height",document.documentElement.clientHeight - 114);
</script>
