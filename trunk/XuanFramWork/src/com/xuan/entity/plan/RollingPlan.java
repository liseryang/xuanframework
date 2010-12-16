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
@Table(name = "rolling_plan")
@NamedQueries( {
		@NamedQuery(name = "RollingPlan.findAll", query = "SELECT r FROM RollingPlan r"),
		@NamedQuery(name = "RollingPlan.findById", query = "SELECT r FROM RollingPlan r WHERE r.id = :id"),
		@NamedQuery(name = "RollingPlan.findByFileName", query = "SELECT r FROM RollingPlan r WHERE r.fileName = :fileName"),
		@NamedQuery(name = "RollingPlan.findByExtensionName", query = "SELECT r FROM RollingPlan r WHERE r.extensionName = :extensionName"),
		@NamedQuery(name = "RollingPlan.findByUploadUser", query = "SELECT r FROM RollingPlan r WHERE r.uploadUser = :uploadUser"),
		@NamedQuery(name = "RollingPlan.findByUploadDate", query = "SELECT r FROM RollingPlan r WHERE r.uploadDate = :uploadDate"),
		@NamedQuery(name = "RollingPlan.findByFileNotes", query = "SELECT r FROM RollingPlan r WHERE r.fileNotes = :fileNotes") })
public class RollingPlan implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "id")
	private Long id;
	@Basic(optional = false)
	@Column(name = "file_name")
	private String fileName;
	@Basic(optional = false)
	@Column(name = "extension_name")
	private String extensionName;
	@Basic(optional = false)
	@Column(name = "upload_user")
	private String uploadUser;
	@Column(name = "upload_date")
	@Temporal(TemporalType.DATE)
	private Date uploadDate;
	@Column(name = "file_notes")
	private String fileNotes;

	public RollingPlan() {
	}

	public RollingPlan(Long id) {
		this.id = id;
	}

	public RollingPlan(Long id, String fileName, String extensionName,
			String uploadUser) {
		this.id = id;
		this.fileName = fileName;
		this.extensionName = extensionName;
		this.uploadUser = uploadUser;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getExtensionName() {
		return extensionName;
	}

	public void setExtensionName(String extensionName) {
		this.extensionName = extensionName;
	}

	public String getUploadUser() {
		return uploadUser;
	}

	public void setUploadUser(String uploadUser) {
		this.uploadUser = uploadUser;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public String getFileNotes() {
		return fileNotes;
	}

	public void setFileNotes(String fileNotes) {
		this.fileNotes = fileNotes;
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
		if (!(object instanceof RollingPlan)) {
			return false;
		}
		RollingPlan other = (RollingPlan) object;
		if ((this.id == null && other.id != null)
				|| (this.id != null && !this.id.equals(other.id))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "javaapplication1.RollingPlan[id=" + id + "]";
	}

}
