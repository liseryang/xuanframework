package com.xuan.service.tag;

import java.util.List;

import com.xuan.comm.util.Pagination;
import com.xuan.entity.comm.QueryInfo;

public interface TagServiceInterface {
	/**
	 * 通过HQL获得分页数据
	 * 
	 * @param hql
	 * @param params
	 *            参数
	 * @param pageSize
	 *            页数
	 * @param pageNum
	 *            页码
	 * @return
	 */
	public Pagination getPagination(String hql, List<?> params, int pageSize,
			int pageNum);

	/**
	 * 通过QueryID获取QueryInfo对象
	 * 
	 * @param queryId
	 * @return
	 */
	public QueryInfo findQueryInfoById(String queryId);
}
