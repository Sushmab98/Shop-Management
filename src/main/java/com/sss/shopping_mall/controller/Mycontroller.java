package com.sss.shopping_mall.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sss.shopping_mall.modal.Shop;
import com.sss.shopping_mall.services.ShopService;

@Controller
public class Mycontroller {

	@Autowired
	ShopService shopService;

	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}

	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcomepage";
	}

	@PostMapping("/save-shop")
	public String registerShop(@ModelAttribute Shop shop, BindingResult bindingResult, HttpServletRequest request) {
		shopService.saveMyShop(shop);
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}

	@GetMapping("/show-shops")
	public String showAllShops(HttpServletRequest request) {
		request.setAttribute("shops", shopService.showAllShops());
		request.setAttribute("mode", "ALL_SHOPS");
		return "welcomepage";
	}

	@RequestMapping("/delete-shop")
	public String deleteShop(@RequestParam int id, HttpServletRequest request) {
		shopService.deleteMyShop(id);
		request.setAttribute("shops", shopService.showAllShops());
		request.setAttribute("mode", "ALL_SHOPS");
		return "welcomepage";
	}
	
	@RequestMapping("/edit-shop")
	public String editShop(@RequestParam int id,@ModelAttribute Shop shop,HttpServletRequest request) {
		request.setAttribute("shops", shopService.editShop(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "welcomepage";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcomepage";
	}
	
	@RequestMapping ("/login-shop")
	public String loginShop(@ModelAttribute Shop shop, HttpServletRequest request) {
		if(shopService.findByIdAndShopname(shop.getId(), shop.getShopname())!=null) {
			return "homepage";
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
			
		}
	}

}
