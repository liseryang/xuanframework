<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="计划模板" iconCls="icon-dot">
  <div id="p1" class="easyui-panel" title="基本信息" icon="icon-edit" style="padding:2px; margin-bottom:2px;background:#fafafa;">
    <table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
      <tr>
        <td class="td_title">模板编号*</td>
        <td class="td_context"><input type="text" name="receipt_memo_number_condition" id="receipt_memo_number_condition"/>
        </td>
        <td class="td_title">模板名称*</td>
        <td class="td_context"><input type="text" name="receipt_memo_number_condition3" id="receipt_memo_number_condition3"/></td>
        <td class="td_title">模板类型*</td>
        <td class="td_context"><select class="easyui-combobox" name="select2">
            <option>---未选择---</option>
            <option>动态行</option>
            <option>固定行</option>
          </select></td>
      </tr>
      <tr>
        <td height="21" class="td_title">公司类型*</td>
        <td class="td_context"><input class="easyui-combobox" name="planStatus22" url="/json/companyType_data.json"	valuefield="id" textfield="text" editable="false"panelheight="auto" /></td>
        <td class="td_title">专业类型*</td>
        <td class="td_context"><select class="easyui-combobox" name="select">
            <option>---未选择---</option>
            <option>数据业务网</option>
            <option>IT项目建设</option>
          </select></td>
        <td class="td_title">启用状态*</td>
        <td class="td_context"><select class="easyui-combobox" name="select3">
            <option>---未选择---</option>
            <option>启用</option>
            <option>禁用</option>
          </select></td>
      </tr>
      <tr>
        <td height="21" class="td_title">启用日期从</td>
        <td colspan="3" class="td_context"><input name="Input42" class="easyui-datebox" id="Input4" />
          至
          <input name="Input3" class="easyui-datebox" id="Input3" /></td>
        <td class="td_title">创建人</td>
        <td class="td_context"><input type="text" name="Input2" id="Input2" /></td>
      </tr>
      <tr>
        <td height="21" class="td_title">模板文件</td>
        <td class="td_context"><input type="file" name="file" /></td>
        <td class="td_title">计划所属年度</td>
        <td class="td_context"><select name="select10">
            <option selected="selected">2011</option>
            <option>2012</option>
            <option>2013</option>
            <option>2014</option>
            <option>2015</option>
            <option>2016</option>
            <option>2017</option>
            <option>2018</option>
            <option>2019</option>
            <option>2020</option>
            <option>2021</option>
            <option>2022</option>
            <option>2023</option>
            <option>2024</option>
            <option>2025</option>
            <option>2026</option>
            <option>2027</option>
            <option>2028</option>
          </select>
        </td>
        <td class="td_title">创建时间</td>
        <td class="td_context"><input name="Input" class="easyui-datebox" id="Input" /></td>
      </tr>
      <tr>
        <td height="21" class="td_title">备注</td>
        <td colspan="3" class="td_context"><textarea name="textarea" style="width:98%"></textarea></td>
        <td colspan="2" class="td_context"><a href="#" class="easyui-linkbutton" iconcls="icon-ok" plain="true" onclick="alert('保存成功，可选择填报');">保存</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" plain="true" onclick="">重置</a> <a href="/c/jsp/template/templateSearch" class="easyui-linkbutton" iconcls="icon-back" plain="true" onclick="">返回</a></td>
      </tr>
    </table>
  </div>
  <div id="p2" class="easyui-panel" title="类别定义" icon="icon-analysis" collapsible="true" style="padding:2px; margin-bottom:2px;background:#fafafa;">
    <table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
      <tr>
        <td class="td_title" width="10%">计划类别*</td>
        <td class="td_context"><label><input name="" type="checkbox" value="" />网络建设</label>&nbsp;
          <label><input name="" type="checkbox" value="" />传送网</label>&nbsp;
          <label><input name="" type="checkbox" value="" />新技术新业务</label>&nbsp;
          <label><input name="" type="checkbox" value="" />IT支撑系统</label>&nbsp;
          <label><input name="" type="checkbox" value="" />局房土建</label>&nbsp;
          <label><input name="" type="checkbox" value="" />其他</label></td>
      </tr>
    </table>
	<table id="planType">
  </table>
  </div>
  <div id="p3" class="easyui-panel" title="模板数据映射" icon="icon-analysis" collapsible="true" style="padding:2px; margin-bottom:2px;background:#fafafa;">
    <table width="1044" class="easyui-datagrid" id="tt" style="width:auto; height:auto">
      <thead>
        <tr>
          <th width="82" field="name1"><strong>行号</strong></th>
          <th width="81" field="name2"><strong>列号</strong></th>
          <th width="107" field="name99">名称</th>
          <th width="107" field="name3"><strong>数据类型</strong></th>
          <th width="129" field="name4"><strong>长度</strong></th>
          <th width="127" field="name5"><strong>默认值</strong></th>
          <th width="192" field="name51"><strong>说明</strong></th>
          <th width="73" field="name6"><strong>是否必填</strong></th>
        </tr>
      </thead>
      <tbody>
        
        <tr>
          <td><input name="textfield4" type="text" value="2" size="4" /></td>
          <td><input name="textfield23" type="text" value="2" size="4" /></td>
          <td>MIS编号</td>
          <td><select name="select8">
              <option>文本</option>
              <option selected="selected">数字</option>
            </select></td>
          <td><input name="textfield225" type="text" value="10.2" size="10" /></td>
          <td><input name="textfield222" type="text" size="10" /></td>
          <td><input type="text" name="textfield32" /></td>
          <td><select name="select5">
              <option>是</option>
              <option>否</option>
            </select></td>
        </tr>
        <tr>
          <td><input name="textfield5" type="text" value="2" size="4" /></td>
          <td><input name="textfield24" type="text" value="3" size="4" /></td>
          <td>项目名称</td>
          <td><select name="select9">
              <option>文本</option>
              <option>数字</option>
            </select></td>
          <td><input name="textfield2242" type="text" value="100" size="10" /></td>
          <td><input name="textfield223" type="text" size="10" /></td>
          <td><input type="text" name="textfield33" /></td>
          <td><select name="select6">
              <option>是</option>
              <option>否</option>
            </select></td>
        </tr>
        <tr>
          <td><input name="textfield5" type="text" value="2" size="4" /></td>
          <td><input name="textfield24" type="text" value="4" size="4" /></td>
          <td>投资额</td>
          <td><select name="select9">
              <option>文本</option>
              <option>数字</option>
            </select></td>
          <td><input name="textfield2242" type="text" value="100" size="10" /></td>
          <td><input name="textfield223" type="text" size="10" /></td>
          <td><input type="text" name="textfield33" /></td>
          <td><select name="select6">
              <option>是</option>
              <option>否</option>
            </select></td>
        </tr>
        <tr>
          <td><input name="textfield5" type="text" value="2" size="4" /></td>
          <td><input name="textfield24" type="text" value="5" size="4" /></td>
          <td>项目累计支出</td>
          <td><select name="select9">
              <option>文本</option>
              <option>数字</option>
            </select></td>
          <td><input name="textfield2242" type="text" value="100" size="10" /></td>
          <td><input name="textfield223" type="text" size="10" /></td>
          <td><input type="text" name="textfield33" /></td>
          <td><select name="select6">
              <option>是</option>
              <option>否</option>
            </select></td>
        </tr>
        <tr>
          <td><input name="textfield5" type="text" value="2" size="4" /></td>
          <td><input name="textfield24" type="text" value="6" size="4" /></td>
          <td>至2010年底累计开支</td>
          <td><select name="select9">
              <option>文本</option>
              <option>数字</option>
            </select></td>
          <td><input name="textfield2242" type="text" value="100" size="10" /></td>
          <td><input name="textfield223" type="text" size="10" /></td>
          <td><input type="text" name="textfield33" /></td>
          <td><select name="select6">
              <option>是</option>
              <option>否</option>
            </select></td>
        </tr>
        <tr>
          <td><input name="textfield5" type="text" value="2" size="4" /></td>
          <td><input name="textfield24" type="text" value="7" size="4" /></td>
          <td>2011年预计支出</td>
          <td><select name="select9">
              <option>文本</option>
              <option>数字</option>
            </select></td>
          <td><input name="textfield2242" type="text" value="100" size="10" /></td>
          <td><input name="textfield223" type="text" size="10" /></td>
          <td><input type="text" name="textfield33" /></td>
          <td><select name="select6">
              <option>是</option>
              <option>否</option>
            </select></td>
        </tr>
        <tr>
          <td><input name="textfield5" type="text" value="2" size="4" /></td>
          <td><input name="textfield24" type="text" value="8" size="4" /></td>
          <td>至2010年已转资</td>
          <td><select name="select9">
              <option>文本</option>
              <option>数字</option>
            </select></td>
          <td><input name="textfield2242" type="text" value="100" size="10" /></td>
          <td><input name="textfield223" type="text" size="10" /></td>
          <td><input type="text" name="textfield33" /></td>
          <td><select name="select6">
              <option>是</option>
              <option>否</option>
            </select></td>
        </tr>
        <tr>
          <td><input name="textfield5" type="text" value="2" size="4" /></td>
          <td><input name="textfield24" type="text" value="9" size="4" /></td>
          <td>2011年预计转资</td>
          <td><select name="select9">
              <option>文本</option>
              <option>数字</option>
            </select></td>
          <td><input name="textfield2242" type="text" value="100" size="10" /></td>
          <td><input name="textfield223" type="text" size="10" /></td>
          <td><input type="text" name="textfield33" /></td>
          <td><select name="select6">
              <option>是</option>
              <option>否</option>
            </select></td>
        </tr>
      </tbody>
    </table>
  </div>
  <table id="test">
  </table>
