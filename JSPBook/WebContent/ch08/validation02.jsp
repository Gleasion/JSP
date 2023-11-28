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
											<p class="text-white">1. 기본 유효성 검사</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">validation02.jsp</p>
									
									<h3>Javascript 버전</h3>
									<form action="validation02_process.jsp" name="loginForm" method="post" >
										아이디: <input type="text" name="id" /><br/>
										비밀번호: <input type="text" name="pw" /><br/>
										<input type="button" value="전송" onclick="CheckLogin()" />
									</form>
									
									<h3>jQuery 버전</h3>
									<form action="validation02_process.jsp" method="post" id="loginForm2">
										아이디: <input type="text" name="id2" id="id2"/><br/>
										비밀번호: <input type="text" name="pw2" id="pw2" /><br/>
										<input type="button" value="전송" id="loginBtn"/>
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
function CheckLogin() {
	var form = document.loginForm;
	
	// 아이디가 입력되었는지 검사한다.
	// 아이디가 입력되지 않으면 오류 메세지를 출력하고 해당 입력 항목에 커서가 놓인다.
	if(form.id.value == ""){
		alert("아이디를 입력해주세요.");
		form.id.focus();
		return false;
	}
	
	// 비밀번호가 입력되었는지 검사한다.
	// 비밀번호가 입력되지 않으면 오류 메세지를 출력하고 해당 입력 항목에 커서가 놓인다.
	if(form.pw.value == ""){
		alert("비밀번호를 입력해주세요.");
		form.pw.focus();
		return false;
	}
	
	// 폼 페이지에서 입력한 데이터 값을 서버로 전송한다.
	form.submit();
}

$(function(){
	var loginBtn = $("#loginBtn");
	var loginForm2 = $("#loginForm2");
	
	loginBtn.on("click", function(){
		var id = $("#id2").val();
		var pw = $("#pw2").val();
		
		if(id == null || id == ""){
			alert("아이디를 입력해주세요.");
			$("#id2").focus();
			return false;
		}
		
		if(pw == null || pw == ""){
			alert("비밀번호를 입력해주세요.");
			$("#pw2").focus();
			return false;
		}
		
		loginForm2.submit();
		
	});
});

</script>
</html>