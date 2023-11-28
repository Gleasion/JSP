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
									<p class="card-title">form06.jsp</p>
									
									<form action="form06_process.jsp" name="member" method="post">
										아이디: <input type="text" name="id"/><input type="button" value="중복확인"/><br/>
										비밀번호: <input type="text" name="pw"/><br/>
										이름: <input type="text" name="name"/><br/>
										연락처: 
											<select name="phone1">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="019">019</option>
											</select> -
											<input type="text" name="phone2" maxlength="4" size="4"/> -
											<input type="text" name="phone3" maxlength="4" size="4"/><br/>
										성별: <input type="radio" name="gender" value="남성" checked="checked"/>남성
											<input type="radio" name="gender" value="여성"/>여성<br/>
										취미: <input type="checkbox" name="hobby" value="독서"/>독서
											<input type="checkbox" name="hobby" value="운동"/>운동
											<input type="checkbox" name="hobby" value="영화"/>영화<br/>
										자기소개: <textarea rows="3" cols="30" name="introduction" 
												placeholder="가입인사를 입력해주세요." wrap="hard"></textarea><br/>
										<input type="submit" value="가입하기"/>
										<input type="reset" value="다시쓰기"/><br/>
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
</html>