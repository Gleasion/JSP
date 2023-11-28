<%@ page language="java" pageEncoding="UTF-8" errorPage="page_errorPage_error.jsp"%>
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
									<p class="card-title text-white">3장 디렉티브 태그</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">2. page 디렉티브 태그</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">page_errorPage.jsp</p>
									<%
										/*
										 부트스트랩을 이용한 브라우저 에러가 발생하는 경우가 있다.
										서버에러로 인한 500코드, NullPointException이 발생하여 브라우저 화면상에서의 500에러
										페이지가 나타나야하지만, out.println(str.toString()); 에서 발생한 에러를 브라우저에서
										제대로된 소스로 인식하지 않고 완전하지 않은 소스라고 분류하여 에러가 난 시점에서 브라우저상의 화면
										그리기를 멈추고 아래와 같은 에러를 발생시킬 수 있다.
										
										"to load resource : net::ERR_IMCOMPLETE_CHUNKED_ENCODING"
										- 여러가지 상황에 의해서 발생할 수 있는 에러지만, 페이지를 그려낼 때 완전하지 못한
										소스가 존재할 경우 발생한다.
										
										[에러 해결 방법]
										- 현재의 레이아웃 형태를 점검한다.(include되는 레이아웃의 구조가 이상이 있는지 확인)
										- 브라우저 설정 확인 및 변경
										(브라우저의 정책이 강화되고 있어 프론트 영역의 에러를 잡는데 제약이 많아지고 있다...)
										*/
										String str = null;
										out.println(str.toString());
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