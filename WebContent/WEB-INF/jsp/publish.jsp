<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>发布信息</title>
<meta name="keywords" content="KEYWORDS..." />
<meta name="description" content="DESCRIPTION..." />
<meta name="author" content="DeathGhost" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name='apple-touch-fullscreen' content='yes'>
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="category=no">
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
	function checkForm() {
		var category = $.trim($("#category").val());
		if (category == null || category == '') {
			$(".beforeMark").append('<mark class="formMark">种类不能为空</mark>');
			return false;
		}
		var address = $.trim($("#lost_address").val());
		if (address == null || address == '') {
			$(".beforeMark").append('<mark class="formMark">地址不能为空</mark>');
			return false;
		}
	}
</script>
</head>
<body>
	<!--header-->
	<header>
		<a href="javascript:history.go(-1);" class="iconfont backIcon">&#60;</a>
		<h1>发布信息</h1>
	</header>
	<div style="height: 1rem;"></div>
	<div class="beforeMark"></div>
	<form method="post" id="item"
		action="<%=request.getContextPath()%>/publish"
		onsubmit="return checkForm()">
		<ul class="formarea">
			<li><label class="lit">失物或拾物:</label><input name="is_lost"
				type="text" id="is_lost" placeholder="0或1" class="textbox" /></li>
			<li><label class="lit">类别：</label> <input name="category"
				type="text" id="category" placeholder="类别" class="textbox" /></li>
			<li><label class="lit">地点：</label> <input name="lost_address"
				id="lost_address" type="text" placeholder="地点" class="textbox" /></li>
			<li><label class="lit">详细描述：</label> <input name="description"
				id="description" type="text" placeholder="描述" class="textbox" /></li>
			<li><input type="submit" value="提交" /></li>
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
