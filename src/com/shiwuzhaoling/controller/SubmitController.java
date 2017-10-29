package com.shiwuzhaoling.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiwuzhaoling.pojo.Item;
import com.shiwuzhaoling.service.ItemService;

@Controller
public class SubmitController {
	@Autowired
	private ItemService itemService;
	
	public ItemService getItemService() {
		return itemService;
	}
	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}
	@RequestMapping("/lost")
	public String lostSubmit(Item lostItem){
		this.itemService.saveOne(lostItem);
		//返回成功页面
		return "success";
	}
	@RequestMapping("/found")
	public String foundSubmit(Item foundItem){
		this.itemService.saveOne(foundItem);
		//返回成功页面
		return "success";
	}
}
