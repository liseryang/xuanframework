package com.xuan.service.tag;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.xuan.comm.util.Pagination;
import com.xuan.entity.comm.QueryInfo;
import com.xuan.service.BaseService;

@Service("tagService")
public class TagServiceImpl extends BaseService implements TagServiceInterface {

	private static HashMap<String, QueryInfo> querys = new HashMap<String, QueryInfo>();

	public Pagination getPagination(String hql, List<?> params, int pageSize,
			int pageNum) {
		return dao.findPaginationByHQL(hql, pageNum, pageSize, params);
	}

	public QueryInfo findQueryInfoById(String queryId) {
		// 缓存queryInfo
		if (!querys.containsKey(queryId)) {
			QueryInfo query = dao.findById(QueryInfo.class, queryId);
			if (query == null)
				return null;
			querys.put(queryId, dao.findById(QueryInfo.class, queryId));
		}
		return querys.get(queryId);
	}

}
