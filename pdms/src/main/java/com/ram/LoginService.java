package com.ram;

import java.util.*;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
@Autowired
 private LoginRepository repo;

@Autowired
private LoginRepositorySeller repoSeller;
@Autowired
private LoginRepositoryProduct repoProduct;

@Autowired
private LoginRepositoryOrder repoOrder;
	
 public Optional<Customer>  login(String uid,String pass1) 
 {
     
	 Optional<Customer> cust=    repo.findById(uid);
	 
	 return cust;
	 
	 
	 
	 
 }
 
	
public Optional<Seller>  loginSeller(String uid,String pass1) 
{
  
	 Optional<Seller> seller=    repoSeller.findById(uid);
	 
	 return seller;
	 
	  
	 
}
 
public List<ProductSeller> findProductDetails(){
	List<ProductSeller> list= new ArrayList<ProductSeller>();
      list= repoProduct.findAll();
      return list;
	
	
}
 ;
public Optional<ProductSeller> findproductbyid(String pid)
{
	
Optional<ProductSeller> ps	=repoProduct.findById(pid);

return ps;




}


public List<Order> Product()
{
	List<Order> list = repoOrder.findAll();
	return list;




}







 
 
}