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
											<p class="text-white">3. 데이터 형식 유효성 검사</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">validation05.jsp</p>
									
									<h3>회원가입</h3>
									<form action="validation05_process.jsp" name="member" method="post">
										아이디: <input type="text" name="id"/><br/>
										비밀번호: <input type="text" name="pw" /><br/>
										이름: <input type="text" name="name" /><br/>
										연락처: 
										<select name="phone1">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="019">019</option>
										</select> -
										<input type="text" name="phone2" size="4" maxlength="4"/> -
										<input type="text" name="phone3" size="4" maxlength="4"/>
										<br/>
										이메일 : <input type="text" name="email"/><br/>
										<input type="button" value="가입하기" onclick="CheckMember()"/>
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
function CheckMember() {
	// 아이디는 영문 대문자와 소문자, 한글, 한글의 자음과 모음만 검사하도록 정규 표현식 작성
	var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]+$/;
	
	// 비밀번호는 숫자만 검사하도록 정규 표현식을 작성
	var regExpPasswd = /^[0-9]*$/;
	
	// 이름은 한글만 검사하도록 정규 표현식 작성
	var regExpName = /^[가-힣]*$/;
	
	// 전화번호는 전화번호 형태(숫자)인지 검사하도록 정규 표현식 작성
	var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
	
	// 이메일은 이메일 형식인지 검사하도록 하고 정규 표현식 작성
	// 처음 시작이 숫자, 영소대문자이고 특수분자 -_/. 나올 수도 있고 안나올 수도 있고 그 다음에 숫자, 영소대문자가 0개 이상이 나온다.
	// @ 이메일 형식과 같은 내용으로 이어서 작성
	// \. 은 특수문자 . 을 표현하기 위해 이스케이프로 . 이 반드시 나와야하고 영소대문자 2~3자리가 끝에 나온다.
	var regExpEmail = /^[0-9a-zA-Z]([-_/.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_/.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

	var form = document.member;
	
	var id = form.id.value;
	var pw = form.pw.value;
	var name = form.name.value;
	var phone = form.phone1.value + "-" + form.phone2.value +  "-" + form.phone3.value;
	var email = form.email.value;

	// 아이디 정규식 필터
	if(!regExpId.test(id)){
		alert("아이디는 영문 대문자와 소문자, 한글, 한글의 자음과 모음만 입력 가능합니다!");
		form.id.select();
		return false;
	}
	
	if(!regExpPasswd.test(pw)){
		alert("비밀번호는 숫자만 입력 가능합니다!");
		form.pw.select();
		return false;
	}
	
	if(!regExpName.test(name)){
		alert("이름은 한글만 입력 가능합니다!");
		form.name.select();
		return false;
	}
	
	if(!regExpPhone.test(phone)){
		alert("핸드폰번호는 연락처 형식에 맞춰 입력해주세요!");
		return false;
	}
	
	if(!regExpEmail.test(email)){
		alert("이메일은 이메일 형식에 맞춰 입력해주세요!");
		return false;
	}
	
	form.submit();
}


</script>
</html>