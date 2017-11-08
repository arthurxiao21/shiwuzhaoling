package com.shiwuzhaoling.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.shiwuzhaoling.mapper.ItemMapper;
import com.shiwuzhaoling.mapper.UserMapper;
import com.shiwuzhaoling.pojo.Item;
import com.shiwuzhaoling.pojo.ItemCustom;
import com.shiwuzhaoling.pojo.ItemCustomQueryVo;
import com.shiwuzhaoling.pojo.ItemInfo;
import com.shiwuzhaoling.pojo.ItemQueryVo;
import com.shiwuzhaoling.service.ItemService;

public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemMapper itemMapper;
	
	public ItemMapper getItemMapper() {
		return itemMapper;
	}

	public void setItemMapper(ItemMapper itemMapper) {
		this.itemMapper = itemMapper;
	}


	public List<ItemCustom> findItems(ItemQueryVo itemQueryVo) {
		return itemMapper.findItems(itemQueryVo);
	}

	public Item findItemByItem_id(int item_id) {
		return itemMapper.findItemByItem_id(item_id);
	}

	@Override
	public ItemInfo findItemInfoByItem_Id(int item_id) {
		return itemMapper.findItemInfoByItem_id(item_id);
	}

	@Override
	public void saveLostItem(Item lostItem) {
		itemMapper.saveLostItem(lostItem);
	}

	@Override
	public void saveFoundItem(Item foundItem) {
		itemMapper.saveFoundItem(foundItem);
	}

	@Override
	public List<ItemCustom> findItemsByLoster_id(Integer user_id) {
		return itemMapper.findItemsByLoster_id(user_id);
	}

	@Override
	public List<ItemCustom> findItemsByFounder_id(Integer user_id) {
		return itemMapper.findItemsByFounder_id(user_id);
	}

	
	@Override
	public List<ItemCustom> findItemsByCateAddressIs_lost(ItemCustomQueryVo icqv) {
		return itemMapper.findItemsByCateAddressIs_lost(icqv);
	}

	

}
