package com.shiwuzhaoling.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.shiwuzhaoling.mapper.UserMapper;
import com.shiwuzhaoling.pojo.User;
import com.shiwuzhaoling.pojo.UserCustom;
import com.shiwuzhaoling.service.UserService;

public class UserServiceImpl implements UserService {
	@Autowired
	UserMapper userMapper;
	public UserMapper getUserMapper() {
		return userMapper;
	}

	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	

	public void saveUser(User user) {
		userMapper.saveUser(user);
	}

	public List<User> findUserByTelAndStu_id(UserCustom userCustom) {
		return userMapper.findUserByTelAndStu_id();
	}

	

	public User existUser(Integer user_id) {
		return userMapper.existUser(user_id);
	}

	public User findUserByUser_idAndPassword(User user) {
		return userMapper.findUserByUser_idAndPassword(user);
	}

}
