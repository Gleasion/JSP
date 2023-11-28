<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inplicit Object</title>
</head>
<body>
<h3>선택한 과일</h3>
<%
	request.setCharacterEncoding("UTF-8");

	String[] fruit = request.getParameterValues("fruit");

	for(String fru : fruit)
		out.println(fru + " ");
%>


</body>
</html>