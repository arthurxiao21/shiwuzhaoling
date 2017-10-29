package com.shiwuzhaoling.service;

import java.util.List;

import com.shiwuzhaoling.pojo.Item;
import com.shiwuzhaoling.pojo.ItemCustom;
import com.shiwuzhaoling.pojo.ItemInfo;
import com.shiwuzhaoling.pojo.ItemQueryVo;

public interface ItemService {

	void saveOne(Item lostItem);

	List<ItemCustom> findItems(ItemQueryVo itemQueryVo);
	Item findItemByItem_id(int item_id);
	ItemInfo findItemInfoByItem_Id(int item_id);

}
