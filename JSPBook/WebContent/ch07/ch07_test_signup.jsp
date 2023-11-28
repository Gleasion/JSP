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
									<p class="card-title">ch07_test_signup.jsp</p>
									
									<!-- 
										1. 아이디, 비밀번호, 이름, 성별, 프로필 이미지를 입력받고 회원가입을 진행해주세요.
										2. 회원가입 진행 경로: ch07_test_signup_process.jsp로 이동하여 회원가입을 완료해주세요.
										3. 뒤로가기 버튼을 생성하고, 뒤로가기 버튼을 클릭 시 다시 로그인 화면으로 나갈 수 있도록 해주세요.
									 -->
									
									<form action="ch07_test_signup_process.jsp" method="post" enctype="multipart/form-data">
										아이디: <input type="text" name="mem_id" /><br/>
										비밀번호: <input type="text" name="mem_pw" /><br/>
										이름: <input type="text" name="mem_name" /><br/>
										성별: <input type="radio" name="mem_sex" />남
										<input type="radio" name="mem_sex" />여<br>
										프로필 이미지: <input type="file" name="filename" /><br/>
										<input type="submit" value="회원가입하기" />
									</form>
									<input type="button" value="뒤로가기" onclick="history.back()">
									
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