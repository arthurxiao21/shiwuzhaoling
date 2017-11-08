package com.shiwuzhaoling.mapper;

import java.util.List;

import com.shiwuzhaoling.pojo.User;

public interface UserMapper {

	void saveUser(User user);

	List<User> findUserByTelAndStu_id();

	User findUserByUser_idAndPassword(User user);

	User existUser(Integer user_id);
	 

}
