package com.ram;

import javax.persistence.Column;
import javax.persistence.*;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="seller")
public class Seller 
{
	
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
	 @Column(name="u")
		private String u;
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


public String getU() {
	return u;
}
public void setU(String u) {
	this.u = u;
}
 
}
