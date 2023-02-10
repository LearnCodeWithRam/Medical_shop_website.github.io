package com.ram;

import javax.persistence.Column;
import javax.persistence.*;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class Customer 
{
	
	 
	public Customer(String uid, String fname, String lname, String address, String phno, String pass1, String email,
			String p) {
		super();
		this.uid = uid;
		this.fname = fname;
		this.lname = lname;
		this.address = address;
		this.phno = phno;
		this.pass1 = pass1;
		this.email = email;
		this.p = p;
	}
	@Id
	@Column(name="uid")
private String uid;
	@Column(name="fname")
 private String fname;
	@Column(name="lname")
 private String lname;
	@Column(name="address")
 private String address;
	@Column(name="phno")
 private String phno;
	@Column(name="pass1")
 private String pass1;
	@Column(name="email")
 private String email;
 @Column(name="p")
	private String p;
 
public String getP() {
	return p;
}
public void setP(String p) {
	this.p = p;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getPhno() {
	return phno;
}
public void setPhno(String phno) {
	this.phno = phno;
}
public String getPass1() {
	return pass1;
}
public void setPass1(String pass1) {
	this.pass1 = pass1;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUid() {
	return uid;
}
public void setUid(String uid) {
	this.uid = uid;
}

}
