package com.shiwuzhaoling.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shiwuzhaoling.pojo.User;
import com.shiwuzhaoling.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	// 用户登陆
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(User user, HttpSession session, Map<String, Object> map) {
		// 判断是否存在用户
		System.out.println(user.toString());
		User isExistUser = userService.existUser(user.getUser_id());
		if (isExistUser == null) {
			map.put("notUser", "notUser");
			return "login";
		}
		// 判断用户名和密码是否都正确
		User u = userService.findUserByUser_idAndPassword(user);
		if (u == null) {
			map.put("notPassword", "notPassword");
			return "login";
		}
		session.setAttribute("user", u);
		return "redirect:index";
	}

	// 用户注册跳转
	@RequestMapping("/userRegister")
	public String register() {
		return "register";
	}

	// 用户注册
	@RequestMapping("/register")
	public String register(User user) {
		if (user.getTelephone() == null)
			return "user";
		else
			userService.saveUser(user);
		return "user";
	}

	// 跳转到用户登陆
	@RequestMapping("/userLogin")
	public String userLogin(HttpSession session) {
		if (session.getAttribute("user") != null) {
			return "redirect:user";
		} else {
			return "login";
		}
	}

	@RequestMapping("/user")
	public String user(HttpSession session) {
		if (session.getAttribute("user") == null)
			return "login";
		return "user";
	}

	@RequestMapping("/user_set")
	public String user_set(User user, HttpSession session) {
		if (session.getAttribute("user") == null)
			return "login";
		if(session.getAttribute("user")!=null&&user==null){
			User u = ((User) session.getAttribute("user"));
			userService.updateUser(u);
			return "user";
		}
		return "login";
	}
	@RequestMapping("/profile")
	public String profile(HttpSession session,Map<String,Object> map){
		User u = (User) session.getAttribute("user");
		if(u==null)
		return "login";
		else{
			u= userService.findUserByUser_idAndPassword(u);
			map.put("user", u);
			System.out.println(u.toString());
			return "profile";
		}
	}

}
