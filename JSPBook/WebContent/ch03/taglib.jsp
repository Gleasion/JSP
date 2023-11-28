<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
									<p class="card-title text-white">3장 디렉티브 테그</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">4. taglib 디렉티브 태그</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">taglib.jsp</p>

									<h5>1. 변수 k가 1부터 10까지 1씩 증가하도록 JSTL의 Core 태그를 활용하여 반복문을 작성</h5>
									<c:forEach var="i" begin="1" end="10" step="1">
										<c:out value="${i }" />
									</c:forEach>
									<br />
									<br />

									<p># 짝수일 때만 출력</p>
									<c:forEach var="i" begin="1" end="10" step="1">
										<c:if test="${i % 2 == 0}">
											<c:out value="${i }" />
										</c:if>
									</c:forEach>

									<h5>2. 스크립틀릿과 표현문/ JSTL을 통해 str을 출력</h5>
									<p># 스크립틀릿으로 선언</p>
									<%
										String str = "스크립틀릿으로 선언한 개똥쓰";
									%>
									<%=str%>
									<br /><br />

									<p># JSTL의 Core태크의 out으로 선언</p>
									<c:set var="str" value="core태그로 선언한 개똥쓰" />
									<c:out value="${str }" />
									<br /><br />

									<h5>3. 스크립틀릿과 표현문 / JSTL을 통해 Collection 출력</h5>
									<p># 스크립틀릿으로 선언</p>
									<%
										List<String> list = new ArrayList<String>();
										list.add("개똥이");
										list.add("김철수");
										list.add("메뚝쓰");
									%>
									<%=list%>
									<br /><br />

									<p># JSTL의 Core 태그 forEach를 통해 Collection출력</p>
									forEach(String str : List)
									<c:forEach items="<%=list%>" var="item" varStatus="stat">
										<p>[count : ${stat.count} | index : ${stat.index}] ${item }</p>
									</c:forEach>
									<br /><br />

									<h5>4. JSTL을 통해 범위 내 값을 출력</h5>
									<c:set value="5000" var="money" />
									<p>내가 가진 돈은 ${money }원 입니다.</p>
									<c:choose>
										<c:when test="${money<=0}">
                              				무일푼
                              			</c:when>
										<c:when test="${money >= 5000 and money <= 10000} ">
		                             	 	커피 한잔의 여유 가능
		                              	</c:when>
										<c:otherwise>
		                         	     	밥 먹자!
		                              	</c:otherwise>
									</c:choose>
									<br /><br />

									<c:if test="${money <= 0 }">
		                             	 무일푼
		                            </c:if>
									<c:if test="${money >= 5000 and money <= 10000 }">
                              			커피 한잔의 여유 가능
                              		</c:if>
									<c:if test="${money > 10000} ">
                           		 		밥 먹자!
                              		</c:if>
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