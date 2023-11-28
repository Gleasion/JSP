<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
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
	response.setIntHeader("Refresh", 5);

	Calendar cal = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss a");
	// AM/PM 으로 표시하려면 format에서 Locale.US를 지정
%>

<p>현재시간은 <%=sdf.format(cal.getTime()) %></p>

<a href="./response_data.jsp" >Google 홈페이지로 이동하기</a>

</body>
</html>