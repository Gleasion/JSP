<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	StringBuffer name = new StringBuffer(request.getParameter("name"));
	StringBuffer addr = new StringBuffer(request.getParameter("addr"));
	StringBuffer email = new StringBuffer(request.getParameter("email"));
	
	name.append("<br/>");
	addr.append("<br/>");
	email.append("<br/>");
	
	out.print("아이디 : " + name.toString());
	out.print("주소 : " + addr.toString());
	out.print("이메일 : " + email.toString());
	
%>

</body>
</html>