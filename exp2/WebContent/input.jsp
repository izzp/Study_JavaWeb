<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>表单四则运算</title>
</head>
<body>
<h1>输入四则运算数，选择运算符号：</h1>
<form action="count.jsp" method="post">
<input type="text" id="a" name="a"/>
<select name="op">
    <option value="+" >+</option>
    <option value="-" >-</option>
    <option value="*" >*</option>
    <option value="/" >/</option>
</select> 
<input type="text" id="b" name="b"/>
<input type="submit" value="提交你的选择"/>
</form>
</body>
</html>