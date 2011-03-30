<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody>
  <div id="p" class="easyui-panel" title="基本信息" icon="icon-edit" style="padding:2px; margin-bottom:2px; width:580px;background:#fafafa;">
    <table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
      <tr>
        <td class="td_title" width="10%">汇总名称</td>
        <td class="td_context"><input name="textfield" type="text" value="汇总名称" /></td>
      </tr>
      <tr>
        <td height="21" class="td_title">数据逻辑</td>
        <td class="td_context"><textarea name="textarea" style="width:98%">以计划类型汇总各项数据</textarea></td>
      </tr>
      <tr>
        <td height="21" class="td_title">备注</td>
        <td class="td_context"><textarea name="textarea2" style="width:98%">说明一下该汇总定义</textarea></td>
      </tr>
    </table>
  </div>
  <table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 580px;">
    <tr>
      <td class="td_context"><a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-save" onClick="alert('保存该定义，并刷新父窗口的汇总定义！');parent.closePop();">保存</a> <a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-back" onClick="parent.closePop();">返回</a> <a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-add" onClick="alert('增加一行汇总定义');">增加行</a> <a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-remove" onClick="alert('删除选中的汇总定义');">删除行</a>
	  <a href="#" class="easyui-linkbutton" plain="true" onClick="alert('上移选中的内容');">上移</a>
	  <a href="#" class="easyui-linkbutton" plain="true" onClick="alert('下移选中的内容');">下移</a></td>
    </tr>
  </table>
  <div id="p" class="easyui-panel" title="汇总行定义" icon="icon-edit" style="padding:2px; width:580px; margin-bottom:2px;background:#fafafa;">
    <table width="555" class="easyui-datagrid" id="tt1" style="width:auto;height:auto;">
      <thead>
        <tr>
          <th width="24" field="name0" align="center"> <input name="" type="checkbox" value="">
          </th>
          <th width="168" field="name1" align="center">标题</th>
          <th width="168" field="name2" align="center">数据定义</th>
          <th width="175" field="name3" align="center">描述</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td align="right" width="24"><input name="Input10" type="checkbox" value="">
          </td>
          <td align="right" width="168"><input name="Input4" class="easyui-numberbox" id="Input4" value="基本开支合计" min="5.5" precision="2"/></td>
          <td width="168"><input name="Input5" class="easyui-numberbox" id="Input5" value="结转项目与新建项目开支求和" min="5.5" precision="2"/></td>
          <td><input id="nn" class="easyui-numberbox" min="5.5" precision="2"/>
          </td>
        </tr>
        <tr>
          <td align="right"><input name="Input11" type="checkbox" value="">
          </td>
          <td align="right"><input name="Input9" class="easyui-numberbox" id="Input9" value="结转项目开支" min="5.5" precision="2"/></td>
          <td><input name="Input6" class="easyui-numberbox" id="Input6" value="不是新建项目即为结转项目" min="5.5" precision="2"/></td>
          <td><input name="Input" class="easyui-numberbox" id="Input" min="5.5" precision="2"/></td>
        </tr>
        <tr>
          <td align="right"><input name="Input11" type="checkbox" value="">
          </td>
          <td align="right"><input name="Input9" class="easyui-numberbox" id="Input9" value="新建项目开支" min="5.5" precision="2"/></td>
          <td><input name="Input6" class="easyui-numberbox" id="Input6" value="新建项目" min="5.5" precision="2"/></td>
          <td><input name="Input" class="easyui-numberbox" id="Input" min="5.5" precision="2"/></td>
        </tr>
        <tr>
          <td align="right"><input name="Input11" type="checkbox" value="">
          </td>
          <td align="right"><input name="Input9" class="easyui-numberbox" id="Input9" value="预计结转开支" min="5.5" precision="2"/></td>
          <td><input name="Input6" class="easyui-numberbox" id="Input6" value="预计" min="5.5" precision="2"/></td>
          <td><input name="Input" class="easyui-numberbox" id="Input" min="5.5" precision="2"/></td>
        </tr>
        <tr>
          <td align="right"><input name="Input11" type="checkbox" value="">
          </td>
          <td align="right"><input name="Input9" class="easyui-numberbox" id="Input9" value="预计转资" min="5.5" precision="2"/></td>
          <td><input name="Input6" class="easyui-numberbox" id="Input6" value="转资" min="5.5" precision="2"/></td>
          <td><input name="Input" class="easyui-numberbox" id="Input" min="5.5" precision="2"/></td>
        </tr>
      </tbody>
    </table>
  </div>
</x:tbody>
