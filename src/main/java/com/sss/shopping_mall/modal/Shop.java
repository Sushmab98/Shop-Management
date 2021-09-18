package com.sss.shopping_mall.modal;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="my_table")
public class Shop {
	
	@Id
	private int id;
	private String shopname;
	private String category;
	private String shopstatus;
	private String shopowner;
	private String leasestatus;
	
	public Shop() {
		
	}
	
	
	public Shop(String shopname, String category, String shopstatus, String shopowner, String leasestatus) {
		super();
		this.shopname = shopname;
		this.category = category;
		this.shopstatus = shopstatus;
		this.shopowner = shopowner;
		this.leasestatus = leasestatus;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getShopstatus() {
		return shopstatus;
	}
	public void setShopstatus(String shopstatus) {
		this.shopstatus = shopstatus;
	}
	public String getShopowner() {
		return shopowner;
	}
	public void setShopowner(String shopowner) {
		this.shopowner = shopowner;
	}
	public String getLeasestatus() {
		return leasestatus;
	}
	public void setLeasestatus(String leasestatus) {
		this.leasestatus = leasestatus;
	}


	@Override
	public String toString() {
		return "Shop [id=" + id + ", shopname=" + shopname + ", category=" + category + ", shopstatus=" + shopstatus
				+ ", shopowner=" + shopowner + ", leasestatus=" + leasestatus + "]";
	}
	
	
	
	
	

}
