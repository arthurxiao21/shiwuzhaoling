<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>${user.name }的失物列表</title>
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
<script src="<%=request.getContextPath()%>/js/swiper.min.js"></script>
</head>
<body>
	<!--header-->
	<header>
		<a href="location.html" class="location">九教</a> <a href="search.html"
			class="rt_searchIcon">&#37;</a>
	</header>
	<div style="height: 1rem;"></div>
	<!--Tab:productList-->
	<dl class="tab_proList">
		<dt>
			<a>${user.name}的失物</a>
		</dt>
		<dd>
			<ul>
				<c:forEach var="item" items="${itemCustomList }">
					<li><a
						href="<%=request.getContextPath() %>/items/${item.item_id}"
						class="goodsPic"> <img src="upload/goods000.png" />
					</a>
						<div class="goodsInfor">
							<h2>
								<a href="<%=request.getContextPath() %>/items/${item.item_id}">${item.category }</a>
							</h2>
							<p>${item.description }</p>
							<p>
								<strong class="price">${item.lost_address }</strong>
							</p>
							<a href="" class="addToCart"></a>
						</div></li>
				</c:forEach>
			</ul>
		</dd>

	</dl>

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
