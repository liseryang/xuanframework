package com.xuan.entity.comm;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * 
 * @author DarkXie
 */
@Entity
@Table(name = "query_info")
@NamedQueries( {
		@NamedQuery(name = "QueryInfo.findAll", query = "SELECT q FROM QueryInfo q"),
		@NamedQuery(name = "QueryInfo.findByQueryId", query = "SELECT q FROM QueryInfo q WHERE q.queryId = :queryId"),
		@NamedQuery(name = "QueryInfo.findByQSelect", query = "SELECT q FROM QueryInfo q WHERE q.qSelect = :qSelect"),
		@NamedQuery(name = "QueryInfo.findByQIdfield", query = "SELECT q FROM QueryInfo q WHERE q.qIdfield = :qIdfield"),
		@NamedQuery(name = "QueryInfo.findByQWhere", query = "SELECT q FROM QueryInfo q WHERE q.qWhere = :qWhere"),
		@NamedQuery(name = "QueryInfo.findByQGroup", query = "SELECT q FROM QueryInfo q WHERE q.qGroup = :qGroup"),
		@NamedQuery(name = "QueryInfo.findByQOrder", query = "SELECT q FROM QueryInfo q WHERE q.qOrder = :qOrder"),
		@NamedQuery(name = "QueryInfo.findByQDesc", query = "SELECT q FROM QueryInfo q WHERE q.qDesc = :qDesc") })
public class QueryInfo implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Basic(optional = false)
	@Column(name = "query_id")
	private String queryId;
	@Basic(optional = false)
	@Column(name = "q_select")
	private String qSelect;
	@Basic(optional = false)
	@Column(name = "q_idfield")
	private String qIdfield;
	@Column(name = "q_where")
	private String qWhere;
	@Column(name = "q_group")
	private String qGroup;
	@Column(name = "q_order")
	private String qOrder;
	@Column(name = "q_desc")
	private String qDesc;

	public QueryInfo() {
	}

	public QueryInfo(String queryId) {
		this.queryId = queryId;
	}

	public QueryInfo(String queryId, String qSelect, String qIdfield) {
		this.queryId = queryId;
		this.qSelect = qSelect;
		this.qIdfield = qIdfield;
	}

	public String getQueryId() {
		return queryId;
	}

	public void setQueryId(String queryId) {
		this.queryId = queryId;
	}

	public String getQSelect() {
		return qSelect;
	}

	public void setQSelect(String qSelect) {
		this.qSelect = qSelect;
	}

	public String getQIdfield() {
		return qIdfield;
	}

	public void setQIdfield(String qIdfield) {
		this.qIdfield = qIdfield;
	}

	public String getQWhere() {
		return qWhere;
	}

	public void setQWhere(String qWhere) {
		this.qWhere = qWhere;
	}

	public String getQGroup() {
		return qGroup;
	}

	public void setQGroup(String qGroup) {
		this.qGroup = qGroup;
	}

	public String getQOrder() {
		return qOrder;
	}

	public void setQOrder(String qOrder) {
		this.qOrder = qOrder;
	}

	public String getQDesc() {
		return qDesc;
	}

	public void setQDesc(String qDesc) {
		this.qDesc = qDesc;
	}

	@Override
	public int hashCode() {
		int hash = 0;
		hash += (queryId != null ? queryId.hashCode() : 0);
		return hash;
	}

	@Override
	public boolean equals(Object object) {
		// TODO: Warning - this method won't work in the case the id fields are
		// not set
		if (!(object instanceof QueryInfo)) {
			return false;
		}
		QueryInfo other = (QueryInfo) object;
		if ((this.queryId == null && other.queryId != null)
				|| (this.queryId != null && !this.queryId.equals(other.queryId))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "com.xuan.entity.comm.QueryInfo[queryId=" + queryId + "]";
	}

}
