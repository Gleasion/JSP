<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<body>
<form action="validation03_process.jsp" method="post" name="form">
	아이디 : <input type="text" name="id" id="id" /><br/>
	비밀번호: <input type="text" name="pw" id="pw" /><br/>
	비밀번호 확인 : <input type="text" name="pw_re" id="pw_re" /><br/>
	<input type="button" value="전송" onclick="CheckPasswd()">
</form>
</body>
<script type="text/javascript">
function CheckPasswd() {
	var id = document.getElementById("id").value;
	var pw = document.getElementById("pw").value;
	var pw_re = document.getElementById("pw_re").value;
	
	pw_passwd = false;
	
	var patt1 = /[0-9]/;
	var patt2 = /[a-zA-Z]/;
	var patt3 = /[~!@#$%<>^&*)]/;
	
	var pw_msg = "";
	
	if(id.length == 0){
		alert("아이디를 입력해주세요.");
		return false;
	}
	
	if(pw.length == 0){
		alert("비밀번호를 입력해주세요.");
		return false;
	}else{
		if(pw != pw_re){
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}	
	}
	
	if(!patt1.test(pw) || !patt2.test(pw) || !patt3.test(pw) ||
			pw.length < 8 || pw.length > 50){
		alert("비밀번호는 영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
		return false;
	}
	
	document.form.submit();
}
</script>
</html>