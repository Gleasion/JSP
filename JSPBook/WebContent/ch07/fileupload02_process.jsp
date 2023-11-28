<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>쉽게 배우는 JSP 웹 프로그래밍</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/feather/feather.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/vertical-layout-light/style.css">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/resources/images/favicon.png" />
</head>
<body>
	<div class="container-scroller">
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div
				class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo mr-5"
					href="${pageContext.request.contextPath }/index.jsp"> <img
					src="${pageContext.request.contextPath }/resources/images/logo.svg"
					class="mr-2" alt="logo" />
				</a>
			</div>
			<div
				class="navbar-menu-wrapper d-flex align-items-center justify-content-end"></div>
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
									<p class="card-title text-white">7장 파일업로드</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">3. Commons-FileUpload를 이용한 파일 업로드</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">fileupload02_process.jsp</p>
									
									<%
										String path = "C:\\upload";
									
										File file = new File(path);
										if(!file.exists()){
											file.mkdirs();
										}
										
										DiskFileUpload upload = new DiskFileUpload();
										upload.setSizeMax(5 * 1024 * 1024);	// 업로드할 파일의 최대 크기(byte) //5MB
										upload.setSizeThreshold(4096);	// 메모리상에 저장할 최대 크기(byte)
										upload.setRepositoryPath(path);	// 업로드된 파일을 임시로 저장할 경로
										
										List items = upload.parseRequest(request); 
										Iterator params = items.iterator();
										
										int maxSize = 4 * 1024 * 1024;	// 파일 업로드시 1개의 파일 당 사이즈(최대사이즈)
										while(params.hasNext()){
											FileItem item = (FileItem) params.next();
											
											if(item.isFormField()){ // 폼페이지에 전송된 요청 파라미터가 일반 데이터라면
												String name = item.getFieldName();	// 파라미터의 이름
												String value = item.getString("UTF-8");	// 파라미터의 값
												out.println(name + "=" + value + "<br/>");
											}else{ // 파일 데이터라면
												String fileFieldName = item.getFieldName(); // 요청 파라미터의 이름
												String fileName = item.getName();	// 파일명
												String contentType = item.getContentType();	// 파일 컨텐츠 타입(MimeType)
												long fileSize = item.getSize();
												
												File uploadFile = new File(path + "/" + fileName);
												
												if(maxSize < fileSize){
													out.print("파일 크기를 초과하였습니다!<br/>");
												}else{
													item.write(uploadFile); // 파일 복사
												}
												
												out.println("----------------------------<br/>");
												out.println("요청 파라미터 이름 : " + fileFieldName + "<br/>");
												out.println("저장 파일 이름 : " + fileName + "<br/>");
												out.println("저장 컨텐츠 타입 : " + contentType + "<br/>");
												out.println("파일 크기 : " + fileSize + "<br/>");
											}
										}
									%>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>