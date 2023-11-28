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
									<p class="card-title">form03.jsp</p>
									
									<form action="" name="member" method="post">
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
										취미: <input type="checkbox" name="hobby1"/>독서
											<input type="checkbox" name="hobby1"/>운동
											<input type="checkbox" name="hobby1"/>영화<br/>
										<!-- 
											textarea wrap 속성
											wrap = "off" : 줄바꿈 안함
											wrap = "soft" : 자동 줄바꿈
											wrap = "hard" : 서버 전송 시 캐리지 리턴 문자를 전달
											
											해당 속성은 html5에서 새롭게 추가된 기능으로,
											wrap = "hard" 속성을 사용시, cols 속성이 꼭 명시되어 있어야하는 전제족너이 있다,
											
											wrap 속성의 hard 설정시, textarea 설정 크기 안에서 Enter를 치지 않고 텍스트를 입력해 나갈때,
											textarea 가로 길이 오른쪽 맨 끝에 다다를때 자동으로 아래줄로 넘어가 작성이 되는데
											Enter를 직접 치지는 않았지만 아래줄로 내려가 작성되기 때문에 아래줄로 내려간 그 시점에
											개행 문자가 부여될 수 있게 해줍시다.
										 -->
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