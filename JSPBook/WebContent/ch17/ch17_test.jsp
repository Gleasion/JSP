<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%-- <%@ page language="java" pageEncoding="UTF-8" errorPage="isErrorPage_error.jsp"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
                           <p class="card-title">ch17_test.jsp</p>
                           
                           <!-- 
								문제) 000반 학생들의 각 성씨에 따른 인원수는 각각 몇명인지 작성해주세요.
										
								예) ----------------------
								'홍'씨 성을 가진 사람 : 00명
								'유'씨 성을 가진 사람 : 00명
								'정'씨 성을 가진 사람 : 00명
								....
							-->
							<%
								String[] list = {"이나은","송기돈","임찬빈","차수연",
									"김재용","남민주","박유빈97","문수빈",
									"양혜원","신정연","오재원","우태원",
									"김지연","이혜린","이정민","조예진",
									"최미키코","윤선주","박지석","정천용",
									"이서준","박유빈93","이종영","이주희",
									"박성민","이주영","김명철"};
							%>
							<c:set var="list" value="<%=list %>" />
							<c:set var="map" value="<%=new HashMap<String,Integer>() %>" />
							<c:forEach items="${list}" var="stu" varStatus="stat">
								<c:set var="sung" value="${fn:substring(stu,0,1) }" />
								<c:choose>
									<c:when test="${map[sung] == null }">
										<c:set target="${map }" property="${sung }" value="1"></c:set>
									</c:when>
									<c:otherwise>
										<c:set target="${map }" property="${sung }" value="${map[sung] + 1}"></c:set>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							
							<table border="1">
								<tr>
									<th>성씨</th>
									<c:forEach items="${map }" var="entry">
										<td>${entry.key}</td>
									</c:forEach>
								</tr>
								<tr>
									<th>인원수</th>
									<c:forEach items="${map }" var="entry">
										<td>${entry.value}</td>
									</c:forEach>
								</tr>
							</table>
							
							<br/>
							<hr><br/>
							
							<c:forEach items="${map }" var="entry">
								<p>'${entry.key }'씨 성을 가진 사람 ${entry.value }명 </p>
							</c:forEach>    
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









