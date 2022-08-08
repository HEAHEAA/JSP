<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>

<%
ArrayList<String> lists = new ArrayList<String>();
lists.add("리스트");
lists.add("컬렉션");
session.setAttribute("lists", lists);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SessionMain 영역</title>
</head>
<body>
<!-- 
1. 원하는 페이지를 보고 나가기(x)를 누르면 자동으로 로그아웃 처리가 된다.
2. 이 처리는 보통 session에서 이뤄지는 영역이다.
 -->
 
 <h2>페이지 이동후 session 영역의 속성 읽기</h2>
	<a href="SessionLocation.jsp">SessionLocation.jsp 바로가기</a>
	
<!-- 
1.어레이리스트 컬렉션을 생성한 후 2개의 스트링 객체를 저장한다음 a태그가 컬렉션을 통째로 세션영역에 저장한다.
2. a 태그는 세션 영역이 이동 된 페이지에서도 공유 되는지 확인하기 위한 링크.
 -->
</body>
</html>