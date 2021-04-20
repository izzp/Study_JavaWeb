<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.mezzp.beans.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//获取注册信息，封装User
		request.setCharacterEncoding("utf-8");
		String userName = request.getParameter("userName");
		//获取application对象中的Map对象
		Map<String, User> users = (Map<String, User>) application.getAttribute("users");
		if (users == null) {
			users = new HashMap<String, User>();
		}
		//判断userName是否存在
	%>
	<jsp:useBean id="user" class="com.mezzp.beans.User">
		<jsp:setProperty property="*" name="user"></jsp:setProperty>
	</jsp:useBean>
	<%
		if (userName != null && users.get(userName) == null) {
			users.put(userName, user);
		}
		application.removeAttribute("users");
		application.setAttribute("users", users);
	%>
	<jsp:forward page="list.jsp"/>
</body>
</html>