<%@page import="vo.BoardVO"%>
<%@page import="dao.BoardRepository"%>
<%@ page language="java" pageEncoding="UTF-8" errorPage="ch11_test_exceptionBoard_error.jsp"%>
<!-- 
   삭제할 게시글 정보를 넘겨받고, 삭제를 진행해주세요.
   삭제가 실패하여 에러가 발생 할 경우, exceptionBoard_error.jsp 페이지로 이동할 수 있게 해주세요.
   
   삭제 완료 후, 게시판 목록 페이지(boardList.jsp)로 이동해주세요.
 -->
 <!-- 
   1. 게시글 삭제를 처리해주세요.
      > 삭제 성공 후, 상세보기 페이지(boardList.jsp)로 이동해주세요.
      > 삭제 실패 후, 에러 페이지(exceptionBoard_error.jsp)로 이동해주세요.
 -->
 <%   
    BoardRepository boardRepository = BoardRepository.getInstance();
 
    int no = Integer.parseInt(request.getParameter("no"));
    
    boardRepository.deleteBoard(no);
    String msg = "삭제가 완료 되었습니다.";
    
    session.setAttribute("msg", msg);
    response.sendRedirect("ch11_test_boardList.jsp");
 %>