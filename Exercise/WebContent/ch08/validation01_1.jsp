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
<form action="validation01_process.jsp" name="form" method="post">
	아이디 : <input type="text" name="id" id="id"/><br/>
	비밀번호 : <input type="text" name="pw" id="pw"/><br/>
	<input type="button" value="전송" onclick="CheckPw()">
</form>
</body>
<script type="text/javascript">
function CheckPw(){
	
	var id = document.getElementById("id").value;
	var pw = document.getElementById("pw").value;
	
	if(id.length == 0){
		alert("아이디를 입력해주세요.");
		return false;
	}
	
	if(pw.length == 0){
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	
	if(pw.indexOf(id) > -1){
		alert("비밀번호는 ID를 포함할 수 없습니다.");
		return false;
	}
	
	document.form.submit();
}
</script>
</html>