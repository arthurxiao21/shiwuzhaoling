<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>分类</title>
<meta name="keywords" content="KEYWORDS..." />
<meta name="description" content="DESCRIPTION..." />
<meta name="author" content="DeathGhost" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name='apple-touch-fullscreen' content='yes'>
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="category=no">
<link rel="icon" href="images/icon/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon-precomposed" sizes="57x57"
	href="images/icon/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="120x120"
	href="images/icon/apple-touch-icon-120x120-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="196x196"
	href="images/icon/apple-touch-icon-196x196-precomposed.png">
<meta name="viewport"
	content="initial-scale=1, width=device-width, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css" />
<script src="<%=request.getContextPath()%>/js/jquery.js"></script>

<script>
	var category_dict = {};
	function render(category_dict) {
		$
				.each(
						category_dict,
						function(idex, category) {
							if (idex == 0) {
								html = "<li class='current_style' id='"+category.id+"'><a><strong>"
								+category.name+"</strong></a></li>";
								$(".class_tree ul").append(html);
							} else {
								html = "<li><a><strong>"+category.name
								+"</strong></a></li>";
								$(".class_tree ul").append(html);
							}
						})
		alter();
	}
	function alter() {
		$(".category_cont").innerHTML = " ";
		var cate_id = $(".current_style").attr("id");
		var cates;
		for(i in category_dict){
			if(category_dict[i].id==cate_id){
				cates = category_dict[i].cates;
			}
		}
		for(x in cates){
			console.log(cates[x]);
			url = "<%=request.getContextPath()%>/search?cate=" + cates[x];
			html = "<li><a href="+"'"+url+"'>" + cates[x] + "</a></li>";
			$(".category_cont").append(html);
		}
	}
	$(document).ready(function() {
		
		$.ajax({
			type : "GET",
			url : "<%=request.getContextPath()%>/static/category.json",
			dataType : "json",
			success : function(data) {
				category_dict = eval(data);
				render(category_dict);
			}
		});
		
		$(".class_tree ul li").click(function() {
			console.log("鼠标点击");
			$(this).addClass("current_style").siblings()
			.removeClass("current_style");
			alter();
		});
	})
	
	
</script>
</head>
<body style="background: white;">
	<!--header-->
	<header>
		<a href="javascript:history.go(-1);" class="iconfont backIcon">&#60;</a>
		<h1>九教</h1>
		<a href="search.html" class="rt_searchIcon">&#37;</a>
	</header>
	<div style="height: 1rem;"></div>
	<!--category list-->
	<aside class="class_tree">
		<ul>

		</ul>
	</aside>
	<!--category content-->
	<ul class="category_cont">
	</ul>
	<div style="height: 1.2rem;"></div>
	<nav>
		<a href="<%=request.getContextPath()%>/index" class="homeIcon">首页</a>
		<a href="<%=request.getContextPath()%>/category" class="categoryIcon">分类</a>
		<a href="<%=request.getContextPath()%>/itemPublish" class="cartIcon">发布</a>
		<a href="<%=request.getContextPath()%>/user" class="userIcon">我的</a>
	</nav>
	<script>
		document.oncontextmenu = new Function("event.returnValue=false;");
		document.onselectstart = new Function("event.returnValue=false;");
	</script>

</body>
</html>
