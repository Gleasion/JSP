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
									<p class="card-title text-white">5장 내장객체</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">2. request 내장 객체</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">request03.jsp</p>
									
									<table border="1" width="100%">
										<tr>
											<td width="20%">클라이언트 IP</td>
											<td width="20%"><%=request.getRemoteAddr() %></td>
											<td width="60%">웹 브라우저의 IP 주소를 가져옵니다.</td>
										</tr>
										<tr>
											<td>요청 정보 길이</td>
											<td><%=request.getContentLength() %></td>
											<td>웹 브라우저의 요청 파라미터 길이를 가져옵니다.</td>
										</tr>
										<tr>
											<td>요청 정보 인코딩</td>
											<td><%=request.getCharacterEncoding() %></td>
											<td>웹 브라우저의 문자 인코딩을 가져옵니다.</td>
										</tr>
										<tr>
											<td>요청 정보 컨텐츠 유형</td>
											<td><%=request.getContentType() %></td>
											<td>웹 브라우저의 컨텐츠 유형을 가져옵니다.</td>
										</tr>
										<tr>
											<td>요청 정보 프로토콜</td>
											<td><%=request.getProtocol() %></td>
											<td>웹 브라우저의 요청 프로토콜을 가져옵니다.</td>
										</tr>
										<tr>
											<td>요청 정보 전송 방식</td>
											<td><%=request.getMethod() %></td>
											<td>웹 브라우저의 HTTP 요청 메소드(GET, POST)를 가져옵니다.</td>
										</tr>
										<tr>
											<td>요청 URI</td>
											<td><%=request.getRequestURI() %></td>
											<td>웹 브라우저가 요청한 URI 경로를 가져옵니다.</td>
										</tr>
										<tr>
											<td>컨텍스트 경로</td>
											<td><%=request.getContextPath() %></td>
											<td>현재 JSP 페이지의 웹 애플리케이션 컨텍스트 경로를 가져옵니다.</td>
										</tr>
										<tr>
											<td>서버 이름</td>
											<td><%=request.getServerName() %></td>
											<td>서버 이름을 가져옵니다.</td>
										</tr>
										<tr>
											<td>서버 포트</td>
											<td><%=request.getServerPort() %></td>
											<td>실행중인 서버 포트 번호를 가져옵니다.</td>
										</tr>
										<tr>
											<td>쿼리문</td>
											<td><%=request.getQueryString() %></td>
											<td>웹 브라우저의 전체 요청 파라미터 문자열[물음표(?) 다음 URL에 할당된 문자열]을 가져옵니다.</td>
										</tr>
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