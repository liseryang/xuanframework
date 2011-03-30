<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody>
  <div id="p" class="easyui-panel" title="项目基本信息" icon="icon-edit" style="padding:2px; margin-bottom:2px; width:580px;background:#fafafa;">
    <table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
      <tr>
        <td class="td_title" width="10%">项目名称</td>
        <td class="td_context" width="40%">省建项目测试</td>
        <td class="td_title" width="10%">项目编号</td>
        <td class="td_context" width="40%">09-FJ-CS-0001</td>
      </tr>
      <tr>
        <td height="21" class="td_title">项目属性</td>
        <td class="td_context">集团主管</td>
        <td class="td_title">公司类型</td>
        <td class="td_context">移动公司</td>
      </tr>
      <tr>
        <td height="21" class="td_title">建设单位</td>
        <td class="td_context">建设单位</td>
        <td class="td_title">建设单位负责人</td>
        <td class="td_context">张伟</td>
      </tr>
      <tr>
        <td height="21" class="td_title">项目投资</td>
        <td class="td_context"><span style="color:blue">20000.00</span></td>
        <td class="td_title">分摊金额*</td>
        <td class="td_context"><input name="Input20" class="easyui-numberbox" id="Input10" min="5.5" precision="2"/></td>
      </tr>
      <tr>
        <td height="21" class="td_title">紧急程度</td>
        <td colspan="3" class="td_context">一般</td>
      </tr>
      <tr>
        <td height="21" class="td_title">项目大类</td>
        <td class="td_context">大类</td>
        <td class="td_title">项目小类</td>
        <td class="td_context">小类</td>
      </tr>
      
      <tr>
        <td height="21" class="td_title">建设内容/规模</td>
        <td colspan="3" class="td_context">建设内容及规模</td>
      </tr>
    </table>
  </div>
  <table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 580px;">
    <tr>
	  <td class="td_title">xxxx计划</td>
      <td class="td_context">
	  <a href="#" class="easyui-linkbutton" plain="true" onClick="alert('弹出计划选择窗口，选定一个可以分摊的计划，根据填报单位及模板中定义的数据列生成下表！');">选择计划</a>
	  <a href="#" class="easyui-linkbutton" plain="true" onClick="alert('制定某一列为投资金额列，用于分摊数据');">指定金额列</a>
	  <a href="#" class="easyui-linkbutton" plain="true" onClick="alert('发布分摊，由计划部再次调整分摊的金额');parent.closePop();">分摊</a>
	  <a href="#" class="easyui-linkbutton" plain="true" onClick="alert('将项目投资分摊到选中的分公司上去，如不能平均分配，则把余额计入最后一个公司');">自动分摊</a>
	  <a href="#" class="easyui-linkbutton" plain="true" iconcls="icon-undo" onClick="parent.closePop();">取消</a></td>
    </tr>
  </table>
  <div id="p" class="easyui-panel" title="填写分摊信息" icon="icon-edit" style="padding:2px; width:580px; margin-bottom:2px;background:#fafafa;">
    <table width="912" class="easyui-datagrid" id="tt1" style="width:auto;height:auto;">
      <thead>
        <tr>
          <th width="138" field="name2"><div align="center"><strong>名称</strong></div></th>
          <th width="185" field="name3"><div align="center"><strong>项目名称</strong></div></th>
          <th width="185" field="name4"><div align="center"><strong>项目描述</strong></div></th>
          <th width="185" field="name6"><div align="center"><strong>分摊金额</strong></div></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td width="138">福建省公司/漳州分公司</td>
          <td><input id="nn" class="easyui-numberbox" min="5.5" precision="2"/>
            *          </td>
          <td><input id="nn" class="easyui-numberbox" min="5.5" precision="2"/>
          </td>
          <td><input id="nn" class="easyui-numberbox" min="5.5" precision="2"/>
          * </td>
        </tr>
        <tr>
          <td>福建省公司/宁德分公司</td>
          <td><input name="Input" class="easyui-numberbox" id="Input" min="5.5" precision="2"/>
          * </td>
          <td><input name="Input" class="easyui-numberbox" id="Input" min="5.5" precision="2"/></td>
          <td><input name="Input" class="easyui-numberbox" id="Input" min="5.5" precision="2"/>
          * </td>
        </tr>
        <tr>
          <td>福建省公司/南平分公司</td>
          <td><input name="Input2" class="easyui-numberbox" id="Input2" min="5.5" precision="2"/>
          * </td>
          <td><input name="Input2" class="easyui-numberbox" id="Input2" min="5.5" precision="2"/></td>
          <td><input name="Input2" class="easyui-numberbox" id="Input2" min="5.5" precision="2"/>
          * </td>
        </tr>
        <tr>
          <td>福建省公司/厦门分公司</td>
          <td><input name="Input3" class="easyui-numberbox" id="Input3" min="5.5" precision="2"/>
          * </td>
          <td><input name="Input3" class="easyui-numberbox" id="Input3" min="5.5" precision="2"/></td>
          <td><input name="Input3" class="easyui-numberbox" id="Input3" min="5.5" precision="2"/>
          * </td>
        </tr>
        <tr>
          <td>福建省公司/福州分公司</td>
          <td><input name="Input4" class="easyui-numberbox" id="Input4" min="5.5" precision="2"/>
          * </td>
          <td><input name="Input4" class="easyui-numberbox" id="Input4" min="5.5" precision="2"/></td>
          <td><input name="Input4" class="easyui-numberbox" id="Input4" min="5.5" precision="2"/>
          * </td>
        </tr>
        <tr>
          <td>福建省公司/三明分公司</td>
          <td><input name="Input5" class="easyui-numberbox" id="Input5" min="5.5" precision="2"/>
          * </td>
          <td><input name="Input5" class="easyui-numberbox" id="Input5" min="5.5" precision="2"/></td>
          <td><input name="Input5" class="easyui-numberbox" id="Input5" min="5.5" precision="2"/>
          * </td>
        </tr>
        <tr>
          <td>福建省公司/各市分公司</td>
          <td><input name="Input6" class="easyui-numberbox" id="Input6" min="5.5" precision="2"/>
          * </td>
          <td><input name="Input6" class="easyui-numberbox" id="Input6" min="5.5" precision="2"/></td>
          <td><input name="Input6" class="easyui-numberbox" id="Input6" min="5.5" precision="2"/>
          * </td>
        </tr>
        <tr>
          <td>福建省公司/莆田分公司</td>
          <td><input name="Input7" class="easyui-numberbox" id="Input7" min="5.5" precision="2"/>
          * </td>
          <td><input name="Input7" class="easyui-numberbox" id="Input7" min="5.5" precision="2"/></td>
          <td><input name="Input7" class="easyui-numberbox" id="Input7" min="5.5" precision="2"/>
          * </td>
        </tr>
        <tr>
          <td>福建省公司/龙岩分公司</td>
          <td><input name="Input8" class="easyui-numberbox" id="Input8" min="5.5" precision="2"/>
          * </td>
          <td><input name="Input8" class="easyui-numberbox" id="Input8" min="5.5" precision="2"/></td>
          <td><input name="Input8" class="easyui-numberbox" id="Input8" min="5.5" precision="2"/>
          * </td>
        </tr>
        <tr>
          <td>福建省公司/泉州分公司</td>
          <td><input name="Input9" class="easyui-numberbox" id="Input9" min="5.5" precision="2"/>
          * </td>
          <td><input name="Input9" class="easyui-numberbox" id="Input9" min="5.5" precision="2"/></td>
          <td><input name="Input9" class="easyui-numberbox" id="Input9" min="5.5" precision="2"/>
          * </td>
        </tr>
      </tbody>
    </table>
  </div>
</x:tbody>
