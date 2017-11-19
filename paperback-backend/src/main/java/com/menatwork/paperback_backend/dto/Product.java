package com.menatwork.paperback_backend.dto;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
	
	/**
	 * product properties 
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String code;
	private String author;
	private String description;
	@Column(name = "unit_price")
	private double unitPrice;
	@Column(name = "is_active")
	private boolean active;
	@Column(name = "catagory_id")
	private int catagoryId;
	@Column(name = "publisher_id")
	private int publisherId;
	private int purchases;
	private int views;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	public int getCatagoryId() {
		return catagoryId;
	}
	public void setCatagoryId(int catagoryId) {
		this.catagoryId = catagoryId;
	}
	public int getPublisherId() {
		return publisherId;
	}
	public void setPublisherId(int publisherId) {
		this.publisherId = publisherId;
	}
	public int getPurchases() {
		return purchases;
	}
	public void setPurchases(int purchases) {
		this.purchases = purchases;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	/**
	 * generating random product id 
	 * 
	 */
	public Product(){
		this.code="PRO"+UUID.randomUUID().toString().substring(26).toUpperCase()+"Book";
	}
}
