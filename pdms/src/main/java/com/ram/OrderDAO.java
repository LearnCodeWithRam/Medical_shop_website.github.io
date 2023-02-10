package com.ram;

import org.springframework.data.repository.CrudRepository;

public interface OrderDAO  extends CrudRepository<Order, String> {

}
