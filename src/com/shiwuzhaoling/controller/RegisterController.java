package com.shiwuzhaoling.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@RequestMapping("register")
	public String register(){
		return "register";
	}
	@RequestMapping("user/save")
	public String userSave(){
		
		
		return "redirect:/user";
	}
}
