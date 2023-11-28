<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<body>
<form action="validation03_process.jsp" method="post" name="loginForm">
	아이디 : <input type="text" name="id" id="id" /><br/>
	비밀번호: <input type="text" name="pw" id="pw" /><br/>
	비밀번호 확인 : <input type="text" name="pw2" id="pw2" /><br/>
	<p id="errorMsg"></p>
	<input type="button" value="전송" onclick="CheckLogin()">
</form>
</body>
<script type="text/javascript">
function CheckLogin() {
	var form = document.loginForm;
	var id = form.id.value;
	var pw = form.pw.value;
	var pw2 = form.pw2.value;
	
	var regExpId = /^[a-zA-Z][0-9a-zA-Z]$/;
	var regExpPw = /^(?=.*[a-zA-Z]{1,})(?=.*[!@#$%^*+=-]{1,})(?=.*[0-9]{1,}).{8,}$/;

	if(id != "" || !regExpId.test(id)){
		alert("아이디는 영문,숫자만 입력 가능합니다.");
		form.id.focus();
		return false;
	}
	
	if(pw != "" || !regExpPw.test(id)){
		alert("비밀번호는 영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
		form.id.focus();
		return false;
	}else{}
	
	if(pw1 == pw2){
		errorMsg.innerText = "비밀번호가 일치합니다.";
		errorMsg.style.color = "green";
	}else{
		errorMsg.innerText = "비밀번호가 일치하지 않습니다.";
		errorMsg.style.color = "red";
		form.pw2.focus();
		return false;
	}
	form.submit();
}
</script>
</html>