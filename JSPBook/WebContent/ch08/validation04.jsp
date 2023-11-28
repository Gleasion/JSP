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
									<p class="card-title">validation04.jsp</p>
									
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
function CheckLogin() {
	var form = document.loginForm;
	
	for(i = 0; i < form.id.value.length; i++){
		var ch = form.id.value.charAt(i);
		
		// 영문 소문자로만 입력 가능하도록 조건절 부여
		if((ch < 'a' || ch > 'z') && (ch > 'A' || ch < 'Z') && (ch > '0' || ch < '9')){
			alert("아이디는 영문 소문자로만 입력 가능합니다.");
			form.id.select();
			return false;
		}
		
		if(isNaN(form.pw.value)){
			alert("비밀번호는 숫자로만 입력 가능합니다.");
			form.pw.select();
			return false;
		}
	}
		
		// 정상적인 데이터 입력시 서버로 submit한다.
		form.submit();
}

$(function(){
	var loginForm2 = $("#loginForm2");
	var loginBtn = $("#loginBtn");
	
	loginBtn.on("click", function(){
		var id = $("#id2").val();
		var pw = $("#pw2").val();
		
		for(var i = 0; i < id.length; i++){
			var ch = id.charAt(i);
			
			if((ch < 'a' || ch > 'z') && (ch > 'A' || ch < 'Z') && (ch > '0' || ch < '9')){
				alert("아이디는 영문 소문자로만 입력 가능합니다.");
				$('id2').focus();
				return false;
			}
		}
			
		// 숫자가 아닌 값을 입력시, true가 반환된다(숫자가 아닌값 입력시)
		if(isNaN(pw)){
			alert("비밀번호는 숫자로만 입력 가능합니다.");
			$('#pw2').focus();
			return false;
		}
		loginForm2.submit();
	});
})

</script>
</html>