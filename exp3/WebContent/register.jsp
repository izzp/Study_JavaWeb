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
	<form action="save.jsp" method="post">
		<div>
			姓名:<input type="text" name="userName">
		</div>
		<div>
			密码:<input type="password" name="userPwd">
		</div>
		<div>
			年龄:<input type="text" name="userAge">
		</div>
		<div>
			性别： 
		    <input type="radio" name="gender" value="男" checked="checked"/>男
   			<input type="radio" name="gender" value="女"/>女
		</div>
		<input type="submit" value="注册" />
	</form>
</body>
</html>