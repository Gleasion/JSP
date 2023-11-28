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
									<p class="card-title text-white">1장 JSP 개요</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white font-weight-500 mb-0">클라이언트와 서버간에
												통신(요청/응답)을 이해할 수 있다.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">2장 스크립트 태그</p>
									<ul class="icon-data-list">
										<li>
											<div class="d-flex">
												<div>
													<p class="text-primary mb-0">1. 스크립트 태그의 종류</p>
													<p class="mb-0" onclick="clickEvent('${pageContext.request.contextPath}/ch02/scripting.jsp')">- scripting.jsp</p>
													<p class="text-primary mb-0">2. 선언문 태그</p>
													<p class="mb-0" onclick="clickEvent('${pageContext.request.contextPath}/ch02/declaration01.jsp')">- declaration01.jsp</p>
													<p class="mb-0" onclick="clickEvent('${pageContext.request.contextPath}/ch02/declaration02.jsp')">- declaration02.jsp</p>
													<p class="mb-0" onclick="clickEvent('${pageContext.request.contextPath}/ch02/declaration03.jsp')">- declaration03.jsp</p>
													<p class="text-primary mb-0">3. 스크립틀릿 태그</p>
													<p class="mb-0">- scriptlet01.jsp</p>
													<p class="mb-0">- scriptlet02.jsp</p>
													<p class="text-primary mb-0">4. 표현문 태그</p>
													<p class="mb-0">- expression01.jsp</p>
													<p class="mb-0">- expression02.jsp</p>
													<p class="text-primary mb-0">TEST</p>
													<p class="mb-0">- ch02_test.jsp</p>
												</div>
											</div>
										</li>
									</ul>
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
function clickEvent(page) {
	location.href = page;
}
</script>

</html>