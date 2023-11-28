<%@ page language="java" pageEncoding="UTF-8" errorPage="isErrorPage_error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                           <p class="card-title">core01.jsp</p>
                           
                           <!-- 
                           		request.getHeader ("User-Agent") request 내장객체르를 이용하여 가져온 header
                           		'User-Agent'를 EL에서 header['User-Agent']와 같이 작성 간으 합니다.
                            -->
                           
							browser 변수 값 설정 <br/>
							<c:set value="${header }" var="hd" />
							User-Agent : <c:out value="${hd['User-Agent'] }" /><br/>
							Host : <c:out value="${hd['Host'] }" /><br/>
							Accept : <c:out value="${hd['Accept'] }" /><br/>
							Accept-Laguage : <c:out value="${hd['Accept-Laguage'] }" /><br/>
							Accept-Encoding : <c:out value="${hd['Accept-Encoding'] }" /><br/>
							Referer : <c:out value="${hd['Referer'] }" /><br/>
							Connection : <c:out value="${hd['Connection'] }" /><br/>
							Cache-Control : <c:out value="${hd['Cache-Control'] }" /><br/>
							
							<hr><br/>
							<p>userAgent 변수 값 등록</p>
							<c:set value="${header['User-Agent'] }" var="userAgent" />
							userAgent : <c:out value="${userAgent }" /><br/>
							
							<p>userAgent 변수 값 제거 후</p>
							<c:remove var="userAgent"/>
							userAgent : <c:out value="${userAgent }" /><br/>
							                 
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









