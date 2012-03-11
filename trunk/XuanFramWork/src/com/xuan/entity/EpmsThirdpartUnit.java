package com.xuan.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
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
@Table(name = "epms_thirdpart_unit")
@NamedQueries({
		@NamedQuery(name = "EpmsThirdpartUnit.findAll", query = "SELECT e FROM EpmsThirdpartUnit e"),
		@NamedQuery(name = "EpmsThirdpartUnit.findBySysid", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.sysid = :sysid"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByLoginname", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.loginname = :loginname"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByPassword", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.password = :password"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByUnitname", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.unitname = :unitname"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByOrgCode", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.orgCode = :orgCode"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByRelationType", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.relationType = :relationType"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByQualification", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.qualification = :qualification"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByPersonInCharge", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.personInCharge = :personInCharge"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByDeleteFlag", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.deleteFlag = :deleteFlag"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByRemark", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.remark = :remark"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByCreateBy", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.createBy = :createBy"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByCreationDate", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.creationDate = :creationDate"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByLastUpdateBy", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.lastUpdateBy = :lastUpdateBy"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByLastUpdateDate", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.lastUpdateDate = :lastUpdateDate"),
		@NamedQuery(name = "EpmsThirdpartUnit.findBySegment1", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.segment1 = :segment1"),
		@NamedQuery(name = "EpmsThirdpartUnit.findBySegment2", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.segment2 = :segment2"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByAttribute1", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.attribute1 = :attribute1"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByAttribute2", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.attribute2 = :attribute2"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByAttribute3", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.attribute3 = :attribute3"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByAttribute4", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.attribute4 = :attribute4"),
		@NamedQuery(name = "EpmsThirdpartUnit.findByAttribute5", query = "SELECT e FROM EpmsThirdpartUnit e WHERE e.attribute5 = :attribute5") })
public class EpmsThirdpartUnit implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Basic(optional = false)
	@Column(name = "SYSID")
	private Long sysid;
	@Column(name = "LOGINNAME")
	private String loginname;
	@Column(name = "PASSWORD")
	private String password;
	@Column(name = "UNITNAME")
	private String unitname;
	@Column(name = "OrgCode")
	private String orgCode;
	@Column(name = "RELATION_TYPE")
	private String relationType;
	@Column(name = "Qualification")
	private String qualification;
	@Column(name = "PersonInCharge")
	private String personInCharge;
	@Column(name = "delete_flag")
	private String deleteFlag;
	@Column(name = "remark")
	private String remark;
	@Column(name = "create_by")
	private String createBy;
	@Column(name = "CREATION_DATE")
	@Temporal(TemporalType.DATE)
	private Date creationDate;
	@Column(name = "last_update_by")
	private String lastUpdateBy;
	@Column(name = "LAST_UPDATE_DATE")
	@Temporal(TemporalType.DATE)
	private Date lastUpdateDate;
	@Column(name = "SEGMENT1")
	private BigDecimal segment1;
	@Column(name = "SEGMENT2")
	private BigDecimal segment2;
	@Column(name = "ATTRIBUTE1")
	private String attribute1;
	@Column(name = "ATTRIBUTE2")
	private String attribute2;
	@Column(name = "ATTRIBUTE3")
	private String attribute3;
	@Column(name = "ATTRIBUTE4")
	private String attribute4;
	@Column(name = "ATTRIBUTE5")
	private String attribute5;

	public EpmsThirdpartUnit() {
	}

	public EpmsThirdpartUnit(Long sysid) {
		this.sysid = sysid;
	}

	public Long getSysid() {
		return sysid;
	}

	public void setSysid(Long sysid) {
		this.sysid = sysid;
	}

	public String getLoginname() {
		return loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUnitname() {
		return unitname;
	}

	public void setUnitname(String unitname) {
		this.unitname = unitname;
	}

	public String getOrgCode() {
		return orgCode;
	}

	public void setOrgCode(String orgCode) {
		this.orgCode = orgCode;
	}

	public String getRelationType() {
		return relationType;
	}

	public void setRelationType(String relationType) {
		this.relationType = relationType;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getPersonInCharge() {
		return personInCharge;
	}

	public void setPersonInCharge(String personInCharge) {
		this.personInCharge = personInCharge;
	}

	public String getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	public String getLastUpdateBy() {
		return lastUpdateBy;
	}

	public void setLastUpdateBy(String lastUpdateBy) {
		this.lastUpdateBy = lastUpdateBy;
	}

	public Date getLastUpdateDate() {
		return lastUpdateDate;
	}

	public void setLastUpdateDate(Date lastUpdateDate) {
		this.lastUpdateDate = lastUpdateDate;
	}

	public BigDecimal getSegment1() {
		return segment1;
	}

	public void setSegment1(BigDecimal segment1) {
		this.segment1 = segment1;
	}

	public BigDecimal getSegment2() {
		return segment2;
	}

	public void setSegment2(BigDecimal segment2) {
		this.segment2 = segment2;
	}

	public String getAttribute1() {
		return attribute1;
	}

	public void setAttribute1(String attribute1) {
		this.attribute1 = attribute1;
	}

	public String getAttribute2() {
		return attribute2;
	}

	public void setAttribute2(String attribute2) {
		this.attribute2 = attribute2;
	}

	public String getAttribute3() {
		return attribute3;
	}

	public void setAttribute3(String attribute3) {
		this.attribute3 = attribute3;
	}

	public String getAttribute4() {
		return attribute4;
	}

	public void setAttribute4(String attribute4) {
		this.attribute4 = attribute4;
	}

	public String getAttribute5() {
		return attribute5;
	}

	public void setAttribute5(String attribute5) {
		this.attribute5 = attribute5;
	}

	@Override
	public int hashCode() {
		int hash = 0;
		hash += (sysid != null ? sysid.hashCode() : 0);
		return hash;
	}

	@Override
	public boolean equals(Object object) {
		// TODO: Warning - this method won't work in the case the id fields are
		// not set
		if (!(object instanceof EpmsThirdpartUnit)) {
			return false;
		}
		EpmsThirdpartUnit other = (EpmsThirdpartUnit) object;
		if ((this.sysid == null && other.sysid != null)
				|| (this.sysid != null && !this.sysid.equals(other.sysid))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "javaapplication1.EpmsThirdpartUnit[sysid=" + sysid + "]";
	}

}
