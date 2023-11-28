<%@ page language="java" pageEncoding="UTF-8" errorPage="ch11_test_exceptionBoard_error.jsp"%>
<%
	session.invalidate();
	response.sendRedirect("ch11_test_login.jsp");
%>