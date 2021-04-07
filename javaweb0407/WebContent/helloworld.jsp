<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>helloworld</title>
</head>
<body>
	<h1>jsp网页</h1>
	<%
	Date date = new Date();
	System.out.println(date);
	out.print("<h2>"+date+"</h2>");
	%>
	<%
	String user="tom";
	int age=10;
/* 	public int fun(int i){
		return i*2;
	} */
	%>
	<%=user %><!-- 注释 -->
</body>
</html>