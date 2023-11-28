<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<body>
<form action="validation02_process.jsp" method="post" name="form">
	아이디 : <input type="text" name="id" id="id"><br/>
	비밀번호 : <input type="text" name="pw" id="pw"><br/>
	<input type="button" value="전송" onclick="checkPasswd()">
</form>
</body>
<script type="text/javascript">
function checkPasswd(){
	
	var id = document.getElementById("id").value;
	var pw = document.getElementById("pw").value;
	
	var sameChar = 0;	// 동일문자 카운트
	var sequenceCount1 = 0;	// 연속성(+)카운트
	var sequenceCount2 = 0;	// 연속성(-)카운트
	var pw_passwd = true;
	
	for(var i = 0; i < pw.length; i++){
		var char0;
		var char1;
		var char2;
		
		if(i >= 2){
			char0 = pw.charCodeAt(i-2);
			char1 = pw.charCodeAt(i-1);
			char2 = pw.charCodeAt(i);
			
			if((char0 == char1) && (char1 == char2)){
				sameChar++;
			}else{
				sameChar = 0;
			}
			
			// 연속성(+) 카운트
			if((char0 - char1 == 1) && (char1 - char2 == 1)){
				sequenceCount1++;
			}else{
				sequenceCount1 = 0;
			}
			
			// 연속성(-) 카운트
			if((char0 - char1 == -1) && (char1 - char2 == -1)){
				sequenceCount2++;
			}else{
				sequenceCount2 = 0;
			}
		}
		
		if(sameChar > 0){
			alert("동일문자를 3자이상 연속 입력할 수 없습니다.");
			pw_passwd = false;	// 비밀번호 flag 변경(스위치)
		}
		
		if(sequenceCount1 > 0 || sequenceCount2 > 0){
			alert("동일문자를 3자이상 연속 입력할 수 없습니다.");
			pw_passwd = false;	// 연속성에 의한 비밀번호 flag 변경(스위치)
		}
		
		if(!pw_passwd){	// 동일문자, 연속성에 모두 걸렸을 때 지나갈 수 없음
			alert("동일문자를 3자이상 연속 입력할 수 없습니다.");
			return false;
		}
	}
		
	document.form.submit();
}
</script>
</html>