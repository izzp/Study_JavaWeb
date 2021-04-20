<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.mezzp.beans.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>列表</title>
   <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.4.1/css/bootstrap.min.css"/>
</head>
<body class="container">
	<%
	Map<String, User> users = (Map<String, User>) application.getAttribute("users");
	if(users!=null){
%>
	<table class="table table-hover table-striped">
		<caption class="text-warning">用户信息列表</caption>
		<thead>
			<tr align="center">
				<th>姓名</th>
				<th>密码</th>
				<th>年龄</th>
				<th>性别</th>
			</tr>
		</thead>
		<tbody>
			<%
		for(String key:users.keySet()){
			User user=users.get(key);
	%>
			<tr>
				<td><%=user.getUserName() %></td>
				<td><%=user.getUserPwd() %></td>
				<td><%=user.getUserAge() %></td>
				<td><%=user.getGender() %></td>
			</tr>
			<% 
		} 
	%>
		</tbody>
	</table>
	<% }else{ %>
	<h1>
		当前没有用户信息，请先<a href="register.jsp">注册</a>
	</h1>
	<%} %>
</body>
</html>