<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>outMain</title>
</head>
<body>
	<% //out 내장객체는 버퍼를 사용한다. // 모든정보는 바파에 먼저 저장도니 후 웹 브라우저에 출력된다.
	out.print("출력되지 않은 텍스트"); //1. 버퍼에 저장
	out.clearBuffer(); //2. 벞퍼를 비움 (윗 줄의 출력 결과 사라짐
			
	out.print("<h2>out 내장 객체</h2>");
	
	
	//버퍼 크기 정보 확인
	out.print("출력버퍼크기 :" + out.getBufferSize()+ "<br />");
	out.print("남은버퍼크기 :" + out.getRemaining() + "<br />");
	
	out.flush(); //버퍼내용 출력 
	out.print("flush 후 버퍼의 크기 :" + out.getRemaining()+ "<br>");
	
	//다양한 타입의 값 출력
	out.print(1);
	out.print(false);
	out.print('가');
	%>
	

</body>
</html>