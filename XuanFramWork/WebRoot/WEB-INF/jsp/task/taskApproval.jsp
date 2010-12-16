<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="项目申请" iconCls="icon-dot">
&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#" class="easyui-linkbutton" iconcls="icon-polygon" onclick="">暂存</a>
		<a href="#" class="easyui-linkbutton" iconcls="icon-save" onclick="">提交</a>
		<hr/>

<div id="p" class="easyui-panel" title="基本信息" icon="icon-edit" style="padding:2px; margin-bottom:2px;background:#fafafa;">
<table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
  <tr>
    <td width="10%" class="td_title">项目名称</td>
    <td width="40%" class="td_context"><input type="text" name="textfield23" value="省建项目测试" /><input type="reset" name="button2" id="button2" value="由项目审批创建"  class="inputSubmit" onclick="window.open('../pub/pub_application_project.html')" /></td>
    <td width="10%" class="td_title">项目编号</td>
    <td width="40%" class="td_context"><input type="text" name="textfield7" value="09-FJ-CS-0001" /></td>
  </tr>
  <tr>
    <td width="10%" class="td_title">项目属性</td>
    <td width="40%" class="td_context"><select name="select9" id="select9">
      <option>集团主管</option>
      <option>省管省建</option>
      <option>省管市建</option>
    </select></td>    

    <td width="10%" class="td_title">公司类型</td>
    <td width="40%" class="td_context"><select name="select5" id="select5">
        <option>移动公司</option>
        <option>TD公司</option>
      </select></td>
  </tr>
  <tr>
    <td width="10%" class="td_title">立项文号</td>
    <td width="40%" class="td_context"><input type="text" name="textfield42" value="12345" /></td>


   <td width="10%" class="td_title">立项文名称</td>
    <td width="40%" class="td_context"><input type="text" name="textfield222" value="关于『省建项目测试』的立项批复" /></td>
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
   
    <td width="10%" class="td_title">建设单位</td>
    <td width="40%" class="td_context"><input type="text" name="textfield2" value=""  ondblclick="window.showModalDialog('../select/org/Dept_Pop.htm',window,'dialogWidth:500px;dialogHeight:470px;center:yes;help:yes;status:yes') "/>
      <input type="reset" name="button22" id="button22" value="选择"  class="inputSubmit" onclick="window.open('../pub/pub_application_project.html')" /></td>

    <td class="td_title">投资金额</td>
    <td class="td_context"><input type="text" name="textfield10" /></td>
  </tr>
  <tr>
    
    <td class="td_title">预计投产时间</td>
    <td class="td_context"><input type="text" name="textfield12" /></td>

    <td class="td_title">紧急程度</td>
   <td class="td_context"><select name="select4" id="select4">
       <option>一般</option>
       <option>紧急</option>
   </select></td>
  </tr>  
 <tr>
   
    <td class="td_title">项目大类</td>
    <td class="td_context"><select name="select3" class="easyui-combobox">
      <option>GSM网络建设</option>
      <option>新业务新技术</option>
      <option>传输网</option>
      <option>支撑网</option>
      <option>局房土建</option>
      <option>其他</option>
    </select></td>

     <td class="td_title">项目小类</td>
   <td nowrap="nowrap" class="td_context"><select name="select" class="easyui-combobox">
     <option>网络优化</option>
     <option>交换</option>
     <option>无线</option>
     <option>配套</option>
     <option>其他</option>
   </select></td>
 </tr>
 
  <tr>
    <td valign="top" class="td_title">建设内容/规模</td>
    <td colspan="3" class="td_context"><textarea name="textarea2" id="textarea2" cols="45" rows="4"></textarea></td>
  </tr>

  <tr>
    <td valign="top" class="td_title">主送单位</td>
    <td colspan="3" class="td_context"><textarea name="textarea2" id="textarea2" cols="45" rows="1"></textarea></td>
  </tr>
  <tr>
    <td valign="top" class="td_title">抄送单位</td>
    <td colspan="3" class="td_context"><textarea name="textarea4" id="textarea4" cols="45" rows="1"></textarea></td>
  </tr>      
    <tr>
    <td class="td_title">附件 </td>
    <td colspan="3" class="td_context" id="file">
			<select style="width:15%"><option>立项申请报告</option></select>	
		<input type="file" name="textfield6" id="textfield6" class="inputInput" style="width:70%"/></td>
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
