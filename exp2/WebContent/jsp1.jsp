<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>x求y的值</title>
</head>
<body>
<% 
	int y;
	String X=request.getParameter("x");
	Integer x= new Integer(X);
	if(x<0){
		out.println("当x<0时，输出"+"<br/>");
		out.println("x="+x+"<br/>");
		out.println("y=-1");
	}else if(x==0){
		out.println("y=0");	
	}else {
		out.println("y=1");
	}
%>
</body>
</html>