</x:tbody>
<script>
		$(function(){
			$('#test').treegrid({
				title:'能力指标',
				iconCls:'icon-save',
				width:'auto',
				height:'auto',
				nowrap: false,
				rownumbers: false,
				animate:true,
				collapsible:false,
				url:"/json/treegrid_data.json",
				idField:'code',
				treeField:'code',
				singleSelect:false,
				frozenColumns:[[
					{field:'ck',checkbox:true},
	                {title:'代码',field:'code',width:150,
		                formatter:function(value){
		                	return '<span style="color:red">'+value+'</span>';
		                }
	                }
				]],
				columns:[[
					{field:'name',title:'指标名称',width:120},
					{field:'addr',title:'单位',width:120,rowspan:2},
					{field:'col4',title:'指标定义',width:280,rowspan:2}
				]]
			});
		});
		$(function(){
			$('#planType').treegrid({
				title:'扩展计划类别',
				iconCls:'icon-save',
				width:'auto',
				height:'auto',
				nowrap: false,
				rownumbers: false,
				animate:true,
				collapsible:false,
				url:"/json/treegrid_data_plan.json",
				idField:'code',
				treeField:'code',
				singleSelect:false,
				frozenColumns:[[
					{field:'ck',checkbox:true},
	                {title:'代码',field:'code',width:150,
		                formatter:function(value){
		                	return '<span style="color:red">'+value+'</span>';
		                }
	                }
				]],
				columns:[[
					{field:'name',title:'类别名称',width:120},
					{field:'addr',title:'说明',width:120,rowspan:2}
				]]
				
			});
		});
</script>
