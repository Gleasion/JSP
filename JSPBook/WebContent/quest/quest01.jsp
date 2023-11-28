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
<style type="text/css">
#id{
	color: blue;
}
</style>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
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
						<div class="col-md-12 stretch-card grid-margin">
							<div class="card data-icon-card-primary">
								<div class="card-body">
									<p class="card-title text-white">스크립트 연습 </p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">QUEST01</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">quest01.jsp</p>
									
										<div class="table-responsive">
											<table class="table table-hover" width="100%">
												<tr>
													<th>번호</th>
													<th>제목</th>
													<th>작성자</th>
													<th>작성일</th>
													<th>조회수</th>
												</tr>
												<tr>
													<td>10</td>
													<td>네이버웍스 비정기 업데이트 소식</td>
													<td>관리자</td>
													<td>2022-11-16</td>
													<td>1455</td>
												</tr>
												<tr>
													<td>9</td>
													<td>네이버웍스 일부 기능의 사양 변경 및 종료 안내</td>
													<td>관리자</td>
													<td>2022-11-15</td>
													<td>234</td>
												</tr>
												<tr>
													<td>8</td>
													<td>[프로모션 공지] 네이버웍스 X 워크플레이스 결합 서비스 신규 가입 20%추가 할인(~12.31)</td>
													<td>관리자</td>
													<td>2022-11-14</td>
													<td>23444</td>
												</tr>
												<tr>
													<td>7</td>
													<td>[중요] 네이버웍스 V3.5 정기 업데이트 소식</td>
													<td>관리자</td>
													<td>2022-11-13</td>
													<td>12466</td>
												</tr>
												<tr>
													<td>6</td>
													<td>[프로모션 사전 공지] 네이버웍스 X 워크플레이스 결합 서비스 20% 추가 할인</td>
													<td>관리자</td>
													<td>2022-11-12</td>
													<td>111</td>
												</tr>
												<tr>
													<td>5</td>
													<td>드라이브 서비스 DB 업그레이드 작업 사전 안내</td>
													<td>관리자</td>
													<td>2022-11-11</td>
													<td>2233</td>
												</tr>
											</table>
										</div>
										<hr/><br/>
								</div>
							</div>
						</div>
						<div class="col-md-12 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<input type="checkbox" id="chk" value="Y"/> append<br/>
									<h4>선택한 td안에 있는 글자를 아래 P태그에 출력해주세요!</h4>
									<p class="text-info" id="output">출력란</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
$(function(){
	
	$('td').on("click",function(){
		
		var v_chk = $('#chk').is(':checked');
		var v_td = $(this).html();
		var text = "";
		
		if(v_chk){
			text = $('#output').html();
			text += v_td + "<br/>";
			$('#output').html(text);
		}else{
			$('#output').innerText = "";
			$('#output').html(v_td);
		}
		
	});
	
});

</script>
</html>