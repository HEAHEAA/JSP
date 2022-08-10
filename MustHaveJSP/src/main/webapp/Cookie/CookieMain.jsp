<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookies</title>
</head>
<body>
	<h2>1.쿠키(cookie설정)</h2>
	<%
	Cookie cookie = new Cookie("myCookie" , "쿠키먹고싶다"); //생성자함수로 쿠키생성
	cookie.setPath(request.getContentType()); //경로를 컨텍스트 루트로 설정!
	cookie.setMaxAge(3600); //유지기간 1시간으로 설정
	response.addCookie(cookie); //응답 헤더 쿠키 추가
	%>
	
	<h2>2. 쿠키 설정 직후 쿠키 값 확인하기</h2>
	<%
	Cookie[] cookies = request.getCookies(); //요청헤더 쿠키 얻어버리기 !
	if(cookies != null){
		for(Cookie c : cookies){
			String cookieName = c.getName();//쿠키 이름
			String cookieValue = c.getValue(); //쿠키 값
			//출력
			out.println(String.format("%s : %s<br />", cookieName, cookieValue));
		}
	}
	%>
	
	<h2>3. 페이지 이동 후 쿠키 값 확인하기 !</h2>
	<a href="CookieResult.jsp">
	다음 페이지에서 쿠키 값 확인해버리기~~
	</a>
</body>
</html>