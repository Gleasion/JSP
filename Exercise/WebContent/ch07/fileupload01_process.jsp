<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
	String fileUploadPath = "C:\\upload";

	File file = new File(fileUploadPath);
	if (!file.exists()) { // 설정한 경로에 폴더가 없으면
		file.mkdirs(); // 폴더 생성
	}

	DiskFileUpload upload = new DiskFileUpload();
	List items = upload.parseRequest(request);
	Iterator iter = items.iterator();

	while (iter.hasNext()) {
		FileItem fileItem = (FileItem) iter.next();

		if (!fileItem.isFormField()) {
			String fileName = fileItem.getName(); // 파일명
	%>
	<h3>
		요청 파라미터 이름:
		<%=fileItem.getFieldName()%></h3>
	<h3>
		실제 파일 이름:
		<%=fileName%></h3>
	<h3>
		저장 파일 이름:
		<%=fileItem.getName()%></h3>
	<h3>
		파일 콘텐츠 유형:
		<%=fileItem.getContentType()%></h3>
	<h3>
		파일 크기:
		<%=fileItem.getSize()%></h3>
	<%
	File file1 = new File(fileUploadPath + "/" + fileName);
	fileItem.write(file1); // 파일복사
	}
	}
	%>


</body>
</html>