<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="项目决算审计--选择审计单位" iconCls="icon-dot">
<div id="p" class="easyui-panel" title="项目信息" icon="icon-star" style="padding:2px; margin-bottom:2px;background:#fafafa;">
<table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
  <tr>
    <td class="td_title">项目名称</td>
    <td  class="td_context">省建项目测试
      <a href="#" class="easyui-linkbutton" iconcls="icon-ok" onclick="popWin('项目详情', '/c/jsp/account/projectDetail', 'icon-search', 780, 480);">查看项目详情</a></td><td class="td_title">项目编号</td>
    <td  class="td_context">09-FJ-CS-0001</td>
  </tr>
  <tr>
    <td class="td_title">项目属性</td>
    <td  class="td_context">省管市建</td>    

    <td class="td_title">公司类型</td>
    <td  class="td_context">TD公司</td>
  </tr>
  <tr>
    <td class="td_title">立项文号</td>
    <td  class="td_context">12345</td>


   <td class="td_title">立项文名称</td>
    <td  class="td_context">关于『省建项目测试』的立项批复</td>
  </tr>  
  <!-- 
  <tr>
    
 
     <td class="td_title">立项申请文号</td>
    <td class="td_context"><input type="text" name="textfield6" /></td>
    <td class="td_title">立项申请文名称</td>
    <td class="td_context"><input type="text" name="textfield6" value="12345" /></td>
    
  </tr>
   -->
  <tr>
    <td class="td_title">MIS编号</td>
    <td class="td_context">MIS0001</td>
    <td class="td_title">预计投产时间</td>
    <td class="td_context">2010-12-1</td>
  </tr>
  <tr>
   
    <td class="td_title">建设单位</td>
    <td  class="td_context">建设单位</td>

    <td class="td_title">建设单位负责人</td>
    <td class="td_context">张伟</td>
  </tr>
  <tr>
    
    <td class="td_title">项目大类</td>
    <td class="td_context">新业务新技术</td>

    <td class="td_title">紧急程度</td>
   <td class="td_context">一般</td>
  </tr>  
 <tr>
   
    <td class="td_title">项目小类</td>
    <td class="td_context">网络优化</td>

     <td class="td_title">附件</td>
   <td nowrap="nowrap" class="td_context"><a href="#">立项报告.doc</a></td>
 </tr>
 
  <tr>
    <td valign="top" class="td_title">建设内容/规模</td>
    <td colspan="3" class="td_context">建设内容/规模建设内容/规模建设内容/规模建设内容/规模建设内容/规模
	建设内容/规模建设内容/规模建设内容/规模建设内容/规模建设内容/规模</td>
  </tr>
</table>
</div>
  <div id="p" class="easyui-panel" title="任务工单" icon="icon-doc" style="padding:2px; margin-bottom:2px;background:#fafafa;">
  <table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
    <tr>
      <td class="td_title" width="10%">工单编号</td>
      <td class="td_context" width="20%">10001</td>
      <td class="td_title" width="10%">工单类型</td>
      <td class="td_context" width="20%">决算审计</td>
      <td class="td_title" width="10%">工单状态</td>
      <td class="td_context" width="30%">新建</td>
    </tr>
    <tr>
      <td height="21" class="td_title">派单人</td>
      <td class="td_context">李四</td>
      <td class="td_title">派单时间</td>
      <td class="td_context">2010-11-30</td>
      <td class="td_title">工单主题</td>
      <td class="td_context">省建项目测试决算审计工单</td>
    </tr>
    <tr>
      <td height="21" class="td_title">设计批复文号</td>
      <td class="td_context">XXX文号</td>
      <td class="td_title">设计批复金额</td>
      <td class="td_context">2002304.00</td>
      <td class="td_title">公司类型</td>
      <td class="td_context">公司类型</td>
    </tr>
	<tr>
      <td height="21" class="td_title"><span class="td_context">送审总造价*</span></td>
      <td class="td_context">286947万元</td>
      <td height="21" class="td_title">固定资产类</td>
      <td class="td_context" ><label>
        <input name="checkbox" type="checkbox" value="checkbox" checked="checked" />
        土建</label><label>
        <input name="checkbox" type="checkbox" value="checkbox" checked="checked" />
        通讯</label><label>
        <input type="checkbox" name="checkbox" value="checkbox" />
        其他</label></td>
      <td class="td_title">成本费用类</td>
      <td class="td_context" ><label>
        <input type="checkbox" name="checkbox" value="checkbox" checked="checked" />
        土建</label><label>
        <input type="checkbox" name="checkbox" value="checkbox" />
        通讯</label><label>
        <input type="checkbox" name="checkbox" value="checkbox" />
        其他</label></td>
    </tr>
    <tr>
      <td height="21" class="td_title">附件</td>
      <td colspan="5" class="td_context">
      	<a href="#">建设单位附件.doc</a> &nbsp;
      	<a href="#">财务部门附件.doc</a> &nbsp;
      </td>
    </tr>
   
    <tr>
      <td height="21" class="td_title">建设单位备注</td>
      <td class="td_context" colspan="5">建设单位备注</td>
    </tr>
    <tr>
      <td height="21" class="td_title">财务部门意见</td>
      <td class="td_context" colspan="5">财务部门意见</td>
    </tr>
	
    <tr>
      <td height="21" class="td_title">审计单位*</td>
      <td class="td_context" ><select name="select">
      	<option>内审部</option>
        <option>中介机构</option>
        <option>中介机构1</option>
        <option>中介机构2</option>
        <option>中介机构3</option>
      </select>      </td>
      <td class="td_title">预计审计费</td>
      <td class="td_context"><input name="programManager" url="/json/programManager_data.json"	valuefield="id" textfield="text" editable="false"panelheight="auto" /></td>
      <td class="td_title">委托函文号</td>
      <td class="td_context"><input name="programManager" url="/json/programManager_data.json"	valuefield="id" textfield="text" editable="false"panelheight="auto" /></td>
    </tr>
    <tr>
    	<td class="td_title">委托函附件</td>
      <td class="td_context"><input type="file" name="file" /></td>
    	<td class="td_title">其他附件</td>
      <td colspan="3" class="td_context"><input type="file" name="file" /></td>
    </tr>
    <tr>
      <td height="21" class="td_title">意见</td>
      <td colspan="5" class="td_context"><textarea name="textarea" style="width:98%"></textarea></td>
    </tr>
   
  </table>
  </div>
  <div align="center"><a href="#" class="easyui-linkbutton" iconcls="icon-ok" onclick="alert('送交中介审计！');">提交</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" onclick="">退回</a>
  <a href="#" class="easyui-linkbutton" iconcls="icon-undo" onclick=""></a></div>
</x:tbody>
