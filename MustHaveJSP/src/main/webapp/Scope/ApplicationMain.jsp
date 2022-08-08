<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="common.Person" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 영역</title>
</head>
<body>
<h2>application 영역의 공유</h2>
<%
Map<String, Person> maps = new HashMap<>();
maps.put("actor1", new Person("김지희", 25));
maps.put("actor2", new Person("정경환", 25));
application.setAttribute("maps", maps);
%>
application 영역에 속성이 저장되었다.


</body>
</html>