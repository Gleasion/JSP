<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Security</title>
</head>
<body>
<form action="j_security_check" method="post" name="loginForm">
	사용자명 : <input type="text" name="j_username" /><br/>
	비밀번호 : <input type="text" name="j_password" /><br/>
	<input type="submit" value="전송">
</form>
</body>
</html>