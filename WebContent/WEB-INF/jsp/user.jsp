<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>个人中心</title>
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
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css" />
<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
</head>
<body>
	<!--header-->
	<header>
		<a href="javascript:history.go(-1);" class="iconfont backIcon">&#60;</a>
		<h1>个人中心</h1>
		<a href="user_set.html" class="iconfont setIcon">&#42;</a>
	</header>
	<div style="height: 1rem;"></div>
	<div class="userInfor">
		<a class="userIcon"><img src="images/icon/DefaultAvatar.jpg" /></a>
		<h2>${user.name}</h2>
	</div>
	<ul class="userList">
		<li><a href="<%=request.getContextPath()%>/lostList" class="orderListIcon">失物列表</a></li>
		<li><a href="<%=request.getContextPath()%>/foundList" class="collectionIcon">拾物列表</a></li>
		<li><a href="<%=request.getContextPath()%>/profile" class="profileIcon">个人资料</a></li>
	</ul>
	<!--fixedNav:footer-->
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
