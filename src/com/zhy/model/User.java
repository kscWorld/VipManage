package com.zhy.model;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private String username;
	private String password;
	private Integer quanxian;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(String password, Integer quanxian) {
		this.password = password;
		this.quanxian = quanxian;
	}

	// Property accessors

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getQuanxian() {
		return this.quanxian;
	}

	public void setQuanxian(Integer quanxian) {
		this.quanxian = quanxian;
	}

}