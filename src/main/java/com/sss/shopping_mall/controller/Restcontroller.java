package com.sss.shopping_mall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sss.shopping_mall.modal.Shop;
import com.sss.shopping_mall.services.ShopService;

@org.springframework.web.bind.annotation.RestController
public class Restcontroller {
	
	@Autowired
	private ShopService shopService;

	@GetMapping("/")
	public String hello() {
		return "This is Home page";
	}
	
	@GetMapping("/saveshop")
	public String saveShop(@RequestParam String shopname, @RequestParam String category, @RequestParam String shopstatus, @RequestParam String shopowner, @RequestParam String leasestatus) {
		Shop shop = new Shop(shopname, category, shopstatus, shopowner, leasestatus);
		shopService.saveMyShop(shop);
		return "Shop Saved";
	}
}
