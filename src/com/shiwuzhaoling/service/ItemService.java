package com.shiwuzhaoling.service;

import java.util.List;

import com.shiwuzhaoling.pojo.Item;
import com.shiwuzhaoling.pojo.ItemCustom;
import com.shiwuzhaoling.pojo.ItemCustomQueryVo;
import com.shiwuzhaoling.pojo.ItemInfo;
import com.shiwuzhaoling.pojo.ItemQueryVo;

public interface ItemService {


	List<ItemCustom> findItems(ItemQueryVo itemQueryVo);
	Item findItemByItem_id(int item_id);
	ItemInfo findItemInfoByItem_Id(int item_id);

	void saveLostItem(Item lostItem);
	void saveFoundItem(Item foundItem);
	List<ItemCustom> findItemsByLoster_id(Integer user_id);
	List<ItemCustom> findItemsByFounder_id(Integer user_id);
	List<ItemCustom> findItemsByCateAddressIs_lost(ItemCustomQueryVo icqv);

}
