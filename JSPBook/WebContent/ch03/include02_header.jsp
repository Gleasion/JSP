<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	// 선언문 태그로 pageCount 변수 선언(전역)
	int pageCount = 0;
	void addCount(){
		pageCount++;
	}
%>
<%
	// 스크립틀릿 활성화
	// 함수 addCount()를 호출
	addCount(); // pageCount가 1씩 증가
%>
<!-- 표현문 태그를 이용하여 pageCount를 출력 -->
<p>이 사이트 방문은 <%=pageCount %>번째 입니다.</p>
