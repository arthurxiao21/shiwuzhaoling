<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>物品详情</title>
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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/style.css" />
<script src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script>
	
</script>
</head>
<body>
	<!--header-->
	<header>
		<a href="javascript:history.go(-1);" class="iconfont backIcon">&#60;</a>
		<h1>物品详情</h1>
	</header>
	<div style="height: 1rem;"></div>
	
	<!--base information-->
	<!--product attr-->
	<dl class="pro_attr">
		<dt>物品详情信息</dt>
		<dd>
			<ul>
				<li><span>种类</span> <em>${itemInfo.category}</em></li>
				<li><span>地点</span> <em>${itemInfo.lost_address}</em></li>
				<li><span>创建时间</span> <em>${itemInfo.create_time}</em></li>

			</ul>
		</dd>
		<dt>物品描述</dt>
		<dd>
			<section>${itemInfo.description}</section>
		</dd>
		<dt>联系信息</dt>
		<dd>
			<ul>
				<li><span>姓名</span> <em>${itemInfo.userCustom.name}</em></li>
				<li><span>电话</span> <em>${itemInfo.userCustom.telephone}</em></li>
				<li><span>email</span> <em>${itemInfo.userCustom.email}</em></li>
				<li><span>is_lost</span> <em>${itemInfo.is_lost}</em></li>

			</ul>
		</dd>
	</dl>
	<!--bottom nav-->
	<div style="height: 1rem;"></div>
	<aside class="btmNav">
		
			<a style="background: #64ab5b; color: white; text-shadow: none;">我要撤销</a>
	</aside>
</body>
</html>
