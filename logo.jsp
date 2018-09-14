<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/css/user.css" type="text/css" rel="stylesheet" />
	<title>login</title>
</head>
<body>
	<div class="user-body-bg"></div>
	<div class="user-login-bg"></div>
	<div class="user-bottom-bg"></div>
	<div class="login-box">
		<form action="logoservlet" method="post">
			<label class="form-inline">
				<div class="form-inline-font">
					用户名 :
				</div>
				<div class="form-inline-input">
					<input type="text" name="name" value="admin" maxlength="8"/>
				</div>
			</label>
			<label class="form-inline">
				<div class="form-inline-font">
					密码 :
				</div>
				<div class="form-inline-input">
					<input type="password" name="password" maxlength="16" />
				</div>
			</label>
			<div class="login-btn">
				<button type="submit">登录</button>
			</div>
		</form>
	</div>
</body>
<script src="/js/login.js"></script>
</html>
