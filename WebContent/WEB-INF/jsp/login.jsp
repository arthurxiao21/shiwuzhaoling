<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css" />
<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
<script>

</script>
</head>
<body>
	<section class="formLogo">
		<h2>失物招领</h2>
	</section>
	<c:if test="${notUser!=null}">
		<mark class="formMark">用户不存在</mark>
	</c:if>
	<c:if test="${notPassoword!=null}">
		<mark class="formMark">密码错误</mark>
	</c:if>
	<form id="loginForm" id="user"
		action="${pageContext.request.contextPath}/login" method="post">
		<ul class="formarea">
			<li><label class="lit">账号</label> <input type="text"
				id="user_id" name="user_id" placeholder="user_id" class="textbox" /></li>
			<li><label class="lit">密码</label> <input type="password"
				id="password" name="password" placeholder="密码" class="textbox" /></li>
			<li class="liLink lg_liLink"><span><label><input
						type="checkbox" />记住密码</label></span> <span><a
					href="<%=request.getContextPath()%>/register">注册账号</a></span> <span><a
					href="<%=request.getContextPath()%>/find_pwd">找回密码</a></span></li>
			<li><input type="submit" value="登陆" /></li>
		</ul>
	</form>
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
