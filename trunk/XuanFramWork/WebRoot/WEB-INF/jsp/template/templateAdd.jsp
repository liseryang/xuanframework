<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="计划模板定义" iconCls="icon-dot">
  <div id="p0" class="easyui-panel" title="基本信息" icon="icon-edit" style="fit:true;padding:2px; margin-bottom:2px;background:#fafafa;">
    <table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
      <tr>
        <td class="td_title">模板编号*</td>
        <td class="td_context"><input name="receipt_memo_number_condition" type="text" id="receipt_memo_number_condition" value="123456"/>        </td>
        <td class="td_title">模板名称*</td>
        <td class="td_context"><input name="receipt_memo_number_condition3" type="text" id="receipt_memo_number_condition3" value="2010年地市填报模板"/></td>
        <td class="td_title">是否新版本/版本号</td>
        <td class="td_context">是/1 <a href="#" class="easyui-linkbutton" iconcls="icon-analysis" plain="true">生成新版本</a></td>
      </tr>
      <tr>
        <td height="21" class="td_title">公司类型*</td>
        <td class="td_context"><input class="easyui-combobox" name="planStatus22" url="/json/companyType_data.json"	valuefield="id" textfield="text" editable="false"panelheight="auto" /></td>
        <td class="td_title">专业类型*</td>
        <td class="td_context"><select class="easyui-combobox" name="select">
            <option>---未选择---</option>
            <option selected="selected">数据业务网</option>
            <option>IT项目建设</option>
          </select></td>
        <td class="td_title">是否通过验证</td>
        <td class="td_context">否</td>
      </tr>
      <tr>
        <td height="21" class="td_title">启用日期从</td>
        <td class="td_context"><input name="Input42" class="easyui-datebox" id="Input4" size="10"/>
          至
          <input name="Input3" class="easyui-datebox" id="Input3"  size="10"/></td>
        <td class="td_title">启用状态*</td>
        <td class="td_context"><label>
          <input type="radio" name="radiobutton" value="radiobutton" checked="checked"/>
          是</label>
          <label>
          <input type="radio" name="radiobutton" value="radiobutton" />
          否</label></td>
        <td class="td_title">是否生成项目包</td>
        <td class="td_context"><label>
          <input type="radio" name="radiobutton2" value="radiobutton2" checked="checked"/>
          是</label>
          <label>
          <input type="radio" name="radiobutton2" value="radiobutton2" />
          否</label></td>
      </tr>
      <tr>
        <td height="21" class="td_title">备注</td>
        <td colspan="3" class="td_context"><textarea name="textarea" style="width:98%"></textarea></td>
        <td colspan="2" class="td_context"><a href="#" class="easyui-linkbutton" iconcls="icon-ok" plain="true" onclick="alert('保存成功，可选择填报');">保存</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" plain="true" onclick="">重置</a> <a href="/c/jsp/template/templateSearch" class="easyui-linkbutton" iconcls="icon-back" plain="true" onclick="">返回</a></td>
      </tr>
    </table>
  </div>
  <table id="planType">
  </table>
  <div id="p2" class="easyui-panel" title="模板数据映射" icon="icon-analysis" collapsible="true" style="padding:2px; margin-bottom:2px;background:#fafafa;">
    <p>模板文件：
      <input name="" type="file" />
      模板.xls（上传后生成以下表格中的信息）</p>
    <table class="easyui-datagrid" id="tt2" fit="true">
      <thead>
        <tr>
          <th width="34" field="name2"><strong>列号</strong></th>
          <th width="193" field="name99"><strong>名称</strong></th>
          <th width="77" field="name3"><strong>数据类型</strong></th>
          <th width="77" field="name4"><strong>长度</strong></th>
          <th width="66" field="name5"><strong>是否必填</strong></th>
          <th width="77" field="name51"><strong>是否合计列</strong></th>
          <th width="77" field="name52"><strong>是否分组列</strong></th>
          <th width="174" field="name53"><strong>说明</strong></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>MIS编号</td>
          <td><select name="select8">
              <option>文本</option>
              <option selected="selected">数字</option>
            </select></td>
          <td><input name="textfield225" type="text" value="10.2" size="10" /></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox" value="checkbox" />
            </div></td>
          <td><input type="text" name="textfield32" /></td>
        </tr>
        <tr>
          <td>2</td>
          <td>项目名称</td>
          <td><select name="select9">
              <option>文本</option>
              <option>数字</option>
            </select></td>
          <td><input name="textfield2242" type="text" value="100" size="10" /></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox2" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox2" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox2" value="checkbox" />
            </div></td>
          <td><input type="text" name="textfield33" /></td>
        </tr>
        <tr>
          <td>3</td>
          <td>投资额</td>
          <td><select name="select9">
              <option>文本</option>
              <option>数字</option>
            </select></td>
          <td><input name="textfield2242" type="text" value="100" size="10" /></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox3" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox3" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox3" value="checkbox" />
            </div></td>
          <td><input type="text" name="textfield33" /></td>
        </tr>
        <tr>
          <td>4</td>
          <td>项目累计支出</td>
          <td><select name="select9">
              <option>文本</option>
              <option>数字</option>
            </select></td>
          <td><input name="textfield2242" type="text" value="100" size="10" /></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox4" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox4" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox4" value="checkbox" />
            </div></td>
          <td><input type="text" name="textfield33" /></td>
        </tr>
        <tr>
          <td>5</td>
          <td>至2010年底累计开支</td>
          <td><select name="select9">
              <option>文本</option>
              <option>数字</option>
            </select></td>
          <td><input name="textfield2242" type="text" value="100" size="10" /></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox5" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox5" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox5" value="checkbox" />
            </div></td>
          <td><input type="text" name="textfield33" /></td>
        </tr>
        <tr>
          <td>6</td>
          <td>2011年预计支出</td>
          <td><select name="select9">
              <option>文本</option>
              <option>数字</option>
            </select></td>
          <td><input name="textfield2242" type="text" value="100" size="10" /></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox6" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox6" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox6" value="checkbox" />
            </div></td>
          <td><input type="text" name="textfield33" /></td>
        </tr>
        <tr>
          <td>7</td>
          <td>至2010年已转资</td>
          <td><select name="select9">
              <option>文本</option>
              <option>数字</option>
            </select></td>
          <td><input name="textfield2242" type="text" value="100" size="10" /></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox7" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox7" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox7" value="checkbox" />
            </div></td>
          <td><input type="text" name="textfield33" /></td>
        </tr>
        <tr>
          <td>8</td>
          <td>2011年预计转资</td>
          <td><select name="select9">
              <option>文本</option>
              <option>数字</option>
            </select></td>
          <td><input name="textfield2242" type="text" value="100" size="10" /></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox8" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox8" value="checkbox" />
            </div></td>
          <td><div align="center">
              <input type="checkbox" name="checkbox8" value="checkbox" />
            </div></td>
          <td><input type="text" name="textfield33" /></td>
        </tr>
      </tbody>
    </table>
  </div>
  <table id="test">
  </table>
  <div id="p4" class="easyui-panel" title="模板汇总定义" icon="icon-analysis" collapsible="true" style="padding:2px; margin-bottom:2px;background:#fafafa;">
  <p><a href="#" class="easyui-linkbutton" iconcls="icon-add" plain="true" onclick="editSummary();">增加</a></p>
    <table width="686" class="easyui-datagrid" id="tt" fit="true">
      <thead>
        <tr>
          <th width="41" field="name2"><strong>序号</strong></th>
          <th width="276" field="name99"><strong>名称</strong></th>
          <th width="265" field="name3"><strong>说明</strong></th>
          <th width="84" field="name53"><strong>操作</strong></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><div align="right">1</div></td>
          <td>按计划类别汇总</td>
          <td>无</td>
          <td><div align="center"><a href="#" class="easyui-linkbutton" iconcls="icon-edit" plain="true" onclick="editSummary();"></a>&nbsp;<a href="#" class="easyui-linkbutton" iconcls="icon-remove" plain="true"  onclick="removeSummary();"></a></div></td>
        </tr>
        <tr>
          <td><div align="right">2</div></td>
          <td>按建设单位汇总</td>
          <td>无</td>
          <td><div align="center"><a href="#" class="easyui-linkbutton" iconcls="icon-edit" plain="true" onclick="editSummary();"></a>&nbsp;<a href="#" class="easyui-linkbutton" iconcls="icon-remove" plain="true"  onclick="removeSummary();"></a></div></td>
        </tr>
        <tr>
          <td><div align="right">3</div></td>
          <td>按建设单位与计划类别汇总</td>
          <td>无</td>
          <td><div align="center"><a href="#" class="easyui-linkbutton" iconcls="icon-edit" plain="true" onclick="editSummary();"></a>&nbsp;<a href="#" class="easyui-linkbutton" iconcls="icon-remove" plain="true"  onclick="removeSummary();"></a></div></td>
        </tr>
      </tbody>
    </table>
  </div>
</x:tbody>
<script>
		$(function(){
			$('#test').treegrid({
				title:'能力指标',
				iconCls:'icon-analysis',
				width:'auto',
				height:'auto',
				collapsible:true,
				nowrap: false,
				rownumbers: false,
				animate:true,
				collapsible:true,
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
				title:'计划类别定义',
				iconCls:'icon-analysis',
				width:'auto',
				height:'auto',
				collapsible:true,
				nowrap: false,
				rownumbers: false,
				animate:true,
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
		function editSummary(){
			popWin('维护模板汇总定义', '/c/jsp/template/templateSummaryAdd', 'icon-search', 616, 440);
		}
		function removeSummary(){
			confirm('你是否要删除该汇总定义？');
		}
</script>
