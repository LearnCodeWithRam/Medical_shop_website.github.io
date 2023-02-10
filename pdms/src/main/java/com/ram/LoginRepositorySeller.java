package com.ram;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LoginRepositorySeller extends JpaRepository<Seller,String> {
	//Customer findbyUidAndPass1(String uid,String pass1);

}
