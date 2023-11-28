<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
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
                           <p class="card-title text-white">3장 디렉티브 태그</p>
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
                           <p class="card-title">ch03_test.jsp</p>

									<!-- 
                              1) 리스트에서 404호 반 학생 이름을 모두 Core태그 set에 저장한 후, 전체를 출력해주세요.
                              2) 학생 4명씩 끊어서 출력해주세요.
				                                 이름 이름 이름 이름
				                                 이름 이름 이름 이름
				                                 이름 이름 이름 이름
				                                 이름 이름 이름 이름
                                 ...
                              3) 4명씩 끊어서 출력할 때, 본인의 이름은 '본인'으로 출력해주세요.
                              4) '본인' 글자를 출력 시, 굵은 글씨와 색깔은 녹색으로 출력해주세요. 
                            -->

									<%
                               List<String> list = new ArrayList<String>();
                              list.add("이나은");
                              list.add("송기돈");
                              list.add("임찬빈");
                              list.add("차수연");
                              list.add("김재용");
                              list.add("남민주");
                              list.add("박유빈97");
                              list.add("문수빈");
                              list.add("양혜원");
                              list.add("신정연 ");
                              list.add("오재원");
                              list.add("우태원");
                              list.add("김지연");
                              list.add("이혜린 ");
                              list.add("이정민");
                              list.add("조예진");
                              list.add("최미키코");
                              list.add("윤선주");
                              list.add("박지석");
                              list.add("정천용");
                              list.add("이서준");
                              list.add("박유빈93");
                              list.add("이종영");
                              list.add("이주희");
                              list.add("박성민 ");
                              list.add("이주영");
                              list.add("김명철 ");
                            %>
                            <c:forEach items="<%=list %>" var="item" varStatus="stat">
                                 
                                 <c:if test="${item == '남민주'}">
                                    <c:set value="본인" var="item" />
                                    <span style="color: green;"><b>${item}</b></span>
                                 </c:if>
                                 <c:if test="${item != '본인'}">
                                    ${item}
                                 </c:if>
                                 <c:if test="${stat.count % 4 == 0}">
                                    <br>
                                 </c:if>

                              
                              
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






