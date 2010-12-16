package com.xuan.entity.task;

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
@Table(name = "task_info")
@NamedQueries( {
		@NamedQuery(name = "TaskInfo.findAll", query = "SELECT t FROM TaskInfo t"),
		@NamedQuery(name = "TaskInfo.findByTaskId", query = "SELECT t FROM TaskInfo t WHERE t.taskId = :taskId"),
		@NamedQuery(name = "TaskInfo.findByCreateDate", query = "SELECT t FROM TaskInfo t WHERE t.createDate = :createDate"),
		@NamedQuery(name = "TaskInfo.findByTaskType", query = "SELECT t FROM TaskInfo t WHERE t.taskType = :taskType"),
		@NamedQuery(name = "TaskInfo.findByTopics", query = "SELECT t FROM TaskInfo t WHERE t.topics = :topics"),
		@NamedQuery(name = "TaskInfo.findByWorkflow", query = "SELECT t FROM TaskInfo t WHERE t.workflow = :workflow"),
		@NamedQuery(name = "TaskInfo.findByTaskStatus", query = "SELECT t FROM TaskInfo t WHERE t.taskStatus = :taskStatus"),
		@NamedQuery(name = "TaskInfo.findByCreater", query = "SELECT t FROM TaskInfo t WHERE t.creater = :creater") })
public class TaskInfo implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "task_id")
	private Long taskId;
	@Column(name = "create_date")
	@Temporal(TemporalType.DATE)
	private Date createDate;
	@Column(name = "task_type")
	private String taskType;
	@Column(name = "topics")
	private String topics;
	@Column(name = "workflow")
	private String workflow;
	@Column(name = "task_status")
	private Integer taskStatus;
	@Column(name = "creater")
	private String creater;

	public TaskInfo() {
	}

	public TaskInfo(Long taskId) {
		this.taskId = taskId;
	}

	public Long getTaskId() {
		return taskId;
	}

	public void setTaskId(Long taskId) {
		this.taskId = taskId;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getTaskType() {
		return taskType;
	}

	public void setTaskType(String taskType) {
		this.taskType = taskType;
	}

	public String getTopics() {
		return topics;
	}

	public void setTopics(String topics) {
		this.topics = topics;
	}

	public String getWorkflow() {
		return workflow;
	}

	public void setWorkflow(String workflow) {
		this.workflow = workflow;
	}

	public Integer getTaskStatus() {
		return taskStatus;
	}

	public void setTaskStatus(Integer taskStatus) {
		this.taskStatus = taskStatus;
	}

	public String getCreater() {
		return creater;
	}

	public void setCreater(String creater) {
		this.creater = creater;
	}

	@Override
	public int hashCode() {
		int hash = 0;
		hash += (taskId != null ? taskId.hashCode() : 0);
		return hash;
	}

	@Override
	public boolean equals(Object object) {
		// TODO: Warning - this method won't work in the case the id fields are
		// not set
		if (!(object instanceof TaskInfo)) {
			return false;
		}
		TaskInfo other = (TaskInfo) object;
		if ((this.taskId == null && other.taskId != null)
				|| (this.taskId != null && !this.taskId.equals(other.taskId))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "javaapplication1.TaskInfo[taskId=" + taskId + "]";
	}

}
