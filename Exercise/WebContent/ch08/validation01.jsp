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
<form action="validation01_process.jsp" name="loginForm" method="post">
	아이디 : <input type="text" name="id" id="id"/><br/>
	비밀번호 : <input type="text" name="pw" id="pw"/><br/>
	<input type="button" value="전송" onclick="CheckLogin()">
</form>
</body>
<script type="text/javascript">
function CheckLogin(){
	var form = document.loginForm;
	
	if(form.id.value == ""){
		alert("아이디를 입력해주세요.");
		form.id.focus();
		return false;
	}
	
	if(form.pw.value == ""){
		alert("비밀번호를 입력해주세요.");
		form.pw.focus();
		return false;
	}
	
	if(form.pw.value.search(form.id.value) > -1){
		alert("비밀번호는 ID를 포함할 수 없습니다.");
		form.pw.focus();
		return false;
	}
	
	form.submit();
}
</script>
</html>