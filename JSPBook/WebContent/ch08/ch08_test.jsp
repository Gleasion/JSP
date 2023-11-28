<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>쉽게 배우는 JSP 웹 프로그래밍</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/feather/feather.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/vertical-layout-light/style.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/images/favicon.png" />
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<body>
	<div class="container-scroller">
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo mr-5" href="${pageContext.request.contextPath }/index.jsp">
					<img src="${pageContext.request.contextPath }/resources/images/logo.svg" class="mr-2" alt="logo" />
				</a>
			</div>
			<div class="navbar-menu-wrapper d-flex align-items-center justify-content-end"></div>
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
									<p class="card-title text-white">8장 유효성검사</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">TEST</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">ch08_test.jsp</p>
									
									<!-- 
										문제 풀어보기
										아래 정규식을 풀어보고 통과 했다면 ch08_test_process.jsp로 전송하여 결과를 출력해주세요. 
										
										정규식 테스트 URL : https://regexr.com
									-->
									<form id="frm" action="./ch08_test_process.jsp" method="post">
										<!-- 예) 12341234 -->
										<h4>숫자만 입력하되, 7-12자리까지만 입력 받을 수 있게 설정해주세요.</h4>
										<input type="text" id="quest1" name="quest1"/>
										<p id="err_quest1"></p>
										<br/>	
										
										<!-- 예) abcAzersdX  -->
										<h4>시작은 영소문자 abc고 영소대문자 8-12자리까지만 입력 받을 수 있게 설정해주세요.</h4>
										<input type="text" id="quest2" name="quest2"/>
										<p id="err_quest2"></p>
										<br/>	
										
										<!-- 예) ddit1234 -->
										<h4>아이디는 영소문자로 시작하고 영소문자,숫자  8~16자로 설정해주세요.</h4>
										<input type="text" id="mem_id" name="mem_id"/>
										<p id="err_id"></p>
										<br/>	
								
										<!-- 예) Ddit1234!@ -->
										<h4>비밀번호는 영대문자로 시작하고 영문 대 소문자, 숫자, 특수문자  8~16자로 설정해주세요.</h4>
										<input type="text" id="mem_pw" name="mem_pw"/>
										<p id="err_pw"></p>
										<br/>
								
										<!-- 예) 대덕 -->
										<h4>이름은 한글 2-5글자로 설정해주세요.</h4>
										<input type="text" id="mem_name" name="mem_name"/>
										<p id="err_name"></p>
										<br/>
										
										<!-- 예) 010-1234-1234 -->
										<h4>
										핸드폰 번호의 첫번째 자리는 011,016,017,019,070,010 으로 시작하고 <br/>
										두번째 자리는 숫자 3자리 또는 숫자 4자리로 시작하고<br/>
										세번째 자리는 숫자 4자리로 설정해주세요.<br/>
										예시) 010-1234-1234, 016-123-1234
										</h4>
										<input type="text" id="mem_phone" name="mem_phone"/>
										<p id="err_phone"></p>
										<br/>
										
										<p id="success"></p>
										
										<input type="submit" id="sendBtn" value="전송"/>
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
$(function(){
	var frm = $("#frm");
	var sendBtn = $("#sendBtn");
	
	sendBtn.on("click", function(){
		// 1번
		var regExpquest1 = /^[0-9]{7,12}$/;
		
		var quest1 = $("#quest1").val();
		
		if(!regExpquest1.test(quest1)){
			alert("숫자 7-12자리까지만 입력가능합니다!");
			return false;
		}
		
		// 2번
		var regExpquest2 = /^(abc)[a-zA-Z]{5,9}$/;
		
		var quest2 = $("#quest2").val();
		
		if(!regExpquest2.test(quest2)){
			alert("첫글자는 영소문자 abc만, 이후 영소대문자 8-12자리까지만 입력 가능합니다!");
			return false;
		}
		
		// 3번
		var regExpmem_id = /^[a-z][a-z0-9]{7,15}$/;
		
		var mem_id = $("#mem_id").val();
		
		if(!regExpmem_id.test(mem_id)){
			alert("아이디는 영소문자로 시작하고 영소문자, 숫자  8~16자로만 입력 가능합니다!");
			return false;
		}
		
		// 4번
		var regExpmem_pw = /^[A-Z][^가-힣]{7,15}$/;
// 		var regExpmem_pw = /^[A-Z][0-9a-zA-Z|~!@#$%^&*]{7,15}/;
		
		var mem_pw = $("#mem_pw").val();
		
		if(!regExpmem_pw.test(mem_pw)){
			alert("비밀번호는 영대문자로 시작하고 영문 대 소문자, 숫자, 특수문자  8~16자로 입력 가능합니다!");
			return false;
		}
		
		// 5번
		var regExpmem_name = /^[가-힣]{2,5}$/;
		
		var mem_name = $("#mem_name").val();
		
		if(!regExpmem_name.test(mem_name)){
			alert("이름은 한글 2-5글자로 입력 가능합니다!");
			return false;
		}
		
		// 6번
		var regExpmem_phone = /^(011|016|017|019|070|010)-\d{3,4}-\d{4}$/;
		
		var mem_phone = $("#mem_phone").val();
		
		if(!regExpmem_phone.test(mem_phone)){
			alert("핸드폰 번호의 첫번째 자리는 011,016,017,019,070,010만, <br/>"
					+ "두번째 자리는 숫자 3자리 또는 숫자 4자리만, <br/>"
					+ "세번째 자리는 숫자 4자리로 입력가능합니다!");
			return false;
		}
		
		frm.submit();
	});

});
</script>
</html>