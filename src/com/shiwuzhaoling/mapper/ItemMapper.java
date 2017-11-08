package com.shiwuzhaoling.mapper;

import java.util.List;

import com.shiwuzhaoling.pojo.Item;
import com.shiwuzhaoling.pojo.ItemCustom;
import com.shiwuzhaoling.pojo.ItemCustomQueryVo;
import com.shiwuzhaoling.pojo.ItemInfo;
import com.shiwuzhaoling.pojo.ItemQueryVo;

public interface ItemMapper {
	List<ItemCustom> findItems(ItemQueryVo itemQueryVo); 
	void saveFoundItem(Item foundItem);
	void saveLostItem(Item lostItem);
	Item findItemByItem_id(int item_id);
	ItemInfo findItemInfoByItem_id(int item_id);
	List<ItemCustom> findItemsByLoster_id(Integer user_id);
	List<ItemCustom> findItemsByFounder_id(Integer user_id);
	List<ItemCustom> findItemsByCateAddressIs_lost(String cate, String address, Integer is_lost);
	List<ItemCustom> findItemsByCateAddressIs_lost(ItemCustomQueryVo icqv);
}
