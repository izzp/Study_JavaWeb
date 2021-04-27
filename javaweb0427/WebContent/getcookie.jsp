<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>得到cookie</title>
</head>
<body>
 <% 
 	Cookie[] cookies = request.getCookies();
 	for(Cookie c:cookies){
 		String name = c.getName();
 		if(name.equals("JSESSIONID")){
 			out.print(c.getValue());
 		}
 	}
 %>
</body>
</html>