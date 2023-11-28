<%@page import="java.io.File"%>
<%@page import="java.io.FileWriter"%>
<%@page import="vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.MemberDAO"%>
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
									<p class="card-title">ch07_test_signin.jsp</p>
									
									<!-- 
										1. 로그인 성공 후, 넘어왔을 때 'a001님! 환영합니다!' 메세지를 출력해주세요. (알림창)
										
										2. 회원 목록에 저장되어 있는 회원 모두를 출력해주세요.
											
											[로그아웃 버튼]
											___________________________________________
												이미지	|		회원정보		|	버튼
											___________________________________________
												프로필	|	아이디 : a001		|
												이미지	|	비밀번호: 1234		|
														|	이름 : 홍길동		|
														|	성별 : 남자			|
											____________________________________________
											
										3. 로그아웃 버튼 클릭 시, 회원 로그인 페이지로 이동하여 회원 등록을 진행할 수 있도록 해주세요.
												
									 -->
									
									<%
										request.setCharacterEncoding("UTF-8");
										
										String msg = request.getAttribute("msg") == null ?
											"" : (String) request.getAttribute("msg");
										request.removeAttribute("msg");
										
										if(msg.equals("1")){
										msg = "존재하지 않는 회원입니다.";
									%>
									<script type="text/javascript">
										alert(<%=msg %>);
									</script>
									<%
										}
										
										MemberDAO memdao = MemberDAO.getInstance();
										ArrayList<MemberVO> memberList = memdao.getMemberList();
										
										for(MemberVO memList : memberList){
									%>
									<table border="1px">
										<tr>
											<td colspan="3"><input type="button" value="로그아웃"></td>
										</tr>
										<tr>
											<td>이미지</td>
											<td>회원정보</td>
											<td><input type="button" value="버튼"></td>
											
										</tr>
											<td rowspan="4">
												<img alt="이미지 오류" src="/resources/images/<%=memList.getFilename() %>">
											</td>
										<tr>
											<td>
											아이디: <%=memList.getMem_id() %><br/>
											비밀번호: <%=memList.getMem_pw() %><br/>
											이름: <%=memList.getMem_name() %><br/>
											성별: <%=memList.getMem_sex() %>
											</td>
										</tr>
										<tr>
											<td rowspan="4"></td>
										</tr>
									</table>
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
</body>
</html>