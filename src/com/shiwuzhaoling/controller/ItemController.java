package com.shiwuzhaoling.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shiwuzhaoling.pojo.Item;
import com.shiwuzhaoling.pojo.ItemCustom;
import com.shiwuzhaoling.pojo.ItemQueryVo;
import com.shiwuzhaoling.pojo.User;
import com.shiwuzhaoling.service.ItemService;

@Controller
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
	public @ResponseBody List<ItemCustom> items(@RequestParam(value = "limit", defaultValue = "10") int limit,
			@RequestParam(value = "offset", defaultValue = "0") int offset,
			@RequestParam(value = "is_lost", defaultValue = "0") int is_lost) {
		ItemQueryVo itemQueryVo = new ItemQueryVo();
		itemQueryVo.setLimit(limit);
		itemQueryVo.setOffset(offset);
		itemQueryVo.setIs_lost(is_lost);
		return itemService.findItems(itemQueryVo);
	}

	@RequestMapping("/items/{item_id}")
	public String itemInfo(@PathVariable int item_id, Model model) {
		model.addAttribute("itemInfo", itemService.findItemInfoByItem_Id(item_id));
		return "items";
	}

	// 物品发布跳转
	@RequestMapping("/itemPublish")
	public String publish() {
		return "redirect:publish";
	}

	// 物品发布
	@RequestMapping("/publish")
	public String publish(Item item, HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "login";
		} else if (item.getIs_lost() != null) {
			if (item.getIs_lost() == 0) {
				item.setLoster_id(((User) session.getAttribute("user")).getUser_id());
				itemService.saveLostItem(item);
				return "lostList";
			} else {
				item.setFounder_id(((User) session.getAttribute("user")).getUser_id());
				item.setFound_address(item.getLost_address());
				item.setLost_address("");
				itemService.saveFoundItem(item);
				return "foundList";
			}

		}
		return "publish";
	}

	@RequestMapping("lostList")
	public String lostList(HttpSession session, Map<String, Object> map) {
		if (session.getAttribute("user") != null) {
			Integer user_id = ((User) session.getAttribute("user")).getUser_id();
			List<ItemCustom> itemCustomList = itemService.findItemsByLoster_id(user_id);
			map.put("itemCustomList", itemCustomList);
			return "lostList";
		}
		return "redirect:login";
	}

	@RequestMapping("foundList")
	public String foundList(HttpSession session, Map<String, Object> map) {
		if (session.getAttribute("user") != null) {
			Integer user_id = ((User) session.getAttribute("user")).getUser_id();
			List<ItemCustom> itemCustomList = itemService.findItemsByFounder_id(user_id);
			map.put("itemCustomList", itemCustomList);
			return "foundList";
		}
		return "redirect:login";
	}
}
