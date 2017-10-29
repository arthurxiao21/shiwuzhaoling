<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>注册</title>
<meta name="keywords" content="KEYWORDS..." />
<meta name="description" content="DESCRIPTION..." />
<meta name="author" content="DeathGhost" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name='apple-touch-fullscreen' content='yes'>
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="address=no">
<link rel="icon" href="images/icon/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon-precomposed" sizes="57x57"
	href="images/icon/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="120x120"
	href="images/icon/apple-touch-icon-120x120-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="196x196"
	href="images/icon/apple-touch-icon-196x196-precomposed.png">
<meta name="viewport"
	content="initial-scale=1, width=device-width, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script src="js/jquery.js"></script>
<script>
	$(document).ready(function() {
		$(".formarea li:last input[type='button']").click(function() {
			alert("测试跳转效果，程序对接予以删除!");
			location.href = "login.html";
		});
	});
</script>
</head>
<body>
	<!--header-->
	<header>
		<a href="javascript:history.go(-1);" class="iconfont backIcon">&#60;</a>
		<h1>注册</h1>
	</header>
	<div style="height: 1rem;"></div>
	<ul class="formarea">
		<li><label class="lit">账号：</label> <input name="telephone"
			type="tel" placeholder="手机号码" class="textbox" /></li>
		<li><label class="lit">密码：</label> <input name="password"
			type="password" placeholder="设置密码" class="textbox" /></li>
		<li><label class="lit">确认密码：</label> <input type="password"
			placeholder="确认密码" class="textbox" /></li>
		<li><label class="lit">姓名：</label> <input name="name" type="text"
			placeholder="姓名" class="textbox" /></li>
		<li><label class="lit">Email：</label> <input name="email"
			type="text" placeholder="Email" class="textbox" /></li>
		<li><label class="lit">学号：</label> <input type="text"
			placeholder="学号" class="textbox" /></li>
		<li class="liLink"><a href="article.html" class="fl">《用户协议》</a> <a
			href="login.html" class="fr">已有账号，登陆</a></li>
		<li><input type="button" value="立即注册" /></li>
	</ul>
	<div style="height: 1.2rem;"></div>
	<nav>
		<a href="<%=request.getContextPath()%>/index" class="homeIcon">首页</a>
		<a href="<%=request.getContextPath()%>/category" class="categoryIcon">分类</a>
		<a href="<%=request.getContextPath()%>/user" class="userIcon">我的</a>
	</nav>
	<script>
		document.oncontextmenu = new Function("event.returnValue=false;");
		document.onselectstart = new Function("event.returnValue=false;");
	</script>

</body>
</html>
