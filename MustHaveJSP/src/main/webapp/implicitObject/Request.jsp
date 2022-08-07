<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 - Request</title>
</head>
<body>
	<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
	<a href="./RequestWebInfo.jsp?eng=Hello&han=안녕">
	GET 방식 전송 <!-- get 방식으로 요청 -->
	</a>
	<br />
	<form action="RequestWebInfo.jsp" method="post"> 
	<!-- post 방식으로 요청 -->
	영어 : <input type="text" name="eng" value="Bye" /><br />
	한글 : <input type="text" name="han" value="잘 가" /><br />
	<input type="submit" value="POST 방식 전송" />
	</form>
	
	<h2>2. 클라이언트의 요청 매개변수 읽기</h2>
	<form method="post" action="RequestParameter.jsp">
		아이디 : <input type="text" name="id" value="" /><br />
		성별 : 
			<input type="radio" name="sex" value="man" />남자
			<input type="radio" name="sec" value="woman" checked="checked" />여자
			<br />
		관심사항 :
			<input type="checkbox" name="favo" value="eco" />경제
			<input type="checkbox" name="favo" value="pol" />정치
			<input type="checkbox" name="favo" value="ent" />연예
		자기소개 :
			<textarea name="intro" cols="30" rows="4"></textarea>
			<br />
			<input type="submit" value="전송" />
	</form>
	
	<h2>3. HTTP 요청 헤더 정보 읽기</h2>
	<a href="RequestHeader.jsp"> <!-- HTTP 요청 헤더 읽기 -->
		헤더 요청 정보 읽기
	</a>
	

</body>
</html>