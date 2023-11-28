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
									<p class="card-title">ch11_test_boardForm.jsp</p>
									
									<%
									    String remoteUser = request.getRemoteUser();
									    boolean isAdmin = request.isUserInRole("admin");
									    // 사용자 정보를 세션에 저장
									    session.setAttribute("remoteUser", remoteUser);
									    session.setAttribute("isAdmin", isAdmin);
									%>
									
									<!-- 
										1. 게시판 등록 페이지를 작성해주세요.
										
										[출력 예]
										
										게시글 등록
										─────────────────────────────
										제목 : 
										작성자 : 
										내용 :
										─────────────────────────────
										첨부파일 : [파일 선택 ]
										─────────────────────────────
										[ 등록  ] [ 목록  ]
										
										2. 등록 버튼 클릭 시, 게시글 등록(boardInsert.jsp)을 진행해주세요.
										3. 목록 버튼 클릭 시, 게시판 목록 페이지(boardList.jsp)로 이동해주세요
									
									 -->
								 	<h3>게시글 등록</h3>
								 	<hr/>
								 	<form action="ch11_test_boardInsert.jsp" id="test" method="post" enctype="multipart/form-data">
									 	<div>
									 		<dl>
												<dt>제목</dt>
												<dd>
													<input type="text" placeholder="제목 입력" name="title" required>
												</dd>
											</dl>
										</div>
										<div class="cont">
									 		<dl>
												<dt>내용</dt>
												<dd>
													<textarea placeholder="내용 입력" name="content" required></textarea>
												</dd>
											</dl>
										</div>
										<div class="file">
											<dl>
										 	<hr/>
										 	<h5>jpg파일만 넣어주세요...</h5>
												<input type="file" name="file" placeholder="첨부파일" required>
											</dl>
									 	</div>
									 	<hr/>
										<input type="submit" value="등록">
										<input type="button" value="목록" onclick="location.href='ch11_test_boardList.jsp'">
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
<script type="text/javascript">

</script>
</html>