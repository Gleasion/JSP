<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
<form action="fileupload01_process.jsp" method="post" enctype="multipart/form-data">
	파일: <input type="file" name="filename"/>
	<input type="submit" value="파일전송" />
</form>
</body>
</html>