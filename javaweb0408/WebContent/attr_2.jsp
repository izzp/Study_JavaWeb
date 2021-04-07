<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>attr_2</h1>
	pageContext:<%=pageContext.getAttribute("pageContextAttr")%><br>
	request:<%=request.getAttribute("requestAttr")%><br>
	session:<%=session.getAttribute("sessionAttr")%><br>
	application:<%=application.getAttribute("applicationAttr")%><br>
</body>
</html>