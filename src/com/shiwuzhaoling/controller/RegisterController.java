package com.shiwuzhaoling.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shiwuzhaoling.pojo.UserCustom;
import com.shiwuzhaoling.service.UserService;

@Controller
public class RegisterController {
	@Autowired
	private UserService userService;
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@RequestMapping("/register")
	public String register(){
		return "register";
	}
	@RequestMapping(value="/saveUser",method=RequestMethod.POST)
	public String saveUser(@RequestBody UserCustom userCustom){
		if(!userService.findUserByAll(userCustom))
			return "redirect:/user";
		else{
			userService.saveUser(userCustom);
		}
		return "redirect:/user";
	}
}
