<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>From Processing</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	Enumeration paramNames = request.getParameterNames();
	
	while(paramNames.hasMoreElements()){
		String name = (String) paramNames.nextElement();
		String paramValue = request.getParameter(name);
		out.print(name + " : " + paramValue + "<br/>");
	}
%>
</body>
</html>