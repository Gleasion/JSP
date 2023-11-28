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
									<p class="card-title">fileupload01_process.jsp</p>
									
									<%
										// 폼 페이지에서 전송된 파일을 저장하기 위한 서버 경로
										String fileUploadPath = "C:\\upload";
									
										File file = new File(fileUploadPath);
										if(!file.exists()){ // 설정한 경로에 폴더가 없으면
											file.mkdirs();	// 폴더 생성
										}
										
										// Common-fileUpload를 이용하여 파일을 업로드 하려면 먼저 Common-fileUpload, Common-io 라이브러리가 필요하다.
										// 파일 업로드르 위해 패키지에 포함되어 있는 DiskFileUpload 객체를 생성함
										DiskFileUpload upload = new DiskFileUpload();
										
										// 생성된 객체를 통해 DiskFileUpload 클래스가 제공하는 메소드를 사용하여 웹 브라우저가 전송한
										// multipart/form-data 유형의 파라미터를 가져옴
										// 폼 페이지에서 전송된 요청 파라미터를 전달받도록 DiskFileUpload 객체 타입의
										// parseRequest() 메소드를 작성
										List items = upload.parseRequest(request);
										
										// 폼 페이지에서 전송된 요청 파라미터를 Iterator 클래스로 변환
										Iterator iter = items.iterator();
										
										// 폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복하도록 Iterator 객체 타입의 hasNext() 메소드를 작성
										while(iter.hasNext()){
											FileItem fileItem = (FileItem) iter.next();
											
											// FileItem 클래스의 메소드를 사용하여 요청 파라미터가 일반 데이터인지 파일인지 분석 및 처리하여 파일을 업로드 함
											if(!fileItem.isFormField()){
												String fileName = fileItem.getName(); // 파일명
										%> insert "}" to complete ClassBody

												<h3>파일명(<%=fileName %>)이 저장되었습니다! </h3>
										<%
												// 최종 이곳으로 업로드가 된다.
												// C:\\upload\fileName.jsp
												File file1 = new File(fileUploadPath + "/" + fileName);
												fileItem.write(file1); // 파일복사
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