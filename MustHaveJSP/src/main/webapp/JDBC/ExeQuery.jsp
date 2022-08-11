<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="common.JDBConnect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정적 쿼리문으로 회원조회</title>
</head>
<body>
	<h2>회원목록 조회 테스트(executeQuery()사용)</h2>
	<%
	//DB연결
	JDBConnect jdbc = new JDBConnect();
	
	//쿼리문 생성!!!
	String sql = "SELECT id, pass, name, regidate FROM member";
	Statement stmt = jdbc.con.createStatement();
	
	//쿼리수행
	ResultSet rs = stmt.executeQuery(sql);
	
	
	//웹페이지에 출력할거 결과확인
	while (rs.next()){
		String id = rs.getString(1);
		String pw = rs.getString(2);
		String name = rs.getString("name");
		java.sql.Date regidate = rs.getDate("regidate");
		
		out.println(String.format("%s %s %s %s", id, pw, name, regidate)+"<br />");
	}
	
	//연결닫기
	jdbc.close();
	
	%>
</body>
</html>