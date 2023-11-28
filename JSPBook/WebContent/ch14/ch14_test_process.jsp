<%@ page language="java" pageEncoding="UTF-8"%>
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
                           <p class="card-title text-white">14장 쿠키</p>
                           <div class="row">
                              <div class="col-12 text-white">
                                 <p class="text-white">2. 쿠키 생성</p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-10 stretch-card grid-margin">
                     <div class="card">
                        <div class="card-body">
                           <p class="card-title">ch14_test_process.jsp</p>
                           
							<!-- 
								임의의 아이디, 비밀번호로 인증처리를 진행해주시고
								인증이 성공했다면 "인증이 성공했습니다!"라는 메세지를 출력하고 쿠키를 저장해주세요.
								인증이 실패했다면 "인증이 실패했습니다!"라는 메세지를 출력하고 
								다시 로그인 페이지로 이동할 수 있는 통로를 하나 마련해주세요.
							 -->
							 
							 <%
							 	request.setCharacterEncoding("UTF-8");
							 	
							 	String id = request.getParameter("id");
							 	String chk = request.getParameter("chk");
							 	String pw = request.getParameter("pw");
							 	
							 	if(id.equals("admin") && pw.equals("1234")){
							 		out.println("인증이 성공했습니다!");
							 		
							 		if(chk != null){
								 		Cookie cookie = new Cookie("chk", id);
							 			response.addCookie(cookie);
							 		}						 			
							 		
							 	}else{
							 		out.println("인증이 실패했습니다!<br/>");
							 		out.println("<a href='ch14_test.jsp'>로그인 페이지로 가기</a>");
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









