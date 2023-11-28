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
									<p class="card-title">scriptlet01.jsp</p>
									
									<%
										// 스크립틀릿 태그는 자바 코드로 이루어진 로직 부분을 표현하며
										// out 객체를 사용하지 않고도 쉽게 HTML 응답을 만들어 낼 수 있다.
										// 스클립틀릿 태그는 가장 일반적으로 사용 되면 변수 또는 메소드 선언, 유효식 등 다수를 포함할 수 있다.
										
										// 지역변수 a,b에 값을 저장하도록 스클립틀릿 태그를 작성함
										int a = 2;
										int b = 3;
										int sum = a + b;
										out.println("a(2) + b(3) = " + sum);
									%>
									<br/>
									<%
										// 지역변수 a,b를 각각 1씩 증가함
										a++;
										b++;
										sum = a + b;
										out.println("a(3) + b(4) = " + sum);
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