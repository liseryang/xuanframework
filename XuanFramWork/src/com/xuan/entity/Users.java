/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

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

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * 
 * @author DarkXie
 */
@Entity
@Table(name = "users")
@NamedQueries( {
		@NamedQuery(name = "Users.findAll", query = "SELECT u FROM Users u"),
		@NamedQuery(name = "Users.findById", query = "SELECT u FROM Users u WHERE u.id = :id"),
		@NamedQuery(name = "Users.findByUsername", query = "SELECT u FROM Users u WHERE u.username = :username"),
		@NamedQuery(name = "Users.findByPwd", query = "SELECT u FROM Users u WHERE u.pwd = :pwd"),
		@NamedQuery(name = "Users.findByDisabled", query = "SELECT u FROM Users u WHERE u.disabled = :disabled") })
public class Users implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "id")
	private Integer id;
	@Column(name = "username")
	private String username;
	@Column(name = "pwd")
	private String pwd;
	@Column(name = "disabled")
	private Character disabled;

	// @JoinTable(name = "user_role", joinColumns = {
	// @JoinColumn(name = "user_id", referencedColumnName = "id")},
	// inverseJoinColumns = {
	// @JoinColumn(name = "role_id", referencedColumnName = "id")})
	// @ManyToMany
	// private Collection<Role> roleCollection;

	public Users() {
	}

	public Users(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Character getDisabled() {
		return disabled;
	}

	public void setDisabled(Character disabled) {
		this.disabled = disabled;
	}

	// public Collection<Role> getRoleCollection() {
	// return roleCollection;
	// }
	//
	// public void setRoleCollection(Collection<Role> roleCollection) {
	// this.roleCollection = roleCollection;
	// }

	@Override
	public int hashCode() {
		return new HashCodeBuilder(17, 37).append(id).toHashCode();
	}

	@Override
	public boolean equals(Object obj) {
		boolean flag = false;
		if (null != obj && obj.getClass().isAssignableFrom(this.getClass())) {
			Users user = (Users) obj;
			flag = new EqualsBuilder().append(id, user.getId()).isEquals();
		}
		return flag;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

}
