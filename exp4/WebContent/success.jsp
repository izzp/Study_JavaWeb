<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登陆成功</title>
<style type="text/css">
body {
	text-align: center;
}
</style>
</head>
<body>
<h1><%=session.getAttribute("uName") %>登录成功，欢迎</h1>
</body>
</html>