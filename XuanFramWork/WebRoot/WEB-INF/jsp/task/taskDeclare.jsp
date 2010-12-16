<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="项目申请" iconCls="icon-dot">
&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#" class="easyui-linkbutton" iconcls="icon-polygon" onclick="">暂存申请</a>
		<a href="#" class="easyui-linkbutton" iconcls="icon-save" onclick="">提交申请</a>
		<hr/>

<div id="p" class="easyui-panel" title="工单信息" icon="icon-edit" style="padding:2px; margin-bottom:2px;background:#fafafa;">
<table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
  <tr>
    <td width="10%" class="td_title">工单编号</td>
    <td width="25%" class="td_context">XMSP0001</td>
    <td width="10%" class="td_title">工单类型</td>
    <td width="23%" class="td_context">项目审批工单 </td>
    <td width="10%" class="td_title">工单状态</td>
    <td width="23%" class="td_context">新建</td>
  </tr>
  <tr>
    <td class="td_title">派单人</td>
    <td class="td_context">张乐</td>
    <td class="td_title">派单时间</td>
    <td width="23%" class="td_context">2009-9-8</td>
    <td class="td_title">紧急程度</td>
    <td class="td_context"><label>
      <select name="select4" id="select4" class="easyui-combobox">
        <option >一般</option>
        <option >急</option>
        <option >特急</option>
      </select>
    </label></td>
  </tr>


  <tr>
    <td width="10%" class="td_title">项目流水号</td>
    <td width="25%" class="td_context"><input type="text" name="textfield" value="保存自动产生" id="textfield" class="inputInput" /></td>
    <td width="10%" class="td_title">项目名称</td>
    <td width="23%" class="td_context"><input type="text" name="textfield" value="XXXX项目" id="textfield" class="inputInput" /></td>
    <td width="10%" class="td_title">项目类型</td>
    <td width="23%" class="td_context">
	<select name="select" id="select" class="easyui-combobox">
	  		<option value="-1" selected>单个项目</option>
            <option value="0">项目包</option>
    	  </select></td>
  </tr>
  <tr>
    <td class="td_title">需求单位</td>
    <td class="td_context" ><label>
      <input type="text" name="textfield3" value="电讯盈科" id="textfield3"  class="inputInput"/>
    </label></td>
    <td class="td_title" >建设单位</td>
    <td class="td_context" ><input type="text" name="textfield42" id="textfield42" value="电讯盈科" class="inputInput"/></td>
    <td class="td_title">计划建设部主管</td>
    <td nowrap="nowrap" class="td_context"><input type="text" name="textfield4" id="textfield4" value="张乐" class="inputInput"/></td>
  </tr>
  <tr>
    <td class="td_title">需求单位联系人</td>
    <td class="td_context"><input type="text" name="textfield43" id="textfield43" value="张乐" class="inputInput"/></td>
    <td class="td_title">建设单位联系人</td>
    <td class="td_context"><input type="text" name="textfield52" value="张乐" id="textfield52"  class="inputInput"/></td>
    <td class="td_title">立项时间</td>
    <td class="td_context"><input name="Input4" class="easyui-datebox" id="dd" /></td>
    </tr>
  <tr>
    <td class="td_title">项目属性</td>
    <td class="td_context"><select name="select2" class="easyui-combobox">
      <option>省公司主管</option>
      <option>省管市建</option>
      <option>传输网</option>
      <option>支撑网</option>
      <option>局房土建</option>
      <option>其他</option>
    </select></td>
  <td width="10%" class="td_title">项目大类</td>
   <td width="23%" class="td_context"><select name="select3" class="easyui-combobox">
     <option>GSM网络建设</option>
     <option>新业务新技术</option>
     <option>传输网</option>
     <option>支撑网</option>
     <option>局房土建</option>
     <option>其他</option>
   </select></td>
    <td width="10%" class="td_title">项目小类</td>
   <td width="23%" class="td_context"><select name="select5" class="easyui-combobox">
     <option>网络优化</option>
     <option>交换</option>
     <option>无线</option>
     <option>配套</option>
     <option>其他</option>
   </select></td>
  </tr>
  <tr>
    <td class="td_title">项目下达方式</td>
   <td width="25%" class="td_context"><select name="select7" class="easyui-combobox">
     <option>下达到省公司</option>
     <option>下达到市公司</option>
   </select>   </td>
    <td class="td_title">公司类型</td>
   <td width="23%" class="td_context"><select name="select6" class="easyui-combobox">
     <option>有限公司</option>
     <option>TD公司</option>
   </select></td>
    <td class="td_title">重要程度</td>
   <td width="23%" class="td_context"><select name="select8" class="easyui-combobox">
     <option>一般</option>
     <option>重要</option>
     <option>很重要</option>
     <option>其他</option>
   </select></td>
  </tr>
 <tr>
    <td class="td_title">省公司项目经理</td>
   <td width="25%" class="td_context"><input type="text" name="textfield5" value="张三；李四" id="textfield5"  class="inputInput"/></td>
    <td class="td_title">&nbsp;</td>
   <td width="23%" class="td_context">&nbsp;</td>
    <td class="td_title">投资估算</td>
    <td class="td_context"><input type="text" name="gs" id="textfield7" value="300"/>
