package com.xuan.dao;

import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.DynaBean;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowCallbackHandler;

public interface JdbcDaoInterface  {

	List<DynaBean> queryDynaBeans(String sql, Object... args);

	int execute(String sql, Object... args);

	public <T> T query(String sql,ResultSetExtractor<?> rch);

	
	void query(RowCallbackHandler rowCallbackHandler, int resultSetType,
			String sql, Object... args);
	
	void query(RowCallbackHandler rowCallbackHandler,String sql, Object... args);

	long queryForLong(String sql, Object... args);

	int queryForInt(String sql, Object... args);

	List<Map<String, Object>> queryForList(String sql, Object... args);

	Map<String, Object> queryForMap(String sql, Object... args);

	long getCount(String sql, Object... args);

}
