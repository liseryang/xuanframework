package com.xuan.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.DynaBean;
import org.apache.commons.beanutils.RowSetDynaClass;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.PreparedStatementCreatorFactory;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.SqlTypeValue;
import org.springframework.jdbc.core.StatementCreatorUtils;
import org.springframework.jdbc.core.support.JdbcDaoSupport;


public class CommonJdbcDao extends JdbcDaoSupport implements JdbcDaoInterface {	
	
	@SuppressWarnings("unchecked")
	public List<DynaBean> queryDynaBeans(String sql,Object... args){
		return (List<DynaBean>) getJdbcTemplate().query(sql, args, new ResultSetExtractor<Object>(){
			
			public Object extractData(ResultSet rs) throws SQLException,
					DataAccessException {
				RowSetDynaClass rsdc = new RowSetDynaClass(rs);
				return rsdc.getRows();
			}			
		});
	}
	
	public int execute(String sql,final Object... args){	
		return getJdbcTemplate().update(sql, args);		
	}
	
	@SuppressWarnings("unchecked")
	public <T> T query(String sql,ResultSetExtractor<?> rch){		
		return (T) getJdbcTemplate().query(sql, rch);
	}
	
	//TODO Not finish yet
	public void query(RowCallbackHandler rowCallbackHandler, int resultSetType,String sql,final Object... args){
		PreparedStatementCreatorFactory factory = new PreparedStatementCreatorFactory(sql);
		factory.setResultSetType(resultSetType);
//		new PreparedStatementCreatorFactory();
		PreparedStatementCreator creator = factory.newPreparedStatementCreator(sql,args);
		getJdbcTemplate().query(creator,rowCallbackHandler);
		
	}
	
	
	public void query(RowCallbackHandler rowCallbackHandler, String sql,
			Object... args) {
		if (args==null){
			getJdbcTemplate().query(sql,rowCallbackHandler);		
		}else{
			getJdbcTemplate().query(sql,args,rowCallbackHandler);		
		}
	}
	
	public long queryForLong(String sql, Object... args) {
		return getJdbcTemplate().queryForLong(sql, args);
	}	
	
	
	public long getCount(String sql, Object... args) {
		sql = "select count(*) from (" + sql + ")";
		long count = queryForLong(sql,args);
		return count;
	}
		
	public int queryForInt(String sql, Object... args) {
		return getJdbcTemplate().queryForInt(sql, args);
	}
	
	
	public  List<Map<String, Object>> queryForList(String sql, Object... args) {
		return getJdbcTemplate().queryForList(sql, args);
	}
	
	
	public  Map<String, Object> queryForMap(String sql, Object... args) {
		Map<String, Object> queryForMap = null;
		try{			
			queryForMap = getJdbcTemplate().queryForMap(sql, args);
		}catch(EmptyResultDataAccessException e){
			logger.warn("dao.queryForMap failed,no result:"+e.getMessage());
		}catch(IncorrectResultSizeDataAccessException e){
			logger.warn("dao.queryForMap failed,IncorrectResultSize:"+e.getMessage());
		}
		return queryForMap;
	}

	
	public void excuteBatch(String sql, final List<Object[]> updateParameters) {
		getJdbcTemplate().execute(sql, new PreparedStatementCallback<Object>() {
			
			public Object doInPreparedStatement(PreparedStatement ps)
					throws SQLException, DataAccessException {
				if (updateParameters!=null){
					for (Object[] objects : updateParameters) {
						if (objects!=null){							
								for (int i = 1; i < objects.length +1 ; i++) {
									StatementCreatorUtils.setParameterValue(ps, i, SqlTypeValue.TYPE_UNKNOWN, objects[i-1]);
								}
							ps.addBatch();						        
						 }
					}
					ps.executeBatch();
				}
				
				return null;
			}
		});
		
	}
	
}
