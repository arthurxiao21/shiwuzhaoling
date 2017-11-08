package com.shiwuzhaoling.service;

import java.util.List;

import com.shiwuzhaoling.pojo.User;
import com.shiwuzhaoling.pojo.UserCustom;

public interface UserService {

	void saveUser(User user);

	List<User> findUserByTelAndStu_id(UserCustom userCustom);


	User existUser(Integer user_id);

	User findUserByUser_idAndPassword(User user);

	void updateUser(User u);
}
