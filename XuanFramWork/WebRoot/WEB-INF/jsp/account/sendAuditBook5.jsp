<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/ui/xTag.tld" prefix="x"%>
<%
	response.setDateHeader("Expires", -10);
%>

<x:tbody title="项目决算审计--建设单位/财务部门确认" iconCls="icon-dot">
<div id="p" class="easyui-panel" title="项目信息" icon="icon-star" style="padding:2px; margin-bottom:2px;background:#fafafa;">
<table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
  <tr>
    <td width="10%" class="td_title">项目名称</td>
    <td width="40%" class="td_context">省建项目测试
      <a href="#" class="easyui-linkbutton" iconcls="icon-ok" onclick="popWin('项目详情', '/c/jsp/account/projectDetail', 'icon-search', 780, 480);">查看项目详情</a></td><td width="10%" class="td_title">项目编号</td>
    <td width="40%" class="td_context">09-FJ-CS-0001</td>
  </tr>
  <tr>
    <td width="10%" class="td_title">项目属性</td>
    <td width="40%" class="td_context">省管市建</td>    

    <td width="10%" class="td_title">公司类型</td>
    <td width="40%" class="td_context">TD公司</td>
  </tr>
  <tr>
    <td width="10%" class="td_title">立项文号</td>
    <td width="40%" class="td_context">12345</td>


   <td width="10%" class="td_title">立项文名称</td>
    <td width="40%" class="td_context">关于『省建项目测试』的立项批复</td>
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
   
    <td width="10%" class="td_title">建设单位</td>
    <td width="40%" class="td_context">建设单位</td>

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
      <td height="21" class="td_title">委托函文号</td>
      <td class="td_context">OA129888</td>
      <td class="td_title">预计审计费</td>
      <td colspan="3" class="td_context">1250</td>
    </tr>
    <tr>
      <td height="21" class="td_title">附件</td>
      <td colspan="5" class="td_context">
      	<a href="#">建设单位附件.doc</a> &nbsp;
      	<a href="#">财务部门附件.doc</a> &nbsp;
      	<a href="#">审计委托函附件.doc</a> &nbsp;
      	<a href="#">决算审计报告初稿.doc</a> &nbsp;
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
      <td height="21" class="td_title">内审部意见</td>
      <td class="td_context" colspan="5">内审部意见</td>
    </tr>
    <tr>
      <td height="21" class="td_title">审计单位意见</td>
      <td class="td_context" colspan="5">审计单位意见</td>
    </tr>
    
    
  	<tr>
      <td height="21" class="td_title" width="10%">送审金额</td>
      <td class="td_context">12000.00</td>
      <td height="21" class="td_title" width="10%">审定金额</td>
      <td class="td_context">10000.00</td>
      <td height="21" class="td_title" width="10%">审增金额</td>
      <td class="td_context">2000.00</td>
    </tr>
    <tr>
    	<td height="21" class="td_title" width="10%">审减金额</td>
      <td class="td_context">0.00</td>
      <td height="21" class="td_title">违规金额</td>
      <td class="td_context">0.00</td>
      <td class="td_title">审计发现问题</td>
      <td class="td_context">6
        <span class="td_context">个</span></td>
    </tr>
    <tr>
      <td height="21" class="td_title">节约成本（投资）</td>
      <td class="td_context">20.00</td>
      <td class="td_title">提出管理建议</td>
      <td class="td_context" colspan="3">5
        条
      </td>
      
    </tr>
    <tr>
    	<td class="td_title">相关附件</td>
      <td colspan="5" class="td_context"><input type="file" name="file" /></td>
    </tr>
    <tr>
      <td height="21" class="td_title">意见</td>
      <td colspan="5" class="td_context"><textarea name="textarea" style="width:98%"></textarea></td>
    </tr>
    
  </table>
  </div>
  <div id="p" class="easyui-panel" title="项目计划及招投标管理问题" icon="icon-star" style="padding:2px; margin-bottom:2px;background:#fafafa;"><table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
    <tr>
      <td><input name="checkbox" type="checkbox" value="checkbox"/>违规未执行可研报告、立项申请、立项批复、设计批复等审批流程
      	<td><input name="checkbox" type="checkbox" value="checkbox"/>项目超规模购置、建设
      		<td><input name="checkbox" type="checkbox" value="checkbox"/>实际投资额超设计批复
      			<td><input name="checkbox" type="checkbox" value="checkbox"/>项目用途、内容擅自变更
      				<td><input name="checkbox" type="checkbox" value="checkbox"/>项目后评估及其报告缺失
      					<td><input name="checkbox" type="checkbox" value="checkbox"/>项目未经招投标程序
      						<td><input name="checkbox" type="checkbox" value="checkbox"/>项目招投标流程执行不足
      							<td><input name="checkbox" type="checkbox" value="checkbox"/>其它
    </tr>
    </table>
  </div>
  <div id="p" class="easyui-panel" title="项目实施管理问题" icon="icon-star" style="padding:2px; margin-bottom:2px;background:#fafafa;"><table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
    <tr>
      <td><input name="checkbox" type="checkbox" value="checkbox"/>项目随工签证虚假不真实
      	<td><input name="checkbox" type="checkbox" value="checkbox"/>项目随工签证违规
      		<td><input name="checkbox" type="checkbox" value="checkbox"/>施工单位选择依据不足
      			<td><input name="checkbox" type="checkbox" value="checkbox"/>结决算审计单位选择依据不足<td><input name="checkbox" type="checkbox" value="checkbox"/>项目竣工财务决算时间滞后<td><input name="checkbox" type="checkbox" value="checkbox"/>报送项目结算造价、竣工决算审计时间滞后<td><input name="checkbox" type="checkbox" value="checkbox"/>项目竣工验收未按规定执行<td><input name="checkbox" type="checkbox" value="checkbox"/>项目材料使用与设计批复不一致且未经审批<td><input name="checkbox" type="checkbox" value="checkbox"/>项目材料进、出、退库流程及管理违规<td><input name="checkbox" type="checkbox" value="checkbox"/>项目验收内容、数量与实际交付资产内容、数量不一致<td><input name="checkbox" type="checkbox" value="checkbox"/>项目形象进度表提交不及时、合理<td><input name="checkbox" type="checkbox" value="checkbox"/>项目资料不完整、不规范<td><input name="checkbox" type="checkbox" value="checkbox"/>其它
    </tr>
    </table>
  	</div>
    <div id="p" class="easyui-panel" title="项目会计信息处理问题" icon="icon-star" style="padding:2px; margin-bottom:2px;background:#fafafa;"><table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
    <tr>
      <td><input name="checkbox" type="checkbox" value="checkbox"/>项目材料进出库账务处理不合规<td><input name="checkbox" type="checkbox" value="checkbox"/>决算报表差错<td><input name="checkbox" type="checkbox" value="checkbox"/>项目竣工工程量与MIS支出表不一致<td><input name="checkbox" type="checkbox" value="checkbox"/>项目造价审核费未预列<td><input name="checkbox" type="checkbox" value="checkbox"/>资产分摊金额存在较大差异或分摊不合理<td><input name="checkbox" type="checkbox" value="checkbox"/>少列或漏列项目成本<td><input name="checkbox" type="checkbox" value="checkbox"/>多列施工费或列支其他项目的成本<td><input name="checkbox" type="checkbox" value="checkbox"/>项目列支不及时、结转固定资产不及时或提前转固<td><input name="checkbox" type="checkbox" value="checkbox"/>项目转固依据不足或违规<td><input name="checkbox" type="checkbox" value="checkbox"/>列支非项目关联的违规费用<td><input name="checkbox" type="checkbox" value="checkbox"/>项目付款依据不足或违规支付<td><input name="checkbox" type="checkbox" value="checkbox"/>项目账务调整附件不全或违规<td><input name="checkbox" type="checkbox" value="checkbox"/>应付款账面数按供应商分,未按工程项目明细分，无法核对各项目未支付的金额<td><input name="checkbox" type="checkbox" value="checkbox"/>其它
    </tr>
    </table>
  	</div>
    <div id="p" class="easyui-panel" title="项目决算审计处理问题" icon="icon-star" style="padding:2px; margin-bottom:2px;background:#fafafa;"><table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
    <tr>
      <td><input name="checkbox" type="checkbox" value="checkbox"/>项目竣工结算造价审计不及时<td><input name="checkbox" type="checkbox" value="checkbox"/>甲供材料未经价款结算审核；实际支付施工费与造价咨询审核金额不符<td><input name="checkbox" type="checkbox" value="checkbox"/>项目竣工决算审计不及时<td><input name="checkbox" type="checkbox" value="checkbox"/>项目决算造价客观、真实性不足或未按规定审计<td><input name="checkbox" type="checkbox" value="checkbox"/>结决算审计流程及审计报告不规范<td><input name="checkbox" type="checkbox" value="checkbox"/>其它
    </tr>
    </table>
  	</div>
    <div id="p" class="easyui-panel" title="项目转固及后续管理问题" icon="icon-star" style="padding:2px; margin-bottom:2px;background:#fafafa;"><table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
    <tr>
      <td><input name="checkbox" type="checkbox" value="checkbox"/>资产交接流程及手续不规范<td><input name="checkbox" type="checkbox" value="checkbox"/>项目档案资料归档不及时、不规范<td><input name="checkbox" type="checkbox" value="checkbox"/>交付使用资产未贴标签<td><input name="checkbox" type="checkbox" value="checkbox"/>资产明细与实物账实不符<td><input name="checkbox" type="checkbox" value="checkbox"/>资产明细（台帐）不规范<td><input name="checkbox" type="checkbox" value="checkbox"/>其它
    </tr>
    </table>
  	</div>
    <div id="p" class="easyui-panel" title="涉及法律法规重大问题" icon="icon-star" style="padding:2px; margin-bottom:2px;background:#fafafa;"><table class="userInput_table" cellspacing="0" cellpadding="0" border="1" style="margin: 1 auto; width: 100%;">
		<tr>
      <td><input name="checkbox" type="checkbox" value="checkbox"/>涉及法律法规重大问题
    </tr>
		</table>
  	</div>
  <div align="center"><a href="#" class="easyui-linkbutton" iconcls="icon-ok" onclick="alert('提交审计单位！');">提交</a> <a href="#" class="easyui-linkbutton" iconcls="icon-undo" onclick="">退回</a></div>
</x:tbody>
