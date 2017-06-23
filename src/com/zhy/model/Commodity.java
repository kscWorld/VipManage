package com.zhy.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Commodity entity. @author MyEclipse Persistence Tools
 */

public class Commodity implements java.io.Serializable {

	// Fields

	private Integer commodityId;
	private String commodityName;
	private Double price;
	private Double agio;

	// Constructors

	/** default constructor */
	public Commodity() {
	}

	/** full constructor */
	public Commodity(String commodityName, Double price, Double agio) {
		this.commodityName = commodityName;
		this.price = price;
		this.agio = agio;
	}

	// Property accessors

	public Integer getCommodityId() {
		return this.commodityId;
	}

	public void setCommodityId(Integer commodityId) {
		this.commodityId = commodityId;
	}

	public String getCommodityName() {
		return this.commodityName;
	}

	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getAgio() {
		return this.agio;
	}

	public void setAgio(Double agio) {
		this.agio = agio;
	}

}