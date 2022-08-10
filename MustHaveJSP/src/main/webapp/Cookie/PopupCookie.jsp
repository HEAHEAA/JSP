<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String chkVal = request.getParameter("inactiveToday");
//매개변수 값 inactiveToday 얻기

if(chkVal != null && chkVal.equals("1")){ //값이 1이면 쿠키를 생성해 응답 객체에 추가
	Cookie cookie = new Cookie("PopupClose" , "off"); //쿠키 생성
	cookie.setPath(request.getContextPath()); //경로생성
	cookie.setMaxAge(60*60*24); //유지기간 설정
	response.addCookie(cookie); //응단 객체에 추가 
	out.println("쿠키 : 하루종안 열지 않음");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>