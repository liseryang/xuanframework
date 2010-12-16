/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.xuan.entity.plan;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 
 * @author DarkXie
 */
@Entity
@Table(name = "annual_investment_plan")
@NamedQueries( {
		@NamedQuery(name = "AnnualInvestmentPlan.findAll", query = "SELECT a FROM AnnualInvestmentPlan a"),
		@NamedQuery(name = "AnnualInvestmentPlan.findByPlanId", query = "SELECT a FROM AnnualInvestmentPlan a WHERE a.planId = :planId"),
		@NamedQuery(name = "AnnualInvestmentPlan.findByPlanNum", query = "SELECT a FROM AnnualInvestmentPlan a WHERE a.planNum = :planNum"),
		@NamedQuery(name = "AnnualInvestmentPlan.findByYearInWhich", query = "SELECT a FROM AnnualInvestmentPlan a WHERE a.yearInWhich = :yearInWhich"),
		@NamedQuery(name = "AnnualInvestmentPlan.findByPlanStatus", query = "SELECT a FROM AnnualInvestmentPlan a WHERE a.planStatus = :planStatus"),
		@NamedQuery(name = "AnnualInvestmentPlan.findByPlanName", query = "SELECT a FROM AnnualInvestmentPlan a WHERE a.planName = :planName"),
		@NamedQuery(name = "AnnualInvestmentPlan.findByCompanyType", query = "SELECT a FROM AnnualInvestmentPlan a WHERE a.companyType = :companyType"),
		@NamedQuery(name = "AnnualInvestmentPlan.findByProgramManager", query = "SELECT a FROM AnnualInvestmentPlan a WHERE a.programManager = :programManager"),
		@NamedQuery(name = "AnnualInvestmentPlan.findByCreateDate", query = "SELECT a FROM AnnualInvestmentPlan a WHERE a.createDate = :createDate"),
		@NamedQuery(name = "AnnualInvestmentPlan.findByCreateName", query = "SELECT a FROM AnnualInvestmentPlan a WHERE a.createName = :createName"),
		@NamedQuery(name = "AnnualInvestmentPlan.findByPlanDocNum", query = "SELECT a FROM AnnualInvestmentPlan a WHERE a.planDocNum = :planDocNum"),
		@NamedQuery(name = "AnnualInvestmentPlan.findByPlanStartDate", query = "SELECT a FROM AnnualInvestmentPlan a WHERE a.planStartDate = :planStartDate"),
		@NamedQuery(name = "AnnualInvestmentPlan.findByPlanEndDate", query = "SELECT a FROM AnnualInvestmentPlan a WHERE a.planEndDate = :planEndDate"),
		@NamedQuery(name = "AnnualInvestmentPlan.findByPlanFilePatch", query = "SELECT a FROM AnnualInvestmentPlan a WHERE a.planFilePatch = :planFilePatch") })
public class AnnualInvestmentPlan implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "plan_id")
	private Long planId;
	@Basic(optional = false)
	@Column(name = "plan_num")
	private String planNum;
	@Basic(optional = false)
	@Column(name = "year_in_which")
	private String yearInWhich;
	@Basic(optional = false)
	@Column(name = "plan_status")
	private String planStatus;
	@Basic(optional = false)
	@Column(name = "plan_name")
	private String planName;
	@Basic(optional = false)
	@Column(name = "company_type")
	private String companyType;
	@Basic(optional = false)
	@Column(name = "program_manager")
	private String programManager;
	@Column(name = "create_date")
	@Temporal(TemporalType.DATE)
	private Date createDate;
	@Column(name = "create_name")
	private String createName;
	@Column(name = "plan_doc_num")
	private String planDocNum;
	@Column(name = "plan_start_date")
	@Temporal(TemporalType.DATE)
	private Date planStartDate;
	@Column(name = "plan_end_date")
	@Temporal(TemporalType.DATE)
	private Date planEndDate;
	@Column(name = "plan_file_patch")
	private String planFilePatch;
	@Lob
	@Column(name = "remarks")
	private String remarks;

	public AnnualInvestmentPlan() {
	}

	public AnnualInvestmentPlan(Long planId) {
		this.planId = planId;
	}

	public AnnualInvestmentPlan(Long planId, String planNum,
			String yearInWhich, String planStatus, String planName,
			String companyType, String programManager) {
		this.planId = planId;
		this.planNum = planNum;
		this.yearInWhich = yearInWhich;
		this.planStatus = planStatus;
		this.planName = planName;
		this.companyType = companyType;
		this.programManager = programManager;
	}

	public Long getPlanId() {
		return planId;
	}

	public void setPlanId(Long planId) {
		this.planId = planId;
	}

	public String getPlanNum() {
		return planNum;
	}

	public void setPlanNum(String planNum) {
		this.planNum = planNum;
	}

	public String getYearInWhich() {
		return yearInWhich;
	}

	public void setYearInWhich(String yearInWhich) {
		this.yearInWhich = yearInWhich;
	}

	public String getPlanStatus() {
		return planStatus;
	}

	public void setPlanStatus(String planStatus) {
		this.planStatus = planStatus;
	}

	public String getPlanName() {
		return planName;
	}

	public void setPlanName(String planName) {
		this.planName = planName;
	}

	public String getCompanyType() {
		return companyType;
	}

	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}

	public String getProgramManager() {
		return programManager;
	}

	public void setProgramManager(String programManager) {
		this.programManager = programManager;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getCreateName() {
		return createName;
	}

	public void setCreateName(String createName) {
		this.createName = createName;
	}

	public String getPlanDocNum() {
		return planDocNum;
	}

	public void setPlanDocNum(String planDocNum) {
		this.planDocNum = planDocNum;
	}

	public Date getPlanStartDate() {
		return planStartDate;
	}

	public void setPlanStartDate(Date planStartDate) {
		this.planStartDate = planStartDate;
	}

	public Date getPlanEndDate() {
		return planEndDate;
	}

	public void setPlanEndDate(Date planEndDate) {
		this.planEndDate = planEndDate;
	}

	public String getPlanFilePatch() {
		return planFilePatch;
	}

	public void setPlanFilePatch(String planFilePatch) {
		this.planFilePatch = planFilePatch;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	@Override
	public int hashCode() {
		int hash = 0;
		hash += (planId != null ? planId.hashCode() : 0);
		return hash;
	}

	@Override
	public boolean equals(Object object) {
		// TODO: Warning - this method won't work in the case the id fields are
		// not set
		if (!(object instanceof AnnualInvestmentPlan)) {
			return false;
		}
		AnnualInvestmentPlan other = (AnnualInvestmentPlan) object;
		if ((this.planId == null && other.planId != null)
				|| (this.planId != null && !this.planId.equals(other.planId))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "javaapplication1.AnnualInvestmentPlan[planId=" + planId + "]";
	}

}
