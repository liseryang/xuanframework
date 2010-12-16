package com.xuan.action.tag;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xuan.action.BaseController;
import com.xuan.comm.util.Pagination;
import com.xuan.comm.util.ParamUtil;
import com.xuan.comm.util.Validator;
import com.xuan.entity.comm.QueryInfo;
import com.xuan.service.tag.TagServiceInterface;

/**
 * 该控制类被用来配合标记库完成动态操作
 * 
 */
@Controller
@RequestMapping("/t")
public class TagController extends BaseController {
	private static Log _log = LogFactory.getLog(TagController.class);

	@Autowired
	TagServiceInterface tsi;

	@RequestMapping(value = "/q/{formId}")
	public void getPagination(@PathVariable String formId,
			HttpServletRequest req, HttpServletResponse res) {
		// 获得ID字段
		String idfield = ParamUtil.getString(req, "_" + formId + "_"
				+ "idfield");
		// 获得页大小
		int pageSize = ParamUtil.get(req, "rows", 10);
		// 获得当前是第几页
		int pageNum = ParamUtil.get(req, "page", 1);
		// 获得HQL--可能要解密
		StringBuffer hql = new StringBuffer(ParamUtil.getString(req, "_"
				+ formId + "_hql"));
		// 如果没有写Where子句，则1=1默认
		String where = ParamUtil.getString(req, "_" + formId + "_" + "where",
				"1=1");
		hql.append(" where ").append(where);

		// 处理查询子句问题
		// 字段名
		String[] fields = ParamUtil.getStringValues(req, "_" + formId + "_"
				+ "field[]");
		// 字段类型
		String[] types = ParamUtil.getStringValues(req, "_" + formId + "_"
				+ "type[]");
		// 操作符号
		String[] operators = ParamUtil.getStringValues(req, "_" + formId + "_"
				+ "operator[]");
		// 值
		String[] values = ParamUtil.getStringValues(req, "_" + formId + "_"
				+ "value[]");
		List<Object> params = new ArrayList<Object>();
		if (fields != null) {
			int i = 0;
			for (String field : fields) {
				if (Validator.isNotNull(values[i])) {
					// TODO 多种类型需要判断,多种操作符要进行判断
					if (types[i].equals("String")) {
						params.add("%" + values[i] + "%");
						hql.append(" and ").append(field).append(" ").append(
								operators[i]).append(" ").append("?");
					}
				}
				i++;
			}
		}

		// 处理分组问题
		String groupBy = ParamUtil.getString(req, "_" + formId + "_"
				+ "groupby", null);
		if (Validator.isNotNull(groupBy))
			hql.append(" GROUP BY ").append(groupBy);

		// 处理排序问题
		// TODO 是否要加上默认排序?如果不添则直接用id作为排序
		String sortName = ParamUtil.getString(req, "sort", null);
		String sortOrder = ParamUtil.getString(req, "order", "");
		if (Validator.isNotNull(sortName))
			hql.append(" ORDER BY ").append(sortName).append(" ").append(
					sortOrder).append(",").append(idfield);
		else
			hql.append(" ORDER BY ").append(idfield);
		_log.info(hql);
		try {
			Pagination page = tsi.getPagination(hql.toString(), params,
					pageSize, pageNum);
			this.writeMessage(res, page.getGridJSON());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/find/t")
	public void findPagination(HttpServletRequest req, HttpServletResponse res) {
		ParamUtil.print(req);
		System.out.println(req.getRequestURL());
	}

	@RequestMapping(value = "/q/{formId}/{queryId}")
	public void getPaginationByQueryId(@PathVariable String formId,
			@PathVariable String queryId, HttpServletRequest req,
			HttpServletResponse res) throws JspException {
		// 获得QueryInfo对象
		QueryInfo query = tsi.findQueryInfoById(queryId);
		if (query == null) {
			_log.error("QueryInfo Object id[" + queryId + "] is not exit!");
			// ToDO:此处需要返回错误对象，无法完成查询
			throw new JspException("QueryInfo Object id[" + queryId
					+ "] is not exit!");
		} else {
			StringBuffer hql = new StringBuffer(query.getQSelect());
			// where默认
			hql.append(Validator.isNotNull(query.getQWhere()) ? " WHERE "
					+ query.getQWhere() : " WHERE 1=1");
			// 获得页大小
			int pageSize = ParamUtil.get(req, "rows", 10);
			// 获得当前是第几页
			int pageNum = ParamUtil.get(req, "page", 1);
			// 处理查询子句问题
			// 字段名
			String[] fields = ParamUtil.getStringValues(req, "_" + formId + "_"
					+ "field[]");
			// 字段类型
			String[] types = ParamUtil.getStringValues(req, "_" + formId + "_"
					+ "type[]");
			// 操作符号
			String[] operators = ParamUtil.getStringValues(req, "_" + formId
					+ "_" + "operator[]");
			// 值
			String[] values = ParamUtil.getStringValues(req, "_" + formId + "_"
					+ "value[]");
			List<Object> params = new ArrayList<Object>();
			if (fields != null) {
				int i = 0;
				for (String field : fields) {
					if (Validator.isNotNull(values[i])) {
						// TODO 多种类型需要判断,多种操作符要进行判断
						if (types[i].equals("String")) {
							params.add("%" + values[i] + "%");
							hql.append(" and ").append(field).append(" ")
									.append(operators[i]).append(" ").append(
											"?");
						}
					}
					i++;
				}
			}
			hql.append(Validator.isNotNull(query.getQGroup()) ? " GROUP BY "
					+ query.getQGroup() : "");
			// 处理排序问题
			String sortName = ParamUtil.getString(req, "sort", null);
			String sortOrder = ParamUtil.getString(req, "order", "");
			if (Validator.isNotNull(sortName))
				hql.append(" ORDER BY ").append(sortName).append(" ").append(
						sortOrder).append(",").append(query.getQIdfield());
			else
				hql.append(" ORDER BY ").append(query.getQIdfield());
			_log.info(hql);
			try {
				Pagination page = tsi.getPagination(hql.toString(), params,
						pageSize, pageNum);
				this.writeMessage(res, page.getGridJSON());
			} catch (Exception e) {
				// ToDO: 应该是返回一个查询错误的内容
				e.printStackTrace();
			}
		}

	}
}
