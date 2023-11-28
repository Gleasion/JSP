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
						<div class="col-md-2 stretch-card grid-margin">
							<div class="card data-icon-card-primary">
								<div class="card-body">
									<p class="card-title text-white">스크립트 연습</p>
									<div class="row">
										<div class="col-12 text-white">
											<p class="text-white">QUEST02</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-10 stretch-card grid-margin">
							<div class="card">
								<div class="card-body">
									<p class="card-title">quest04.jsp</p>
									
									<div class="table-responsive">
										<caption>앞(SEM PC 자리)</caption>
										<table width="100%" border="1" style="text-align:center; font-size:24px;">
											<tr width="100%" height="80px">
												<td width="10%">박유빈97</td>
												<td width="10%">윤선주</td>
												<td width="10%">박지석</td>
												<td width="10%">박성민</td>
												<td width="20%"></td>
												<td width="10%">우태원</td>
												<td width="10%">김재용</td>
												<td width="10%">양혜원</td>
												<td width="10%">남민주</td>
											</tr>
											<tr height="80px">
												<td>신정연</td>
												<td>문수빈</td>
												<td>이나은</td>
												<td>이주희</td>
												<td></td>
												<td>임찬빈</td>
												<td>송기돈</td>
												<td>이정민</td>
												<td>오재원</td>
											</tr>
											<tr height="80px">
												<td>조예진</td>
												<td>최미키코</td>
												<td>이주영</td>
												<td>차수연</td>
												<td></td>
												<td>정천용</td>
												<td>이서준</td>
												<td>박유빈93</td>
												<td>이종영</td>
											</tr>
											<tr height="80px">
												<td>김지연</td>
												<td>이혜린</td>
												<td></td>
												<td>김명철</td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
										</table>
										<hr/>
										<div class="progress" style="height: 40px;">
											<div class="progress-bar progress-bar-striped" id="myBar" role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: 1px; height: 40px;">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
										<br/>
										<h4 id="txt"></h4>
										<button id="btn" type="button" style="padding:12px;border:none;cursor:pointer;">출력</button>
									</div>
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
	var nameBox = "";
	var flag = false;
	var elementBox;
	let rowIndex;
	let cellIndex;

	$('#btn').on('click', function(){
		if(!flag) {
			flag = true;
			var elem = document.getElementById("myBar");
			var width = 0;
			var id = setInterval(frame, 20);
			
			function frame() {
				if (width >= 100) {
				    clearInterval(id);
				    flag = false;
				}else {
				    width++;
				    elem.style.width = width + "%";
				    elem.innerHTML = width + "%";
				    
				    
				}
			}
		}
	});

// 	$('td').on('click', function(){
// 		if(flag){
// 			flag = false;
// 			elementBox.html($(this).html());
// 			$(this).html(textBox);
			
// 			textBox = "";
// 			elementBox = null;
// 			$('td').css({"background-color":"white"})
// 		}else{
// 			flag = true;
// 			textBox = $(this).html();
// 			elementBox = $(this);
// 			$(this).css({"background-color":"yellow"});
// 		}
// 	});
	
// 	$('#clickBtn').on("click", function(){
// 		$("#output").html("");
// 		var tds = document.getElementsByTagName("td");
// 		var html = "<table class='table-bordered' style='text-align:center; font-size:14px'>";
// 		for(var i = 1; i <= tds.length; i++){
// 			html += "<td width='10%'>" + tds[i-1].innerText + "</td>";
// 			if(i % 9 == 0){
// 				html += "</tr>";
// 			}
// 		}
// 		html += "</table>";
// 		$("#output").html(html);
// 	});
});
</script>
</html>