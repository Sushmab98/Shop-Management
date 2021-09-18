package com.sss.shopping_mall.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sss.shopping_mall.modal.Shop;
@Repository
public interface ShopRepository extends CrudRepository<Shop, Integer> {	
	
	public Shop findByIdAndShopname(int id, String shopowner);
}
