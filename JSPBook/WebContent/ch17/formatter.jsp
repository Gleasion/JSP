<%@page import="java.util.Date"%>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>쉽게 배우는 JSP 웹 프로그래밍</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/feather/feather.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/vertical-layout-light/style.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/images/favicon.png" />
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<body>
   <div class="container-scroller">
      <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
         <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
            <a class="navbar-brand brand-logo mr-5" href="${pageContext.request.contextPath }/index.jsp">
               <img src="${pageContext.request.contextPath }/resources/images/logo.svg" class="mr-2" alt="logo" />
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
                           <p class="card-title text-white">17장 JSP 표준 태그 라이브러리</p>
                           <div class="row">
                              <div class="col-12 text-white">
                                 <p class="text-white">2. JSTL이 제공하는 태그의 종류와 사용법</p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-10 stretch-card grid-margin">
                     <div class="card">
                        <div class="card-body">
                           <p class="card-title">formatter.jsp</p>
                           
                           	<%
                           		int num1 = 123456789;
								int num2 = 1234;
								double num3 = 123.45;
								double num4 = 123456.1234;
                           	%>
                           	<c:set value="<%=num1 %>" var="num1" />
                           	<c:set value="<%=num2 %>" var="num2" />
                           	<c:set value="<%=num3 %>" var="num3" />
                           	<c:set value="<%=num4 %>" var="num4" />
							
							<!-- 
								formatNumber 태그
								- type : type 속성이 "currency"일 경우 인식할 화폐 단위
								- groupingUsed : ','와 같은 각 숫자 단위의 구분자 표시 구분
								- minFractionDigits : 화면에 표시할 소수점 이하 숫자의 최소 개수
								- maxFractionDigits : 화면에 표시할 소수점 이하 숫자의 최대 개수
								
								** groupingUsed 속성은 default가 true이다.
							 -->
							<h3>formatNumber</h3>
							<fmt:formatNumber value="${num1 }" /><br/>
							<fmt:formatNumber value="${num1 }" groupingUsed="false"/><br/>
							<fmt:formatNumber value="${num1 }" type="currency"/><br/>
							<fmt:formatNumber value="${num4 }" minFractionDigits="6"/><br/>
							<fmt:formatNumber value="${num4 }" maxFractionDigits="3"/><br/>
							
							
							<!-- 
								formatDate 태그
								- type : 출력하고자 하는 형식의 타입을 설정할 수 있다.
									> date : 날짜 형식
									> time : 시간 형식
									> both : 날짜 및 시간 형식(둘다 포함)
								- pattern : 우리가 사용하고 있는 패턴 형식과 동일한 형식 제공
									> 출력하고자 하는 형식의 패턴이 있다면 해당 형식을 만들어서 출력 가능
									> ex) yyyy-MM-dd hh:mm:ss
							 -->
							<h3>formateDate</h3>
							<c:set value="<%=new Date() %>" var="date" />
							
							기본 : <fmt:formatDate value="${date }"/><br/>
							날짜 : <fmt:formatDate value="${date }" type="date"/><br/>
							시간 : <fmt:formatDate value="${date }" type="time" /><br/>
							날짜 및  시간 : <fmt:formatDate value="${date }" type="both" /><br/>
							패턴 : <fmt:formatDate value="${date }" pattern="yyyy-MM-dd hh:mm:ss" /><br/>
							
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









