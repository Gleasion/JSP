<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("cartId");

	if(id == null || id.equals("")){
		response.sendRedirect("cart.jsp");
		return;	
	}

	session.invalidate(); // 세션 초기화
	
	response.sendRedirect("cart.jsp");


%>