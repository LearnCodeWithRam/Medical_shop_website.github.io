package com.ram;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="productSeller")
public class ProductSeller {
	
	@Column(name="sid")
	private String sid;
	@Column(name="prname")
	private String prname;
	@Id
	@Column(name="prid")
	private String prid;
	@Column(name="mfname")
	private String mfname;
	@Column(name="mdate")
	private String mdate;
	@Column(name="edate")
	private String edate;
	@Column(name="quantity")
	private int quantity;
	@Column(name="price")
	private int price;
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getPrname() {
		return prname;
	}
	public void setPrname(String prname) {
		this.prname = prname;
	}
	public String getPrid() {
		return prid;
	}
	public void setPrid(String prid) {
		this.prid = prid;
	}
	public String getMfname() {
		return mfname;
	}
	public void setMfname(String mfname) {
		this.mfname = mfname;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
	
}
