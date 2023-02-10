package com.ram;

import org.springframework.data.repository.CrudRepository;

public interface ProductDAO extends CrudRepository<ProductSeller, String> {

}
