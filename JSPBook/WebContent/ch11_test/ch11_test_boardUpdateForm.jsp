<%@page import="dao.BoardRepository"%>
<%@page import="vo.BoardVO"%>
<%@page import="vo.BoardFileVO"%>
<%@ page language="java" pageEncoding="UTF-8"  errorPage="ch11_test_exceptionBoard_error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>쉽게 배우는 JSP 웹 프로그래밍</title>
<link rel="stylesheet"
   href="${pageContext.request.contextPath }/resources/vendors/feather/feather.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath }/resources/css/vertical-layout-light/style.css">
<link rel="shortcut icon"
   href="${pageContext.request.contextPath }/resources/images/favicon.png" />
</head>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<body>
   <div class="container-scroller">
      <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
         <div
            class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
            <a class="navbar-brand brand-logo mr-5"
               href="${pageContext.request.contextPath }/index.jsp"> <img
               src="${pageContext.request.contextPath }/resources/images/logo.svg"
               class="mr-2" alt="logo" />
            </a>
         </div>
         <div
            class="navbar-menu-wrapper d-flex align-items-center justify-content-end"></div>
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
                           <p class="card-title">ch11_test_boardUpdateForm.jsp</p>

                           <!-- 
                              1. 게시판 수정 페이지를 작성해주세요.
                              
                              [출력 예]
                              
                              게시글 등록
                              ─────────────────────────────
                              제목 : 제목입니다1
                              작성자 : 홍길동
                              내용 : 내용입니다1
                              ─────────────────────────────
                              [ 수정  ] [ 목록 ]
                              
                              2. 수정 버튼 클릭 시, 게시글 수정(boardUpdate.jsp)을 진행해주세요.
                              3. 목록 버튼 클릭 시, 목록 페이지(boardList.jsp)로 이동해주세요. 
                            -->
                            
                            <%
                                  String strNo = request.getParameter("no");
                                  int no = Integer.parseInt(strNo);
                                  BoardRepository boardDao = BoardRepository.getInstance();
                                  BoardVO boardVO = boardDao.getBoardById(no);
                            
                            %>
                           <h3>게시판 수정</h3>
                           <form action="ch11_test_boardUpdate.jsp" method="post" enctype="multipart/form-data" >
                              <input type="hidden" name="no" value="<%=boardVO.getNo()%>">
                              <input type="hidden" name="fileVO" value="<%=boardVO.getFileVO()%>">
                              <table border="1">
                                 <tr>
                                    <td>제목</td>
                                    <td><input type="text" name="title" value="<%=boardVO.getTitle()%>"></td>
                                 </tr>
                                 <tr>
                                    <td>내용</td>
                                    <td style="padding-right: 50px;"> <textarea rows="10" cols="30" name="content"><%=boardVO.getContent()%></textarea> </td>
                                 </tr>
                                 <tr>
                                    <td>파일</td>
                                    <td> <input type="file" name="fileName"> </td>
                                 </tr>
                                 <tr>
                                    <td>첨부파일 내용</td>
                                    <td> <%=boardVO.getFileVO().getFileName() %> </td>
                                 </tr>
                                 <tr>
                                    <td colspan="2"><input type="submit" value="수정"> <input type="button" value="취소" onclick="location.href='ch11_test_boardList.jsp'"> </td>    
                                 </tr>
                              </table>
                           </form>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</body>
</html>