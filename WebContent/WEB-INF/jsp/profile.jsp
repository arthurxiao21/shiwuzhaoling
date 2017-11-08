<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>个人资料</title>
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
 <h1>个人资料</h1>
</header>
<div style="height:1rem;"></div>
<ul class="inforList">
 <li>
  <a href="change_name.html" class="isNext">
   <span>手机号码</span>
   <span>${user.telephone }</span>
  </a>
 </li>
 <li>
  <a href="change_name.html" class="isNext">
   <span>user_id</span>
   <span>${user.user_id }</span>
  </a>
 </li>
 <li>
  <a href="change_name.html" class="isNext">
   <span>姓名</span>
   <span>${user.name }</span>
  </a>
 </li>
 <li>
  <a href="change_name.html" class="isNext">
   <span>email</span>
   <span>${user.email }</span>
  </a>
 </li>
 <li>
  <a href="change_name.html" class="isNext">
   <span>学号</span>
   <span>${user.stu_id }</span>
  </a>
 </li>
</ul>
</body>
</html>
