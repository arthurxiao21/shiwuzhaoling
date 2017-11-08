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
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css" />
<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
<script>
	function submitForm() {
		var password = $.trim($("input[name='password']").val());
		var repass = $.trim($("input[name='repass']").val());
		//此处应该有更多的校验
		if (password != repass) {
			$(".beforeMark").append('<mark class="formMark">两次密码不一致</mark>');
			return false;
		}
		var data = {
			telephone : $.trim($("input[name='telephone']").val()),
			password : $.trim($("input[name='password']").val()),
			name : $.trim($("input[name='name']").val()),
			email : $.trim($("input[name='email]'").val()),
			stu_id : $.trim($("input[stu_id='stu_id']").val())
		}
		$.ajax({
			url:"<%=request.getContextPath()%>/saveUser",
			type:'post',
			contentType:"application/json",
			data:JSON.stringify(data),
			dataType:'json',
			success:function(data,textStatus,xhr){
				window.location.href="<%=request.getContextPath()%>/user";
			}
		})
	}
	function checkForm(){
		var telephone=$.trim($("#telephone").val());
		if(telephone==null||telephone==''){
			$(".beforeMark").append('<mark class="formMark">电话号码不能为空</mark>');
			return false;
		}
		var password = $.trim($("input[name='password']").val());
		var repass = $.trim($("input[name='repass']").val());
		if(password==null||password==''){
			$(".beforeMark").append('<mark class="formMark">密码不能为空</mark>');
			return false;
		}
		if (password != repass) {
			$(".beforeMark").append('<mark class="formMark">两次密码不一致</mark>');
			return false;
		}
		var email=$.trim($("#email").val());
		if(email==null||email==''){
			$(".beforeMark").append('<mark class="formMark">email不能为空</mark>');
			return false;
		}
		var stu_id=$.trim($("#stu_id").val());
		if(stu_id==null||stu_id==''){
			$(".beforeMark").append('<mark class="formMark">学号不能为空</mark>');
			return false;
		}
	}
</script>
</head>
<body>
	<!--header-->
	<header>
		<a href="javascript:history.go(-1);" class="iconfont backIcon">&#60;</a>
		<h1>注册</h1>
	</header>
	<div style="height: 1rem;"></div>
	<div class="beforeMark"></div>
	<form method="post" id="user" action="<%=request.getContextPath()%>/register"
	onsubmit="return checkForm()">
	<ul class="formarea">
		<li><label class="lit">手机号：</label> <input name="telephone"
			id="telephone" type="tel" placeholder="手机号码" class="textbox" /></li>
		<li><label class="lit">密码：</label> <input name="password"
			id="password" type="password" placeholder="设置密码" class="textbox" /></li>
		<li><label class="lit">确认密码：</label> <input name="repass"
			type="password" placeholder="确认密码" class="textbox" /></li>
		<li><label class="lit">姓名：</label> <input name="name" type="text"
			id="name" placeholder="姓名" class="textbox" /></li>
		<li><label class="lit">Email：</label> <input name="email"
			id="email" type="text" placeholder="Email" class="textbox" /></li>
		<li><label class="lit">学号：</label> <input name="stu_id"
			id="stu_id" type="text" placeholder="学号" class="textbox" /></li>
		<li class="liLink"><a href="article.html" class="fl">《用户协议》</a> <a href="<%=request.getContextPath()%>/login" class="fr">已有账号，登陆</a></li>
		<li><input type="submit" value="立即注册" /></li>
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
