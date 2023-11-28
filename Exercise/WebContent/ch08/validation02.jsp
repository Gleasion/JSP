<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<body>
<form action="validation02_process.jsp" method="post" name="loginForm">
	아이디 : <input type="text" name="id" id="id"><br/>
	비밀번호 : <input type="text" name="pw1" id="pw1"><br/>
	비밀번호 확인 : <input type="text" name="pw2" id="pw2"><br/>
	<p id="errorMsg"></p>
	<input type="button" value="전송" onclick="CheckLogin()">
</form>
</body>
<script type="text/javascript">
function CheckLogin(){
	var form = document.loginForm;
	var id = $("#id").val();
	var pw1 = $("#pw1").val();
	var pw2 = $("#pw2").val();
	var errorMsg = document.getElementById("errorMsg");
	
	if(/([0-9a-zA-Z])\1{2,}/.test(id) || /([0-9a-zA-Z])\1{2,}/.test(pw1)){
		alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
		return false;
	}
	
	if(pw1 != "" && pw1 == pw2){
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