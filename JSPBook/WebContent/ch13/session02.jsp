<%@ page language="java" pageEncoding="UTF-8" errorPage="isErrorPage_error.jsp"%>
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
                           <p class="card-title text-white">13장 세션</p>
                           <div class="row">
                              <div class="col-12 text-white">
                                 <p class="text-white">2. 세션 생성</p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-10 stretch-card grid-margin">
                     <div class="card">
                        <div class="card-body">
                           <p class="card-title">session02.jsp</p>

							<%
								String userId = (String) session.getAttribute("userId");
								String userPw = (String) session.getAttribute("userPw");

								out.println("설정된 세션의 속성값[1]" + userId + "<br/>");
								out.println("설정된 세션의 속성값[2]" + userPw + "<br/>");
								
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









