<%@page import="vo.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BoardRepository"%>
<%@ page language="java" pageEncoding="UTF-8" errorPage="ch11_test_exceptionBoard_error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>쉽게 배우는 JSP 웹 프로그래밍</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/feather/feather.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/vertical-layout-light/style.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/images/favicon.png" />
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<body>
   <div class="container-scroller">
      <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
         <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
            <a class="navbar-brand brand-logo mr-5" href="${pageContext.request.contextPath }/index.jsp">
               <img src="${pageContext.request.contextPath }/resources/images/logo.svg" class="mr-2" alt="logo" />
            </a>
         </div>
         <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end"></div>
      </nav>
      <div class="container-fluid page-body-wrapper">
         <div class="container-fluid">
            <div class="content-wrapper">
               <div class="row">
                  <div class="col-md-12 grid-margin">
                     <div class="row">
                        <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                           <h3 class="font-weight-bold">쉽게 배우는 JSP 웹 프로그래밍</h3>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-2 stretch-card grid-margin">
                     <div class="card data-icon-card-primary">
                        <div class="card-body">
                           <p class="card-title text-white">11장 예외처리</p>
                           <div class="row">
                              <div class="col-12 text-white">
                                 <p class="text-white">TEST</p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-10 stretch-card grid-margin">
                     <div class="card">
                        <div class="card-body">
                           <p class="card-title">ch11_test_boardView.jsp</p>
                           
                           <!--
                              1. 게시글 상세보기를 출력해주세요.
                                 > JSTL을 활용해주세요. 
                              
                              [출력 예]
                              
                              게시판 상세보기
                              ──────────────────────────────────────────────
                              제목 : 
                              작성자 작성일 조회수
                              ──────────────────────────────────────────────
                              내용
                              ──────────────────────────────────────────────
                              
                              [ 수정  ] [ 삭제  ] [ 목록  ]
                              
                              2. 수정 버튼 클릭 시, 수정 페이지(boardUpdateForm.jsp)로 이동합니다.
                              3. 삭제 버튼 클릭 시, 해당 게시글이 삭제 처리 될 수 있도록 합니다.
                                 > "정말로 삭제하시겠습니까?" 알림창이 나타나고, [확인]버튼을 클릭 시 삭제가 처리(boardRemove.jsp) 될 수 있도록 해주세요.
                                 > "정말로 삭제하시겠습니까?" 알림창이 나타나고, [취소]버튼을 클릭 시 알림창이 꺼질 수 있게 해주세요.
                              4. 목록 버튼 클릭 시, 목록 페이지(boardList.jsp)로 이동합니다.
                            -->
                            <%
                              request.setCharacterEncoding("UTF-8");
                              
                               int no = Integer.parseInt(request.getParameter("no"));   
                            
                              BoardRepository boardDAO = BoardRepository.getInstance();
                              BoardVO boardVO = boardDAO.getBoardById(no);
                              
                           %>
                           <h3>게시판 상세보기</h3>
                           <table border="1">
                              <th>제목</th>
                                 <c:set value="<%=boardVO %>" var="boardDetail"/>
                              <th colspan="2"><c:out value="${boardDetail.title }"/></th>
                              <tr>
                                 <td colspan="2"><c:out value="${boardDetail.writer }   ${boardDetail.regDate }   ${boardDetail.hit }"/></td>
                              </tr>
                              <tr>
                                 <td colspan="3"><c:out value="${boardDetail.content }"/></td>
                              </tr>
                              <tr>
                                 <td>첨부파일</td>
                                 <td><c:out value="${boardDetail.fileVO.fileName }"/></td>
                              </tr>
                              <tr><td colspan="2">
                                 <input type="button" value="수정" onclick="location.href='ch11_test_boardUpdateForm.jsp?no=<%=no %>'">
                                 <input type="button" value="삭제" onclick="next()">
                                 <input type="button" value="목록" onclick="location.href='ch11_test_boardList.jsp'">
                              </td></tr>
                           </table>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</body>
<script>
function next() {
	if(confirm("정말 삭제하시겠습니까?")){
		location.href="ch11_test_boardRemove.jsp?no=<%=no %>"
	}
}
</script>
</html>