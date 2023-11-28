<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
<%
	String path = "C:\\upload";

	File file = new File(path);
	if(!file.exists()){
		file.mkdirs();
	}
	
	DiskFileUpload upload = new DiskFileUpload();
	List items = upload.parseRequest(request);
	Iterator params = items.iterator();
	
	while(params.hasNext()){
		FileItem item = (FileItem) params.next();
		
		out.print("요청 파라미터 이름: " + item.getFieldName() + "<br/>");
		out.print("저장 파일 이름: " + item.getName() + "<br/>");
		out.print("저장 컨텐츠 타입: " + item.getContentType() + "<br/>");
		out.print("파일 크기: " + item.getSize() + "<br/>");
	}
%>
</body>
</html>