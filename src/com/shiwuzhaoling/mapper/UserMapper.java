package com.shiwuzhaoling.mapper;

import com.shiwuzhaoling.pojo.UserCustom;

public interface UserMapper {

	void saveUser(UserCustom userCustom);

	boolean findUserByAll(UserCustom userCustom);

}
