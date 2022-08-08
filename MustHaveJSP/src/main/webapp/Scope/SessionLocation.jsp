<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 컬렉션이동</title>
</head>
<body>
<h2>페이지 이동 후 session 영역의 속성 읽기</h2>
<%
ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists");
for(String str : lists)
	out.print(str + "<br />");
%>

<!-- 
1. Main 에서 처음 링크를 타고 페이지 이동을 하였다가 브라우저를 닫고 다시 메인시동을 걸어 페이지를 열면
2. 500에러가 보여짐. 보여지는것과 같이 세션객체가 삭제되고 null값을 반환하여 nullpointexcetion이 발생되는것
 -->

</body>
</html>