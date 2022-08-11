<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.PreparedStatement" %>
 <%@ page import="java.sql.Connection" %>
 <%@ page import="common.JDBConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동적 쿼리문 회원추가</title>
</head>
<body>
	<h2>회원 추가 테스트</h2>
	<%
	//DB 연결
	JDBConnect jdbc = new JDBConnect();
	
	//테스트 입력값
	String id = "test1";
	String pass= "1111";
	String name="테스트 회원1";
	
	//쿼리 문
	String sql = "INSERT INTO member VALUES (?,?,?, sysdate)";
	PreparedStatement psmt = jdbc.con.prepareStatement(sql);
	psmt.setString(1, id);
	psmt.setString(2, pass);
	psmt.setString(3, name);
	
	//쿼리 수행
	int inResult = psmt.executeUpdate();
	out.println(inResult + "행 입력됨");
	
	//연결 닫기
	jdbc.close();
	%>
	
	<!-- 주의할점
	1. 쿼리 Stirng 문은 대소문자 구분하기에 쿼리작성시 대소문자 구분하여 표기 ★
	2. ""안에 ; 들어가지 않게하기
	 -->

</body>
</html>