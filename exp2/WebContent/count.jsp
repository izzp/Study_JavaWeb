<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>计算结果</title>
</head>
<body>
<h1>计算结果：</h1>
<%
    String a = request.getParameter("a");
	String op = request.getParameter("op");
    String b = request.getParameter("b");
   	try{
    int c=Integer.parseInt(a);
    int d=Integer.parseInt(b);
	double o=0;
	if(op.equals("+")) {
		o=c+d;
	}else if(op.equals("-")) {
		o=c-d;
	}else if(op.equals("*")) {
		o=c*d;
	}else if(op.equals("/")) {
		if(d!=0) {
			c=c/d;
		}else {
			out.println("error");
		}
	}
    out.print(a+op+b+"="+o);
   	}
   	catch (Exception e){
   		%><jsp:forward page="error.jsp"/>
   	<%}
%>

</body>
</html>