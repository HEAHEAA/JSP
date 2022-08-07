<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Excetion.jsp</title>
</head>
<body>
<%
int status = response.getStatus(); //respons 내장 객체로 부터 에러 코드 확인

//에러 코드에 따라 적절 메세지 출력하기
if(status == 404){
	out.print("404에러 발생했다");
	out.print("<br />우리 파일 경로를 확인해보자 !");
}
else if(status == 405){
	out.print("405에러에러에러에러에러");
	out.print("<br /> 요청방식 메소드 확인해보기 >_0");
}
else if (status == 500){
	out.print("500 에러가 발생겼는데,");
	out.print("<br /> 괜찮아.. 이건 개발자들이 많이 나온다는 에러야 멘탈 잡아<br /> 소스코드에 에러가 있는지 한번만 검토해보자 지희야ㅎㅎ");
}
%>

</body>
</html>