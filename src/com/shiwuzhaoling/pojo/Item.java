package com.shiwuzhaoling.pojo;

import java.util.Date;

public class Item {
	private Integer item_id;
	private String description;
	private Integer is_returned;
	private Integer loster_id;
	private Integer founder_id;
	private String category;
	private String lost_address;
	private String found_address;
	private Date lost_time;
	private Date found_time;
	//0:lost,1:found
	private Integer is_lost;
	private Date create_time;
	public Integer getItem_id() {
		return item_id;
	}
	public void setItem_id(Integer item_id) {
		this.item_id = item_id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getIs_returned() {
		return is_returned;
	}
	public void setIs_returned(Integer is_returned) {
		this.is_returned = is_returned;
	}
	public Integer getLoster_id() {
		return loster_id;
	}
	public void setLoster_id(Integer loster_id) {
		this.loster_id = loster_id;
	}
	public Integer getFounder_id() {
		return founder_id;
	}
	public void setFounder_id(Integer founder_id) {
		this.founder_id = founder_id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getLost_address() {
		return lost_address;
	}
	public void setLost_address(String lost_address) {
		this.lost_address = lost_address;
	}
	public String getFound_address() {
		return found_address;
	}
	public void setFound_address(String found_address) {
		this.found_address = found_address;
	}
	public Date getLost_time() {
		return lost_time;
	}
	public void setLost_time(Date lost_time) {
		this.lost_time = lost_time;
	}
	public Date getFound_time() {
		return found_time;
	}
	public void setFound_time(Date found_time) {
		this.found_time = found_time;
	}
	public Integer getIs_lost() {
		return is_lost;
	}
	public void setIs_lost(Integer is_lost) {
		this.is_lost = is_lost;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	
	
}
