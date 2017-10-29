package com.shiwuzhaoling.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.shiwuzhaoling.pojo.ItemCustom;
import com.shiwuzhaoling.pojo.ItemQueryVo;
import com.shiwuzhaoling.service.ItemService;

@RestController
public class ItemController {
	@Autowired
	private ItemService itemService;

	public ItemService getItemService() {
		return itemService;
	}

	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}

	@RequestMapping("/api/items")
	public List<ItemCustom> items(@RequestParam(value = "limit", defaultValue = "10") int limit,
			@RequestParam(value = "offset", defaultValue = "0") int offset,
			@RequestParam(value = "is_lost", defaultValue = "0") int is_lost) {
		ItemQueryVo itemQueryVo = new ItemQueryVo();
		itemQueryVo.setLimit(limit);
		itemQueryVo.setOffset(offset);
		itemQueryVo.setIs_lost(is_lost);
		return itemService.findItems(itemQueryVo);
	}
	
}
