package com.ram;

import javax.persistence.Entity;
import javax.persistence.*;

@Entity
@Table(name="ordeer")
public class Order {
	
	 


      @Id
      @Column(name="pk")
  int  pk;
      
    
	@Column(name="di")
	String di;
	
	@Column(name="ci")
	String ci;

	public String getCi() {
		return ci;
	}

	public void setCi(String ci) {
		this.ci = ci;
	}

	public String getDi() {
		return di;
	}

	public void setDi(String di) {
		this.di = di;
	}
	
	
	  
		public int getPk() {
			return pk;
		}

		public void setPk(int pk) {
			this.pk = pk;
		}

	
	
	
	 
}
