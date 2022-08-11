<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.JDBConnect" %>
<%@ page import="common.DBConnPool" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<h2>JDBC 연결 테스트</h2>
	<%
	JDBConnect jdbc1 = new JDBConnect();
	jdbc1.close();
	
	//콘솔창에 연결성공,자원해체 글이 나오면 연결 성공!
	//성공했다능 수정ㄴㄴ하자
	//JDBC 포트 8082 톰캣 서버포트 8083 변경
	%>
	
	
	<h2>JDBC 연결 테스트 2</h2>
	<%
	String driver = application.getInitParameter("OrcleDriver");
	String url = application.getInitParameter("OracleURL");
	String id = application.getInitParameter("OracleId");
	String pwd = application.getInitParameter("OraclePwd");
	
	JDBConnect jdbc2 = new JDBConnect(driver,url,id, pwd);
	jdbc2.close();
	%>
	
	
	<!-- 여기서 에러났던 것
	java.lang.NullPointerException 에러가 났는데, 에러가 난 이유는
	1. 객체를 정의하고 생성자 객체 를 사용하려고하였으나, 생성자를 입력을 잘못했던가, 객체입력을 잘못 쳐서 나왔다ㄴ
	2. 어쨌뜬 객체 인수값이 맞지 않아서...암튼 성공함!
	 -->
	 
	 <h2>커넥션 풀 테스트</h2>
	 <%
	 DBConnPool pool = new DBConnPool();
	 pool.close();
	 %>
</body>
</html>