package com.shiwuzhaoling.service;

import com.shiwuzhaoling.pojo.UserCustom;

public interface UserService {
	boolean findUserByAll(UserCustom userCustom);

	void saveUser(UserCustom userCustom);
}
