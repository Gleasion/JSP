<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
									<p class="card-title text-white">7장 파일업로드</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">3. Commons-FileUpload를 이용한 파일 업로드</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">ch07_test_signin.jsp</p>
									
									<%
									    String check = (String) request.getAttribute("check");
								    	System.out.print(">>>>>>>>>>" + check);
										if(check != null){
									    	if (check.equals("0")) {
									%>
										<script type="text/javascript">
										    alert("존재하지 않는 회원입니다.");    
										</script>
									<%
										    }
										}
									%>
															
									<!-- 
										1. 아이디, 비밀번호, 로그인 버튼을 이용하여 ch07_test_process.jsp로 이동하여 로그인 처리를 진행하세요.
										2. 로그인 시, 등록된 회원이 존재하지 않는 경우 '존재하지 않는 회원입니다.' 메세지가 출력되게 해주세요
										3. 회원가입 버튼을 생성하고, 회원 가입 버튼을 클릭 시 회원 가입 페이지로 이동합니다.
									 -->
									 	<form action="ch07_test_signin_process.jsp" method="post">
									 		아이디: <input type="text" name="mem_id" /><br/>
									 		비밀번호: <input type="text" name="mem_pw" /><br/>
									 		<input type="submit" value="로그인">
									 	</form>
									 	<br/><br/><br/>
									
									<a href="ch07_test_signup.jsp" >회원가입</a>									
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