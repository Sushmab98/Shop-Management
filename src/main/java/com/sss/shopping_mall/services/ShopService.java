package com.sss.shopping_mall.services;

import java.util.ArrayList;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.sss.shopping_mall.modal.Shop;
import com.sss.shopping_mall.repository.ShopRepository;

@Service
@Transactional
@Repository
public class ShopService {
	
	private final ShopRepository shopRepository;
	
	public ShopService(ShopRepository shopRepository) {
		this.shopRepository=shopRepository;
	}
	
	public void saveMyShop(Shop shop ) {
		shopRepository.save(shop);
	}
	
	public List<Shop> showAllShops(){
		List<Shop> shops = new ArrayList<Shop>();
		for(Shop shop : shopRepository.findAll()) {
			shops.add(shop);
		}
		
		return shops;
	}
	
	public void deleteMyShop(int id) {
		shopRepository.deleteById(id);
	}
	
	public Optional<Shop> editShop(int id) {
		
		
		 return shopRepository.findById(id);
		
	}
	
	public Shop findByIdAndShopname(int id, String shopname) {
		return shopRepository.findByIdAndShopname(id, shopname);
	}
	
	}

	