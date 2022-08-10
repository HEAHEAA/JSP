<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String popupMode= "on"; //팝업페이지 열건지 여부

Cookie[] cookies = request.getCookies(); //쿠키를 읽어 popupMode 값 설정
if(cookies != null){
	for(Cookie c : cookies){
		String cookieName = c.getName();
		String cookieValue = c.getValue();
		if(cookieName.equals("PopupClose")){ //popupClose 쿠키가 존재하면
			popupMode = cookieValue; // popupMode의 값 갱신
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<style>
	div#popup{
		position: absolute; top:100px; left:50px; color:yellow;
		width:270px; height: 100px; background-color:gray;
	}
	
	div#popup>div {
		position: relative; background-color: #ffff; top:0px;
		border: 1px soild gray; padding: 10px; color: balck;
	}
</style>

	<script src="https:/ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
	$(function() {
		$('#closeBtn').click(function () { //닫기버튼 id closeBtn을 누르면 팝업창을 숨김처리 한다.
			$('#popup').hide();
		
		var chVal = $("input:checkbox[id=inactiveToday]:checked").val();
		//id가 inactiveToday 이면서 체크된 체크박스의 val =값을 읽어옴
		
		$.ajax({										//비동기로 요청을 보낸다.
			url : './PopupCookie.jsp', 					//PopupCookie.jsp파일에
			type : 'get' ,  							// http get방식으로 
			data : {inactiveToday : chVal},				// inactiveToday= <chVal 변수의 값> 데이터를
			dataType : "text", 							//응답데이터의 타입은 일반 텍스트
			success : function(resData){ 				//요청성공시
				if(resData != '') location.reload(); //페이지 새로 고침한다.
			}
		})
		});
	});
	</script>
<meta charset="UTF-8">
<title>쿠키를 이용한 팝업 관리 ver 0.1</title>
</head>
<body>
<h2>팝업 메인 페이지(ver0.1)</h2>
<%
	for(int i=1; i<=10; i++){
		out.print("현재 팝업창은" + popupMode + "상태 입니다. <br />");
	}
	if(popupMode.equals("on")){
%>

	<div id="popup">
		<h2 align="center">공지사항 팝업입니다.</h2>
		<div align="right"> <form name=popFrm"">
		<input type="checkbox" id="inactiveToday" value="1" />
		하루동안 열지 않음
		<input type="button" value="닫기" id="closeBtn"/>
		</form>
		</div>
	</div>
<%
	}
%>
</body>
</html>