<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OutPage</title>
</head>
<body>
	<h2>외부 파일1</h2>
	<%
	String newVar1 = "페이지 건설한 김지희 짱";
	%>
	
	<ul>
		<li>page 영역 속성  :<%= pageContext.getAttribute("pAttr") %></li>
		<li>request 영역 속성 :<%= request.getAttribute("rAttr") %></li>
	</ul>
</body>
</html>