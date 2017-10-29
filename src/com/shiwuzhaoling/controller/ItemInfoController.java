package com.shiwuzhaoling.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiwuzhaoling.pojo.ItemInfo;
import com.shiwuzhaoling.service.ItemService;

@Controller
public class ItemInfoController {
	@Autowired
	private ItemService itemservice;
	
	public ItemService getItemservice() {
		return itemservice;
	}

	public void setItemservice(ItemService itemservice) {
		this.itemservice = itemservice;
	}

	@RequestMapping("/items/{item_id}")
	public String itemInfo(@PathVariable int item_id,Model model){
		model.addAttribute("itemInfo",itemservice.findItemInfoByItem_Id(item_id));
		return "items";
	} 
}
