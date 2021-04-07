<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%=session.getId()%></h1>
	<!-- 静态引入，引入其他页面内容，然后转换为一个java源文件，生成一个servlet -->
	<%@ include file="session_2.jsp"%>
</body>
</html>