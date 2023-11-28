<%@page import="java.util.Enumeration"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
									<p class="card-title text-white">6장 폼 태그</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">3. input 태크</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">ch06_test_process.jsp</p>
									
									<!-- 
										아래와 같은 형식으로 출력해주세요
										
										아이디: a001
										비밀번호: 1234
										이름: 홍길동
										연락처: 010-1234-1234
										이메일 : hongkd@n.com
										성별 : 남자
										취미: 운동 음악감상 영화감상
										소개 : 반갑습니다.
											잘부탁드립니다.
											열심히 하겠습니다.
											
										모든 출력은 JSTL을 활용하여 출력해주세요.
										
									 -->
									<%
										request.setCharacterEncoding("UTF-8");

										String id = request.getParameter("mem_id");
										String pw = request.getParameter("mem_pw");
										String name = request.getParameter("mem_name");
										String phone1 = request.getParameter("mem_phone1");
										String phone2 = request.getParameter("mem_phone2");
										String phone3 = request.getParameter("mem_phone3");
										String email = request.getParameter("mem_email");
										String gender = request.getParameter("mem_gender");
										String[] hobby = request.getParameterValues("mem_hobby");
										String introduction = request.getParameter("mem_introduction");
									%>
									<c:set var="id1" value="<%=id %>"/>									
									<c:set var="pw" value="<%=pw %>"/>									
									<c:set var="name" value="<%=name %>"/>									
									<c:set var="phone1" value="<%=phone1 %>"/>									
									<c:set var="phone2" value="<%=phone2 %>"/>									
									<c:set var="phone3" value="<%=phone3 %>"/>									
									<c:set var="email" value="<%=email %>"/>									
									<c:set var="gender" value="<%=gender %>"/>									
									<c:set var="introduction" value="<%=introduction %>"/>									
									<p>아이디: ${id1 }</p>
									<p>비밀번호: ${pw }</p>
									<p>이름: ${name }</p>
									<p>연락처: ${phone1 } - ${phone2 } - ${phone3 }</p>
									<p>이메일: ${email }</p>
									<p>성별: ${gender }</p>
									<p>취미(core로 출력):
										<c:forEach items="<%=hobby %>" var="hob">
											<c:if test="${hob eq 'read'}"><c:out value="독서"/></c:if>
											<c:if test="${hob eq 'exercise'}"><c:out value="운동"/></c:if>
											<c:if test="${hob eq 'music'}"><c:out value="음악감상"/></c:if>
											<c:if test="${hob eq 'trip'}"><c:out value="여행"/></c:if>
											<c:if test="${hob eq 'movie'}"><c:out value="영화감상"/></c:if>
										</c:forEach>
									</p>
									<p style="white-space: pre-wrap;">자기소개: ${introduction }</p>
									
									<br/><br/><br/>
									
									<h3>넘겨받은 파라미터 값을 EL표현문으로 바로 출력은 어려운걸까?</h3>
									id : ${id }<br/>
									mem_id = ${mem_id }<br/>
									requestScope영역안에 id: ${requestScope.mem_id }<br/>
									
									<br/><br/><br/>
									
									<h3>넘겨받은 파라미터 값을 EL표현문으로 출력할 수 있는 방법은 아래와 같다.</h3>
									id : ${param.mem_id }
									<c:set value="<%=id %>" var="mem_id"/>
									mem_id : ${mem_id}<br/>
									
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