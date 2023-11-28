<%@page import="java.util.Enumeration"%>
<%@ page language="java" pageEncoding="UTF-8"%>
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
									<p class="card-title text-white">6장 폼 태그</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">3. input 태크</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">form06_process.jsp</p>
									
									<table>
										<tr>
											<th>요청 파라미터 이름</th>
											<th>요펑 파라미터 값</th>
										</tr>
										<%
											request.setCharacterEncoding("UTF-8");
											
											// getParameterNames()
											// 모든 입력 양식의 요청 파라미터 이름을 순서에 상관없이 Enumeration(열거형) 형태로 전달받음
											Enumeration paramNames = request.getParameterNames();
											
											// hasMoreElements()
											// Enumeration(열거형) 요소가 있으면 true를 반환하고, 그렇지 않으면 false를 반환함
											// 전송된 요청 파라미터가 없을때까지 반복
											while(paramNames.hasMoreElements()){
												// nextElement() : Enumeration(열거형) 요소를 반환함
												// 폼 페이지에서 전송된 요청 파라미터 이름을 가져옴
												String name = (String)paramNames.nextElement();
												out.print("<tr><td>" + name + "</td>\n");
												
												// 폼 페이지에서 전송된 요청 파라미터 값을 얻어옴
												String paramValue = request.getParameter(name);
												out.println("<td>" + paramValue + "</td></<tr>\n");
											}
										%>
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
</html>