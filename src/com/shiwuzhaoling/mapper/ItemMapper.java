package com.shiwuzhaoling.mapper;

import java.util.List;

import com.shiwuzhaoling.pojo.Item;
import com.shiwuzhaoling.pojo.ItemCustom;
import com.shiwuzhaoling.pojo.ItemInfo;
import com.shiwuzhaoling.pojo.ItemQueryVo;

public interface ItemMapper {
	List<ItemCustom> findItems(ItemQueryVo itemQueryVo); 
	void saveOne(Item item);
	Item findItemByItem_id(int item_id);
	ItemInfo findItemInfoByItem_id(int item_id);
}
