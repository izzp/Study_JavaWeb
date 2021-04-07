<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="WEB-INF/error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>主页</title>
</head>
<body>
	<h1>jsp主页</h1>
	<%
	request.setAttribute("user", "test");
	%>
	<!-- 触发错误 -->
	<%-- 	<%=10/0 %>> --%>
	<%
	Date date = new Date();
	System.out.println(date.toString());

	request.getParameter("user");
	%>
	<%=session.getId()%>
	<%=session.getAttribute("sex")%>
</body>
</html>