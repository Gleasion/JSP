<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>
<%
	response.setStatus(200);
%>
<h3>오류 발생</h3>
<table border="1">
	<tr>
		<td>Error: </td>
		<td><%=request.getAttribute("javax.servlet.error.exception") %> : 오류발생!</td>
	</tr>
	<tr>
		<td>URI :</td>
		<td><%=request.getAttribute("javax.servlet.error.request_uri") %></td>
	</tr>
	<tr>
		<td>Status code :</td>
		<td><%=request.getAttribute("javax.servlet.error.status_code") %></td>
	</tr>
</table>
</body>
</html>