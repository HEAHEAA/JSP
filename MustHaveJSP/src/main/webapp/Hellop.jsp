<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    String str1 = "Jsp";
    String str2 = "안녕하세요";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello JSP</title>
</head>
<body>

	<h1>처음만들어보는 <%= str1 %></h1>
	<p>
		<%
		out.println(str2 + str1 + "열공열공~");
		%>
	</p>

</body>
</html>