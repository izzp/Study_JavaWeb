<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mezzp.beans.User"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>保存注册信息</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String userName = request.getParameter("username");
	int userAge = Integer.parseInt(request.getParameter("userage"));
	String gender = request.getParameter("gender");
%>
<jsp:useBean id="user1" class="com.mezzp.beans.User">
	<jsp:setProperty property="userName" name="user1" param="username"/>
	<jsp:setProperty property="userAge" name="user1" value="<%=userAge %>"/>
	<jsp:setProperty property="gender" name="user1" value="<%=gender %>"/>
</jsp:useBean>
姓名：
<jsp:getProperty property="userName" name="user1"/>

</body>
</html>