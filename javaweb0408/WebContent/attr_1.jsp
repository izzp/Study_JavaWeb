<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attr_1</title>
</head>
<body>
	<h1>attr_1</h1>
	<%
	pageContext.setAttribute("pageContextAttr", "pageContextValue");
	request.setAttribute("requestAttr", "requestValue");
	session.setAttribute("sessionAttr", "sessionValue");
	application.setAttribute("applicationAttr", "applicationValue");
	%>
	pageContext:<%=pageContext.getAttribute("pageContextAttr")%><br>
	request:<%=request.getAttribute("requestAttr")%><br>
	session:<%=session.getAttribute("sessionAttr")%><br>
	application:<%=application.getAttribute("applicationAttr")%><br>
</body>
</html>