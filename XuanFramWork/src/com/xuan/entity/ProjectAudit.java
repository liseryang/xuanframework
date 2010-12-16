package com.xuan.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * 
 * @author DarkXie
 */
@Entity
@Table(name = "project_audit")
@NamedQueries( {
		@NamedQuery(name = "ProjectAudit.findAll", query = "SELECT p FROM ProjectAudit p"),
		@NamedQuery(name = "ProjectAudit.findById", query = "SELECT p FROM ProjectAudit p WHERE p.id = :id"),
		@NamedQuery(name = "ProjectAudit.findByProjectNum", query = "SELECT p FROM ProjectAudit p WHERE p.projectNum = :projectNum"),
		@NamedQuery(name = "ProjectAudit.findByProjectName", query = "SELECT p FROM ProjectAudit p WHERE p.projectName = :projectName"),
		@NamedQuery(name = "ProjectAudit.findByMisNum", query = "SELECT p FROM ProjectAudit p WHERE p.misNum = :misNum"),
		@NamedQuery(name = "ProjectAudit.findByProjectAttr", query = "SELECT p FROM ProjectAudit p WHERE p.projectAttr = :projectAttr"),
		@NamedQuery(name = "ProjectAudit.findByCompanyType", query = "SELECT p FROM ProjectAudit p WHERE p.companyType = :companyType"),
		@NamedQuery(name = "ProjectAudit.findByStatus", query = "SELECT p FROM ProjectAudit p WHERE p.status = :status") })
public class ProjectAudit implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "id")
	private Long id;
	@Column(name = "project_num")
	private String projectNum;
	@Column(name = "project_name")
	private String projectName;
	@Column(name = "mis_num")
	private String misNum;
	@Column(name = "project_attr")
	private String projectAttr;
	@Column(name = "company_type")
	private String companyType;
	@Column(name = "status")
	private String status;

	public ProjectAudit() {
	}

	public ProjectAudit(Long id) {
		this.id = id;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProjectNum() {
		return projectNum;
	}

	public void setProjectNum(String projectNum) {
		this.projectNum = projectNum;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getMisNum() {
		return misNum;
	}

	public void setMisNum(String misNum) {
		this.misNum = misNum;
	}

	public String getProjectAttr() {
		return projectAttr;
	}

	public void setProjectAttr(String projectAttr) {
		this.projectAttr = projectAttr;
	}

	public String getCompanyType() {
		return companyType;
	}

	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public int hashCode() {
		int hash = 0;
		hash += (id != null ? id.hashCode() : 0);
		return hash;
	}

	@Override
	public boolean equals(Object object) {
		// TODO: Warning - this method won't work in the case the id fields are
		// not set
		if (!(object instanceof ProjectAudit)) {
			return false;
		}
		ProjectAudit other = (ProjectAudit) object;
		if ((this.id == null && other.id != null)
				|| (this.id != null && !this.id.equals(other.id))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "ProjectAudit[id=" + id + "]";
	}

}
