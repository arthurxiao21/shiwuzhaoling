package com.shiwuzhaoling.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@RequestMapping("/user")
	public String user(){
		//判断是否登录
		//TODO
		return "user";
	}
}
