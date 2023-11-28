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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
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
									<p class="card-title text-white">8장 유효성 검사</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">1. 유효성 검사의 개요</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">validation01.jsp</p>
									
									<h3>Javascript 버전</h3>
									<form name="loginForm" method="post" >
										아이디: <input type="text" name="id" /><br/>
										비밀번호: <input type="text" name="pw" /><br/>
										<input type="button" value="전송" onclick="CheckForm()" />
									</form>
									
									<h3>jQuery 버전</h3>
									<form method="post" id="loginForm2">
										아이디: <input type="text" name="id" id="id2"/><br/>
										비밀번호: <input type="text" name="pw" id="pw2" /><br/>
										<input type="button" value="전송" id="sendBtn"/>
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
<script type="text/javascript">
// 자바스크립트 onclick 이벤트 활용
function CheckForm() {
	alert("아이디 : " + document.loginForm.id.value + "\n" + 
			"비밀번호 : " + document.loginForm.pw.value);
}

$(function() {
	var sendBtn = $("#sendBtn");
	var loginForm2 = $("#loginForm2");
	// 방법1
	// Button Element를 이용한 submit 처리
	sendBtn.on("click", function(){
		alert("아이디 : " + $("#id2").val() + "\n" +
				"비밀번호 : " + $("#pw2").val());
		// submit 이벤트 실행
		// loginForm2.submit();
	
	});
	
	// 방법 2
	// form element를 이용한 submit 처리
	loginForm2.submit(function(){
		console.log("Submit Event...!");
		
		alert("아이디 : " + $("#id2").val() + "\n" +
			"비밀번호 : " + $("#pw2").val());
		
		// 데이터 누락 또는 잘못 입력 데이터가 필터에 걸렸을 경우,
		// return false로 submit 이벤트를 막는다.
	
	});
	
	// 방법 3
	// Button Element + function을 이용한 submit 처리
	sendBtn.on("click", CheckFormjQuery);
	
	function CheckFormjQuery(){
		alert("아이디 : " + $("#id2").val() + "\n" +
				"비밀번호 : " + $("#pw2").val());
			
	}
});
</script>
</html>