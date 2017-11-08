package com.shiwuzhaoling.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shiwuzhaoling.pojo.ItemCustom;
import com.shiwuzhaoling.pojo.ItemCustomQueryVo;
import com.shiwuzhaoling.service.ItemService;

@Controller
public class SearchController {

	@Autowired
	ItemService itemService;
	public ItemService getItemService() {
		return itemService;
	}
	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}
	@RequestMapping("search")
	public String search(@RequestParam(value="cate",required=false) String cate,
			@RequestParam(value="address",required=false) String address,
			@RequestParam(value="is_lost",required=false,defaultValue="0") Integer is_lost,
			Map<String,Object> map){
		if(cate!=null&&address!=null){
			ItemCustomQueryVo icqv = new ItemCustomQueryVo();
			icqv.setAddress(address);
			icqv.setCate(cate);
			icqv.setIs_lost(is_lost);
			List<ItemCustom> itemCustomList = itemService.findItemsByCateAddressIs_lost(icqv);
			map.put("itemCustomList", itemCustomList);
			map.put("is_lost", is_lost);
			return "search";
		}
		return "search";
	}
}
