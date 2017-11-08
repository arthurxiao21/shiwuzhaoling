package com.shiwuzhaoling.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CategoryController {
	@RequestMapping("/category")
	public String category() {
		return "category";
	}

	@RequestMapping("/category/categoryDict")
	public void categoryDict(HttpServletResponse response) throws IOException {
		String jsonStr = "[{name:'教学区',cate:['九教','十教','十二教','十一教']}{name:'生活区',cate:['5号楼','16号楼','29号楼']}]";
		response.setContentType("application/json;charset=UTF-8");
		response.getWriter().write(jsonStr);
	}
}