万元 </td>
  </tr>
 
  <tr>
    <td valign="top" class="td_title">项目概况</td>
    <td colspan="5" class="td_context"><textarea name="textarea" id="textarea" rows="3" style="width:90%">本期工程将新增TD报账业务功能，并对财务集中管理系统的业务功能和安全性进行完善。
   为满足系统的建设需求，本期工程新增4台TD报账数据库服务器设备，新增6台TD报账应用服务器设备，新增4台TD开发测试服务器设备，新增4台恢复性测试服务器设备，新增2台日志审计服务器设备，新增2台系统监控服务器设备，新增1台硬盘阵列设备和一台异地备份数据库设备，对接企业互联软件、报账平台软件进行功能改造升级</textarea></td>
  </tr>
  
<!--
  <tr>
    <td class="td_title">附件</td>
    <td nowrap="nowrap" colspan="5" class="td_context" id="file">
			<select style="width:15%">
					<option>项目申报报告</option>
					<option>项目建议书</option>
				</select>	
			<input type="file" name="textfield6" id="textfield6" class="inputInput"  class="inputInput" style="width:70%"/>
			<input type="button" value="继续增加" class="inputSubmit" onclick="addNext('file','<br/><select style=width:15%><option>项目申报报告</option></select>	')">
		</td>
  </tr>
-->
  <tr>
  <td class="td_title">备注 </td>
    <td  colspan="5" class="td_context"><textarea  rows="3" style="width:90%">备注信息</textarea></td>
  </tr>
</table>
</div>
<div id="p" class="easyui-panel" title="投资计划" icon="icon-analysis" collapsible="true" style="padding:2px; margin-bottom:2px;background:#fafafa;">
<table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
		<tr><td width="10%" class="td_title">投资计划</td><td class="td_context" width="40%">GSM核心网2011年建设计划&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-search" onclick="windowOpen('查看投资计划', '/car.htm');">查看</a>
		<a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-undo" onclick="">重选</a>
		<a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-add" onclick="alert('增加一行');">增加一行</a></td>
		  <td class="td_title" width="10%">项目名称/项目包</td>
	    <td class="td_context"> <select>
	      <option>2011年GSM工程项目包</option>
<option>2011年省统筹GSM网络建设项目</option>
<option>2011年传输工程项目包</option>
<option>2011年土建项目（含营业厅购置项目）项目包</option>
<option>2011年新技术新业务（含WLAN、小区宽带、集团客户等项目）项目包</option>
<option>2011年支撑网项目（含网管、计费、信息化等项目）项目包</option>
<option>2011年其他项目（含消防、配套改造等项目）项目包</option>
<option>2011年GSM工程项目包</option>       		
	    </select></td></tr>
	</table>
	<table id="tt" class="easyui-datagrid" style="width:auto; height:auto">
    <thead>
        <tr>
            <th width="229" field="name1"><strong>计划条目</strong></th>
            <th width="288" field="name2"><strong>计划值/占用/项目提供</strong></th>
            <th width="104" field="name4"><strong>操作</strong></th>
        </tr>
    </thead>                           
    <tbody>                            
        <tr>                           
            <td>
              <div align="center">
                <select name="select10">
                  <option>分组域（PS）附着用户容量</option>
                  <option>位置服务平台处理能力</option>
                  <option>行业应用网关的短信处理能力</option>
                </select>
            </div></td>            
            <td><div align="right">11/5/
              <input name="textfield2" type="text" size="10">
            （万户）</div></td>            
            <td><a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-remove" onclick="">删除</a></td>            
        </tr>                          
        <tr>                           
            <td><div align="center">
              <select name="select11">
                <option>分组域（PS）附着用户容量</option>
                <option selected="selected">位置服务平台处理能力</option>
                <option>行业应用网关的短信处理能力</option>
              </select>
          </div></td>            
            <td><div align="right">22/5/
              <input name="textfield22" type="text" size="10">
            （次定位/秒）</div></td>            
            <td><a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-remove" onclick="">删除</a></td>            
        </tr>                          
        <tr>                           
            <td><div align="center">
              <select name="select12">
                <option>分组域（PS）附着用户容量</option>
                <option>位置服务平台处理能力</option>
                <option selected="selected">行业应用网关的短信处理能力</option>
              </select>
          </div></td>            
            <td><div align="right">33/5/
              <input name="textfield23" type="text" size="10">
            （条/秒）</div></td>            
            <td><a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-remove" onclick="">删除</a></td>            
        </tr>                          
    </tbody>                           
</table>
</div>
</x:tbody>
