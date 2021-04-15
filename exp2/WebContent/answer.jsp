<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("username");
	String answer = request.getParameter("choice");
	if(answer.equals("钱钟书")){
%><h2><%=username  %>恭喜！！回答正确，加2分！</h2>
<%
}
else{
 	out.print("回答错误");
}
%>
</body>
</html>