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
									<p class="card-title">form04_process.jsp</p>
									
									<%
										request.setCharacterEncoding("UTF-8");
										
										String id = request.getParameter("id");
										String pw = request.getParameter("pw");
										String name = request.getParameter("name");
										String phone1 = request.getParameter("phone1");
										String phone2 = request.getParameter("phone2");
										String phone3 = request.getParameter("phone3");
										String gender = request.getParameter("gender");
										String hobby1 = request.getParameter("hobby1");
										String hobby2 = request.getParameter("hobby2");
										String hobby3 = request.getParameter("hobby3");
										String introduction = request.getParameter("introduction");
									%>
									<p>아이디: <%=id %></p>
									<p>비밀번호: <%=pw %></p>
									<p>이름: <%=name %></p>
									<p>연락처: <%=phone1 %> - <%=phone2 %> - <%=phone3 %></p>
									<p>성별: <%=gender %></p>
									<p>취미: <%=hobby1 %> <%=hobby2 %> <%=hobby3 %></p>
									<p style="white-space: pre-wrap;">자기소개: <%=introduction %></p>
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