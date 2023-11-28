<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" pageEncoding="UTF-8" errorPage="ch11_test_exceptionBoard_error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>쉽게 배우는 JSP 웹 프로그래밍</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/feather/feather.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/vertical-layout-light/style.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/images/favicon.png" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
</head>
<style>
/* 이미지 사이즈 조정 */
.file-item img {
	max-width: 100%;
	max-height: 150px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<body>
	<div class="container-scroller">
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo mr-5" href="${pageContext.request.contextPath }/index.jsp"> <img src="${pageContext.request.contextPath }/resources/images/logo.svg" class="mr-2" alt="logo" />
				</a>
			</div>
			<div class="navbar-menu-wrapper d-flex align-items-center justify-content-end"></div>
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
									<p class="card-title text-white">11장 예외처리</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">TEST</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">ch11_test_dropbox.jsp</p>

									<!-- 
										첨부한 파일들을 확인 할 수 있는 자료실 페이지를 구성해주세요.
										- 자료실을 구성하는데 필요한 내용 모두는 board를 작성했던 방식을 참고하여 작성한다.
										
										1. 파일의 유형에 따라 유형에 맞는 default 이미지로 리스트를 구성하세요.
										
										2. 파일 이름을 누르면 파일이 다운로드 되게 구성하세요.
										
										[출력 예]
										
										자료실
										[pdf]	[excel]	[excel]	[ppt]
										[image] [txt]	[word]	[txt]
										[etc]	[etc]	[pdf]	[ppt]
										[...]
										
										목록 
									 -->
									<h3>자료실</h3>
									<div class="file-list owl-carousel owl-theme">
										<%-- 자료실 리스트를 반복문을 사용하여 구성합니다. --%>
										<%
											ArrayList<String> imageFiles = new ArrayList<String>();
											String realFolder = request.getServletContext().getRealPath("/resources/images");
											File folder = new File(realFolder);
											File[] files = folder.listFiles();
											if (files != null) {
												for (File file : files) {
													String fileName = file.getName();
													String extension = fileName.substring(fileName.lastIndexOf(".") + 1);
													extension = extension.toLowerCase();
													if (file.isFile() && (extension.equals("jpg"))) {
														imageFiles.add(fileName);
													}
												}
											}
										%>
										<%
											for (String file : imageFiles) {
										%>
										
										<div class="file-item">
											<a href="${pageContext.request.contextPath}/resources/images/<%= file %>" download> 
											<img src="${pageContext.request.contextPath}/resources/images/<%= file %>"
												alt="<%=file%>" /> <%=file%>
												
											</a>
										</div>
										<%
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
	</div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<script>
	$(document).ready(function() {
		var owl = $('.file-list');

		owl.owlCarousel({
			items : 5,
			margin : 10,
			nav : true,
			responsive : {
				0 : {
					items : 1
				},
				300 : {
					items : 3
				},
				500 : {
					items : 5
				}
			}
		});
	});
	//파일 다운로드
	$('.file-item img').click(function() {
		var fileName = $(this).attr('alt');
		downloadFile(fileName);
	});

	function downloadFile(fileName) {
		var downloadUrl = '/resources/images/' + fileName; // 파일이 위치한 URL
		var link = document.createElement('a');	// 동적요소 넣어주기 ------<a></a>
		link.href = downloadUrl;
		link.download = fileName; // 다운로드할 파일 이름 설정
		link.click();
	}
	
</script>
</html>
