package com.xuan.dao;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.xuan.comm.util.Pagination;

public interface IJpaDao {
	/**
	 * 持久化对象
	 * 
	 * @param entity
	 */
	public void persist(final Object entity);

	/**
	 *更新对象
	 * 
	 * @param entity
	 */
	public void update(final Object entity);

	/**
	 * 删除对象
	 * 
	 * @param entity
	 */
	public void remove(final Object entity);

	/**
	 * 查找
	 * 
	 * @param <T>
	 * @param t
	 * @return List
	 */
	public <T> List<T> find(final Class<T> t);

	/**
	 * 通过ID查找
	 * 
	 * @param <E>
	 * @param t
	 * @param id
	 * @return
	 */
	public <E> E findById(final Class<E> t, final Serializable id)
			throws DataAccessException;

	/**
	 * 可变参数查找
	 * 
	 * @param <E>
	 * @param hql
	 * @param parameters
	 * @return
	 */
	public <E> List<E> find(final String hql, final Object... parameters)
			throws DataAccessException;

	/**
	 * HQL查询
	 * 
	 * @param hql
	 * @param params
	 * @return
	 */
	public List<?> find(final String hql, final List<?> params)
			throws DataAccessException;

	/**
	 * 查找唯一对象
	 * 
	 * @param <T>
	 * @param hql
	 * @param parameters
	 * @return
	 */
	public <T> T findSingle(final String hql, final Object... parameters)
			throws DataAccessException;

	/**
	 * 持久化一组对象
	 * 
	 * @param c
	 */
	public void persistAll(final Collection<?> c);

	/**
	 * 删除一组对象
	 * 
	 * @param c
	 */
	public void removeAll(final Collection<?> c);

	/**
	 * 通过HQL更新对象
	 * 
	 * @param hql
	 * @param params
	 * @return
	 */
	public int bulkupdate(final String hql, final Object... params)
			throws DataAccessException;

	/**
	 * 通过HQL以可变参数形式查找分页数据
	 * 
	 * @param hql
	 * @param params
	 * @param pageIndex
	 * @param pageSize
	 * @return
	 */
	public List<?> find(final String hql, final List<?> params,
			final int pageIndex, final int pageSize);

	/**
	 * 通过HQL以可变参数形式查找分页数据
	 * 
	 * @param <T>
	 * @param hql
	 * @param pageIndex
	 * @param pageSize
	 * @param parameters
	 *            可变参数
	 * @return
	 */
	public <T> List<T> find(final String hql, final int pageIndex,
			final int pageSize, final Object... parameters)
			throws DataAccessException;

	/**
	 * 通过HQL查找分页对象
	 * 
	 * @param hql
	 * @param pageIndex
	 * @param pageSize
	 * @param parameters
	 * @return
	 */
	public Pagination findPaginationByHQL(final String hql,
			final int pageIndex, final int pageSize, final Object... parameters)
			throws DataAccessException;

	/**
	 * 通过HQL查找分页对象
	 * 
	 * @param hql
	 * @param pageIndex
	 * @param pageSize
	 * @param parameters
	 * @return
	 */
	public Pagination findPaginationByHQL(final String hql,
			final int pageIndex, final int pageSize, final List<?> parameters)
			throws DataAccessException;

	/**
	 * 清除
	 */
	public void clear();

	/**
	 * 刷新对象(readOnly)
	 * 
	 * @param entity
	 */
	public void reflesh(final Object entity);

	/**
	 * 刷新对象
	 * 
	 * @param entity
	 */
	public void refresh(final Object entity);

	/**
	 * 通过查询名称执行查询
	 * 
	 * @param <E>
	 * @param queryName
	 * @param parameters
	 * @return
	 */
	public <E> List<E> findByNamedQuery(final String queryName,
			final Object... parameters);

	/**
	 * 通过查询名称执行查询
	 * 
	 * @param <E>
	 * @param queryName
	 * @param params
	 * @return
	 */
	public <E> List<E> findByNamedQueryAndNamedParams(String queryName,
			Map<String, ?> params);

	/**
	 * SQL查询并反射对象
	 * 
	 * @param <E>
	 * @param clazz
	 * @param sql
	 * @param params
	 * @return
	 */
	public <E> List<E> findByNativeSQL(Class<E> clazz, String sql,
			Object... params);

	/**
	 * SQL查询
	 * 
	 * @param <E>
	 * @param sql
	 * @param parameters
	 * @return
	 */
	public <E> List<E> findByNativeSQL(final String sql,
			final Object... parameters);

	/**
	 * SQL查询
	 * 
	 * @param <E>
	 * @param sql
	 * @param parameters
	 * @return
	 */
	public <E> List<E> findByNativeSQL(final String sql,
			final List<?> parameters);

	/**
	 * 调用存储过程，返回值
	 * 
	 * @param sql
	 * @param args
	 *            注意参数输入的最后一个参数必须为Integer类型，必须在存储过程中返回
	 * @return int
	 * @throws DataAccessException
	 */
	public long prepareCall(String sql, List<?> args);

	/**
	 * 通过HQL获得查询的总记录数
	 * 
	 * @param <T>
	 * @param hql
	 * @param parameters
	 *            可变参数
	 * @return
	 */
	public <T> long getCount(final String hql, final Object... parameters);

	/**
	 * 通过HQL获得查询的总记录数
	 * 
	 * @param <T>
	 * @param hql
	 * @param params
	 * @return
	 */
	public <T> long getCount(final String hql, final List<?> params);

	/**
	 * 调用存储过程，返回值
	 * 
	 * @param sql
	 * @param args
	 *            注意参数输入的最后一个参数必须为Integer类型，必须在存储过程中返回
	 * @return
	 */
	public long prepareCall(String sql, Object... args);

	/**
	 * 通过SQL执行，删除，插入，修改动作
	 * 
	 * @param sql
	 *            sql语句
	 * @param args
	 *            参数
	 * @return Integer
	 * @throws DataAccessException
	 */
	public long genericSqlUpdate(String sql, List<?> args);

}
