<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie 값 변경</title>
</head>
<body>	
	<h3>생성된 "MyCookie"쿠키의 값을 확인합니다.</h3>
	
	<%
		Cookie[] cookies = request.getCookies();
		if (cookies != null && cookies.length > 0) {
		for(int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("MyCookie")) {	
	%>
	
		<h4> 
		쿠키의 이름 : <%= cookies[i].getName() %><br>
		쿠키의 값 : <%= cookies[i].getValue() %><br>
		</h4><hr>
		<h3>"MyCookie"쿠키의 값을 변경합니다.</h3>

<%
	cookies[i].setValue("MyCookie's&nbspvalue&nbspwas&nbspchanged!");
	response.addCookie(cookies[i]);
%>
	<h4>변경이 완료 되었습니다.</h4>
<%
			}
		}
	}

%>

<form action ="20190524_CookieValueChk.jsp" method ="post">
	<input type = "submit" value ="쿠키변경확인">
</form>
</body>
</html>