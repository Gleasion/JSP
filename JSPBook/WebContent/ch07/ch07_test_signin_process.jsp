<%@page import="dao.MemberDAO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!--
	1. 로그인 페이지에서 전송한 아이디, 비밀번호를 받아주세요.
	
	2. 전달받은 아이디, 비밀번호에 해당하는 내 정보가 있는지 없는지 체크해주세요.
		> DAO, VO를 활용하여 진행할 수 있도록합니다.
		> 제공된 DAO, VO를 사용합니다.
		
	3. 전달받은 아이디, 비밀번호에 해당하는 회원인 경우에 ch07_Test_memList.jsp로 이동하여 회원 목록 페이지를 완성해주세요.
		> 회원 목록 페이지로 넘어가서 해당 목록 페이지에서 'a001님! 환영합니다!' 메세지를 출력해주세요. (알림창)
		
	4. 전달받은 아이디, 비밀번호에 해당하지 않는 회원인 경우에 ch07_test_signin.jsp로 이동하여 다시 로그인 할 수 있도록 해주시고,
		에러 메세지를 출력해주세요. (존재하지 않는 회원입니다.)
-->

<%
	request.setCharacterEncoding("UTF-8");
	String mem_id = request.getParameter("mem_id");
	String mem_pw = request.getParameter("mem_pw");
	
	MemberDAO memdao = MemberDAO.getInstance();
	MemberVO memvo = memdao.getMember(mem_id);
	
	String check = "";
	
	if(memvo != null){
		String memId = memvo.getMem_id();
		String memPw = memvo.getMem_pw();
		
		if(mem_id.equals(memId) && mem_pw.equals(memPw)){
// 			request.setAttribute("check", "1");
			response.sendRedirect("ch07_test_memberList.jsp?check=1");
		}
		
	}else{
// 		request.setAttribute("check", "0");
		response.sendRedirect("ch07_test_signin.jsp?check=0");
	}
	

%>