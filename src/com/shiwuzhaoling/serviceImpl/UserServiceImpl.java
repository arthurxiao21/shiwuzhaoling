package com.shiwuzhaoling.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;

import com.shiwuzhaoling.mapper.UserMapper;
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

	@Override
	public boolean findUserByAll(UserCustom userCustom) {
		return userMapper.findUserByAll(userCustom);
	}

	@Override
	public void saveUser(UserCustom userCustom) {
		userMapper.saveUser(userCustom);
	}

}
