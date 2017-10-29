package com.shiwuzhaoling.pojo;

public class ItemQueryVo {
	private int limit;
	private int offset;
	private int is_lost;
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public int getOffset() {
		return offset;
	}
	public void setOffset(int offset) {
		this.offset = offset;
	}
	public int getIs_lost() {
		return is_lost;
	}
	public void setIs_lost(int is_lost) {
		this.is_lost = is_lost;
	}
	
}
