<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//포함할 파일의 경로
String outerPath1 = "./inc/OuterPage1.jsp";
String outerPath2 = "./inc/OuterPage2.jsp";

//page 영역과 request 영역에 속성 저징
pageContext.setAttribute("pAttr", "개발자지희");
request.setAttribute("rAttr", "지희퀸");
%>

	<h2>지시어와 액션 태그 동작 방식 비교</h2>
	<!-- 지시어 방식 -->
	<h3>지시어로 페이지 포함하기</h3>
	<%@ include file="/MustHaveJSP/src/main/webapp/ActionTag/OuterPage1.jsp" %>
	<%--@ include file="<%=outerPath1OuterPage1%>" --%>
	<p>외부 파일에 선언한 변수 : <%=newVar1 %></p>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지시어와 액션태그 포함하기</title>
</head>
<body>


</body>
</html>