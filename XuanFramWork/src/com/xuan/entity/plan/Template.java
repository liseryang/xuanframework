package com.xuan.entity.plan;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
@Table(name = "template")
@NamedQueries( {
		@NamedQuery(name = "Template.findAll", query = "SELECT t FROM Template t"),
		@NamedQuery(name = "Template.findById", query = "SELECT t FROM Template t WHERE t.id = :id"),
		@NamedQuery(name = "Template.findByTemplateNum", query = "SELECT t FROM Template t WHERE t.templateNum = :templateNum"),
		@NamedQuery(name = "Template.findByTemplateName", query = "SELECT t FROM Template t WHERE t.templateName = :templateName"),
		@NamedQuery(name = "Template.findByTemplateType", query = "SELECT t FROM Template t WHERE t.templateType = :templateType"),
		@NamedQuery(name = "Template.findByCompanyType", query = "SELECT t FROM Template t WHERE t.companyType = :companyType"),
		@NamedQuery(name = "Template.findByProfessionalType", query = "SELECT t FROM Template t WHERE t.professionalType = :professionalType"),
		@NamedQuery(name = "Template.findByEnabled", query = "SELECT t FROM Template t WHERE t.enabled = :enabled"),
		@NamedQuery(name = "Template.findByCreateDate", query = "SELECT t FROM Template t WHERE t.createDate = :createDate"),
		@NamedQuery(name = "Template.findByCreateUser", query = "SELECT t FROM Template t WHERE t.createUser = :createUser"),
		@NamedQuery(name = "Template.findByTemplateFileName", query = "SELECT t FROM Template t WHERE t.templateFileName = :templateFileName"),
		@NamedQuery(name = "Template.findByTemplateFilePath", query = "SELECT t FROM Template t WHERE t.templateFilePath = :templateFilePath"),
		@NamedQuery(name = "Template.findByNotes", query = "SELECT t FROM Template t WHERE t.notes = :notes"),
		@NamedQuery(name = "Template.findByStartDate", query = "SELECT t FROM Template t WHERE t.startDate = :startDate"),
		@NamedQuery(name = "Template.findByEndDate", query = "SELECT t FROM Template t WHERE t.endDate = :endDate") })
public class Template implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "id")
	private Long id;
	@Basic(optional = false)
	@Column(name = "template_num")
	private String templateNum;
	@Basic(optional = false)
	@Column(name = "template_name")
	private String templateName;
	@Basic(optional = false)
	@Column(name = "template_type")
	private String templateType;
	@Column(name = "company_type")
	private String companyType;
	@Column(name = "professional_type")
	private String professionalType;
	@Basic(optional = false)
	@Column(name = "enabled")
	private String enabled;
	@Column(name = "create_date")
	@Temporal(TemporalType.DATE)
	private Date createDate;
	@Column(name = "create_user")
	private String createUser;
	@Column(name = "template_file_name")
	private String templateFileName;
	@Column(name = "template_file_path")
	private String templateFilePath;
	@Column(name = "notes")
	private String notes;
	@Column(name = "start_date")
	@Temporal(TemporalType.DATE)
	private Date startDate;
	@Column(name = "end_date")
	@Temporal(TemporalType.DATE)
	private Date endDate;

	public Template() {
	}

	public Template(Long id) {
		this.id = id;
	}

	public Template(Long id, String templateNum, String templateName,
			String templateType, String enabled) {
		this.id = id;
		this.templateNum = templateNum;
		this.templateName = templateName;
		this.templateType = templateType;
		this.enabled = enabled;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTemplateNum() {
		return templateNum;
	}

	public void setTemplateNum(String templateNum) {
		this.templateNum = templateNum;
	}

	public String getTemplateName() {
		return templateName;
	}

	public void setTemplateName(String templateName) {
		this.templateName = templateName;
	}

	public String getTemplateType() {
		return templateType;
	}

	public void setTemplateType(String templateType) {
		this.templateType = templateType;
	}

	public String getCompanyType() {
		return companyType;
	}

	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}

	public String getProfessionalType() {
		return professionalType;
	}

	public void setProfessionalType(String professionalType) {
		this.professionalType = professionalType;
	}

	public String getEnabled() {
		return enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public String getTemplateFileName() {
		return templateFileName;
	}

	public void setTemplateFileName(String templateFileName) {
		this.templateFileName = templateFileName;
	}

	public String getTemplateFilePath() {
		return templateFilePath;
	}

	public void setTemplateFilePath(String templateFilePath) {
		this.templateFilePath = templateFilePath;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
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
		if (!(object instanceof Template)) {
			return false;
		}
		Template other = (Template) object;
		if ((this.id == null && other.id != null)
				|| (this.id != null && !this.id.equals(other.id))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "javaapplication1.Template[id=" + id + "]";
	}

}
