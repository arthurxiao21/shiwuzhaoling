package com.shiwuzhaoling.pojo;

public class ItemCustom {
	private Integer item_id;
	private String description;
	private String category;
	private String lost_address;
	private String found_address;

	public String getFound_address() {
		return found_address;
	}

	public void setFound_address(String found_address) {
		this.found_address = found_address;
	}

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

}
