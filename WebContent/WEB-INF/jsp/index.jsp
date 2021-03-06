<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>失物招领平台</title>
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
<script>
	//获得json数据并渲染
	function getItemsAndRender(limit, offset, is_lost) {
		//拼接url
		latter_url = "limit" + "=" + limit + "&" + "offset" + "=" + offset
				+ "&" + "is_lost" + "=" + is_lost;
		//从api获取items数据
		$.ajax({
			type : "GET",
			url : "<%=request.getContextPath()%>/api/items",
			dataType : "json",
			data : latter_url,
			success : function render(result){
				console.log(result);
				$.each(result,function(idex, item) {
					html = '<li><a href="product.html" class="goodsPic"><img src="upload/goods00'
					        +is_lost
					        +'.png"/>'
					        +'</a><div class="goodsInfor"><h2>'
					        +'<a href="<%=request.getContextPath() %>/items/'
							+ item.item_id
							+ '">'
							+ item.category
						    + '</a></h2><p>'
							+ item.description.substr(0, 8)
							+ "..."
							+ '</p><p><strong class="price">'
							+ item.lost_address
							+ '</strong></p><a href="/item/'+item.item_id
							+'" class="addToCart"></a></div></li>';
											console.log(is_lost);
											$(".tab_proList dd").eq(is_lost)
													.find("ul").append(html);
											console.log(html);
										})
						return 1;
					}
				});

	}
	$(document)
			.ready(
					function() {
						//轮播图效果
						var mySwiper = new Swiper('#slide', {
							autoplay : 5000,
							visibilityFullFit : true,
							loop : true,
							pagination : '.pagination',
						});
						//limit:每次获取的数量
						//offset:记录获取的量
						//is_lost:0为失物，1为拾物
						var limit = 10;
						var offset = 0;
						var is_lost = 0;
						//product list:Tab
						//tab_proList 的点击切换功能
						$(".tab_proList dd").eq(0).show().siblings(
								".tab_proList dd").hide();
						$(".tab_proList dt a").eq(0).addClass("currStyle");
						$(".tab_proList dt a").click(
								function() {
									var liindex = $(".tab_proList dt a").index(
											this);
									//将请求的items更改
									is_lost = liindex;
									$(this).addClass("currStyle").siblings()
											.removeClass("currStyle");
									$(".tab_proList dd").eq(liindex)
											.fadeIn(150).siblings(
													".tab_proList dd").hide();
								});
						getItemsAndRender(limit,offset,0)==1?offset++:null;
						window.onscroll = function() {
							var height = document.body.clientHeight;
							var scrollTop = document.documentElement.scrollTop
									|| document.body.scrollTop;
							var windowH = window.innerHeight;
							if (scrollTop + windowH > height - 30) {
								//ajax获取json数据
								getItemsAndRender(limit, offset, is_lost) == 1 ? offset++
										: null;
							}
						}
					});
</script>
</head>
<body>
	<!--header-->
	<header>
		<a href="location.html" class="location">九教</a> <a href="search.html"
			class="rt_searchIcon">&#37;</a>
	</header>
	<div style="height: 1rem;"></div>
	<!--slide-->
	<div id="slide">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<a href="#"> <img src="upload/slide-001.png" />
				</a>
			</div>
			<div class="swiper-slide">
				<a href="#"> <img src="upload/slide-002.png" />
				</a>
			</div>
		</div>
		<div class="pagination"></div>
	</div>
	<!--Tab:productList-->
	<dl class="tab_proList">
		<dt>
			<a>失物</a> <a>拾物</a>
		</dt>
		<dd>
			<ul>
				<!-- 这里会异步加载 -->
			</ul>
		</dd>
		<dd>
			<ul>
				<li><a href="product.html" class="goodsPic"> <img
						src="upload/goods001.jpg" />
				</a>
					<div class="goodsInfor">
						<h2>
							<a href="product.html">雨伞</a>
						</h2>
						<p>一把雨伞，伞是全黑的</p>
						<p>
							<strong class="price">九教</strong>
						</p>
						<a href="/item/1" class="addToCart">&#126;</a>
					</div></li>
				<li><a href="product.html" class="goodsPic"> <img
						src="upload/goods001.jpg" />
				</a>
					<div class="goodsInfor">
						<h2>
							<a href="product.html">雨伞</a>
						</h2>
						<p>一把雨伞，伞是全黑的</p>
						<p>
							<strong class="price">九教</strong>
						</p>
						<a href="/item/1" class="addToCart">&#126;</a>
					</div></li>
				<li><a href="product.html" class="goodsPic"> <img
						src="upload/goods001.jpg" />
				</a>
					<div class="goodsInfor">
						<h2>
							<a href="product.html">雨伞</a>
						</h2>
						<p>一把雨伞，伞是全黑的</p>
						<p>
							<strong class="price">九教</strong>
						</p>
						<a href="/item/1" class="addToCart">&#126;</a>
					</div></li>
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
