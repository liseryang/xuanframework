package com.xuan.dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceException;
import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.hql.ast.QueryTranslatorImpl;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.jpa.JpaCallback;
import org.springframework.orm.jpa.support.JpaDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.xuan.comm.util.Pagination;

public class JpaDaoImpl<E> extends JpaDaoSupport implements IJpaDao {

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#bulkupdate(java.lang.String,
	 * java.lang.Object[])
	 */
	@Transactional()
	public int bulkupdate(final String hql, final Object... params) {
		return (Integer) getJpaTemplate().execute(new JpaCallback<Object>() {
			public Object doInJpa(EntityManager em) throws PersistenceException {
				Query query = em.createQuery(hql);
				if (params != null) {
					int i = 0;
					for (Object object : params) {
						query.setParameter(++i, object);
					}
				}
				return query.executeUpdate();
			}
		});
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#clear()
	 */
	@Transactional()
	public void clear() {
		getJpaTemplate().execute(new JpaCallback<Object>() {
			public Object doInJpa(EntityManager em) throws PersistenceException {
				em.flush();
				em.clear();
				return null;
			}
		});

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#find(java.lang.Class)
	 */
	@SuppressWarnings("unchecked")
	@Transactional(readOnly = true)
	public <T> List<T> find(Class<T> t) {
		return getJpaTemplate().find(
				"select x from " + t.getSimpleName() + " x");
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#find(java.lang.String, java.lang.Object[])
	 */
	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#find(java.lang.String, java.lang.Object[])
	 */
	@SuppressWarnings({ "hiding", "unchecked" })
	@Transactional(readOnly = true)
	public <E> List<E> find(String hql, Object... parameters) {
		return getJpaTemplate().find(hql, parameters);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#find(java.lang.String, java.util.List)
	 */
	@Transactional(readOnly = true)
	public List<?> find(final String hql, final List<?> params) {
		return find(hql, params, -1, -1);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#find(java.lang.String, java.util.List, int,
	 * int)
	 */
	@Transactional(readOnly = true)
	public List<?> find(final String hql, final List<?> params,
			final int pageIndex, final int pageSize) {
		List<?> result = getJpaTemplate().executeFind(
				new JpaCallback<Object>() {

					public Object doInJpa(EntityManager em)
							throws PersistenceException {
						Query query = em.createQuery(hql);
						if (params != null) {
							int i = 0;
							for (Object param : params) {
								query.setParameter(++i, param);
							}
						}
						if (pageIndex > 0) {
							query.setFirstResult((pageIndex - 1) * pageSize);
						}
						if (pageSize > 0) {
							query.setMaxResults(pageSize);
						}
						return query.getResultList();
					}
				});
		return result;
	}

	@SuppressWarnings("unchecked")
	@Transactional(readOnly = true)
	public <T> List<T> find(String hql, int pageIndex, int pageSize,
			Object... parameters) {
		List<Object> params = new ArrayList<Object>();
		for (Object param : parameters) {
			params.add(param);
		}
		return (List<T>) this.find(hql, params, pageIndex, pageSize);
	}

	@SuppressWarnings("hiding")
	@Transactional(readOnly = true)
	public <E> E findById(Class<E> t, Serializable id) {
		return getJpaTemplate().find(t, id);
	}

	@SuppressWarnings({ "unchecked", "hiding" })
	@Transactional(readOnly = true)
	public <E> List<E> findByNamedQuery(String queryName, Object... parameters) {
		return getJpaTemplate().findByNamedQuery(queryName, parameters);
	}

	@SuppressWarnings({ "unchecked", "hiding" })
	@Transactional(readOnly = true)
	public <E> List<E> findByNamedQueryAndNamedParams(final String queryName,
			final Map<String, ?> params) {
		return getJpaTemplate().findByNamedQueryAndNamedParams(queryName,
				params);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#findByNativeSQL(java.lang.Class,
	 * java.lang.String, java.lang.Object[])
	 */
	@SuppressWarnings("hiding")
	@Transactional(readOnly = true)
	public <E> List<E> findByNativeSQL(final Class<E> clazz, final String sql,
			final Object... params) {
		return getJpaTemplate().execute(new JpaCallback<List<E>>() {
			@SuppressWarnings("unchecked")
			public List<E> doInJpa(EntityManager em)
					throws PersistenceException {
				Query query = em.createNativeQuery(sql, clazz);
				if (params != null) {
					int i = 1;
					for (Object object : params) {
						query.setParameter(i++, object);
					}
				}
				return query.getResultList();
			}
		});
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#findByNativeSQL(java.lang.String,
	 * java.lang.Object[])
	 */
	@SuppressWarnings("hiding")
	@Transactional(readOnly = true)
	public <E> List<E> findByNativeSQL(final String sql,
			final Object... parameters) {
		List<Object> params = new ArrayList<Object>();
		if (parameters != null)
			for (Object param : parameters)
				params.add(param);
		return this.findByNativeSQL(sql, params);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#findByNativeSQL(java.lang.String,
	 * java.util.List)
	 */
	@SuppressWarnings({ "unchecked", "hiding" })
	@Transactional(readOnly = true)
	public <E> List<E> findByNativeSQL(final String sql,
			final List<?> parameters) {
		return getJpaTemplate().executeFind(new JpaCallback<Object>() {
			public List<E> doInJpa(EntityManager em)
					throws PersistenceException {
				Query query = em.createNativeQuery(sql);
				if (parameters != null) {
					int i = 0;
					for (Object param : parameters) {
						query.setParameter(++i, param);
					}
				}
				return query.getResultList();
			}
		});
	}

	@SuppressWarnings("unchecked")
	@Transactional(readOnly = true)
	public Object findSingle(final String hql, Object... parameters) {
		List<?> list = find(hql, parameters);
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#persist(java.lang.Object)
	 */
	@Transactional()
	public void persist(Object entity) {
		if (entity != null) {
			getJpaTemplate().persist(entity);
		}
	}

	@Transactional()
	public void persistAll(final Collection<?> c) {
		if (c != null) {
			getJpaTemplate().execute(new JpaCallback<Object>() {
				public Object doInJpa(EntityManager em)
						throws PersistenceException {
					for (int i = 0; i < c.size(); i++) {

					}
					int i = 0;
					for (Object t : c) {
						em.persist(t);
						i++;
						if (i % 50 == 0) {
							em.flush();
							em.clear();
						}
					}
					return null;
				}
			}, true);

		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#reflesh(java.lang.Object)
	 */
	@Transactional(readOnly = true)
	public void reflesh(final Object entity) {
		getJpaTemplate().refresh(entity);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#refresh(java.lang.Object)
	 */
	@Transactional()
	public void refresh(final Object entity) {
		getJpaTemplate().refresh(entity);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#remove(java.lang.Object)
	 */
	@Transactional()
	public void remove(Object entity) {
		getJpaTemplate().remove(entity);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#removeAll(java.util.Collection)
	 */
	@Transactional()
	public void removeAll(Collection<?> c) {
		if (c != null) {
			for (Object t : c) {
				if (t != null)
					getJpaTemplate().remove(t);
			}
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#update(java.lang.Object)
	 */
	@Transactional()
	public void update(Object entity) {
		if (entity != null) {
			getJpaTemplate().merge(entity);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#findPaginationByHQL(java.lang.String, int, int,
	 * java.lang.Object[])
	 */
	@Transactional(readOnly = true)
	public Pagination findPaginationByHQL(final String hql,
			final int pageIndex, final int pageSize, final Object... parameters) {
		List<Object> params = new ArrayList<Object>();
		if (parameters != null) {
			for (Object param : parameters)
				params.add(param);
		}
		return this.findPaginationByHQL(hql, pageIndex, pageSize, params);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#findPaginationByHQL(java.lang.String, int, int,
	 * java.util.List)
	 */
	@Transactional(readOnly = true)
	public Pagination findPaginationByHQL(String hql, int pageIndex,
			int pageSize, List<?> parameters) {
		Pagination pagination = new Pagination();
		// 取得当页数据
		pagination.setRowSet(this.find(hql, parameters, pageIndex, pageSize));
		// 取得总记录数
		pagination.setTotal(this.getCount(hql, parameters));
		return pagination;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#getCount(java.lang.String, java.lang.Object[])
	 */
	@Transactional(readOnly = true)
	public <T> long getCount(final String hql, final Object... parameters) {
		List<Object> params = new ArrayList<Object>();
		if (parameters != null)
			for (Object param : parameters)
				params.add(param);
		return this.getCount(hql, params);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#getCount(java.lang.String, java.util.List)
	 */
	@Transactional(readOnly = true)
	public <T> long getCount(final String hql, final List<?> params) {
		return (Long) getJpaTemplate().execute(new JpaCallback<T>() {
			@SuppressWarnings("unchecked")
			public T doInJpa(EntityManager em) throws PersistenceException {
				Session session = (Session) em.getDelegate();
				QueryTranslatorImpl queryTranslator = new QueryTranslatorImpl(
						hql,
						hql,
						Collections.EMPTY_MAP,
						(org.hibernate.engine.SessionFactoryImplementor) session
								.getSessionFactory());
				queryTranslator.compile(Collections.EMPTY_MAP, false);

				String sql = queryTranslator.getSQLString();
				sql = "select count(*) from (" + sql + ") x";
				Query query = em.createNativeQuery(sql);
				if (params != null) {
					int i = 0;
					for (Object param : params) {
						query.setParameter(++i, param);
					}
				}
				return (T) new Long(query.getResultList().get(0).toString());
			}
		});
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#genericSqlUpdate(java.lang.String,
	 * java.util.List)
	 */
	@Transactional()
	public long genericSqlUpdate(final String sql, final List<?> params)
			throws DataAccessException {
		return (Long) getJpaTemplate().execute(new JpaCallback<Object>() {
			public Long doInJpa(EntityManager em) throws PersistenceException {
				Query query = em.createNativeQuery(sql);
				if (params != null) {
					int i = 0;
					for (Object param : params) {
						query.setParameter(++i, param);
					}
				}
				return new Long(query.executeUpdate());
			}
		});
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#prepareCall(java.lang.String, java.util.List)
	 */
	@Transactional()
	public long prepareCall(String sql, List<?> args) {
		return prepareCall(sql, args);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.xuan.dao.IJpaDao#prepareCall(java.lang.String,
	 * java.lang.Object[])
	 */
	@Transactional()
	public long prepareCall(String sql, Object... args) {
		List<Object> params = new ArrayList<Object>();
		if (args != null) {
			for (Object param : args)
				params.add(param);
		}
		return this.genericSqlUpdate(sql, params);
	}
}
