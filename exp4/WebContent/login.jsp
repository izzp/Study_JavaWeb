<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
<style type="text/css">
body {
	text-align: center;
}

div {
	padding: 5px;
}
</style>
</head>
<body>
	<h1>登录</h1>
	<form action="LoginServlet" method="post">
		<div>
			用户名:<input type="text" name="userName">
		</div>
		<div>
			密 &nbsp 码:<input type="password" name="userPwd">
		</div>
		<input type="submit" value="登录" />
	</form>
</body>
</html>