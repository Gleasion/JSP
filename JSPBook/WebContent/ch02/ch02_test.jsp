<%@ page language="java" pageEncoding="UTF-8"%>
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
									<p class="card-title text-white">2장 스크립트 태그</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">1. 스크립트 태그의 종류</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">ch02_test.jsp</p>
									<!-- 
										구구단 1-9단까지 출력해주세요.
										짝수 단인 경우에는 빨간색으로 출력해주세요.	
										
										스클립틀릿, 표현문, 선언문 아무거나 이용해서 작성
									 -->
									 <%
									 	String color = "";
									 	out.println("<table border='1px solid'; width='100%'");
									 	for(int i = 1; i < 10; i++){
									 		out.println("<tr>");
									 		for(int j = 1; j < 10; j++){
									 			if(i % 2 == 0){ // 짝수
									 				color = "red";
									 			}else{	// 홀수
									 				color = "black";
									 			}
									 			out.println("<td><font color = '" + color + "'>" + i + "x" + j + "=" +
									 						i*j + "<font><td>");
									 		}
									 		out.println("</tr>");
									 	}
									 	out.println("</table>");
									 %>
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