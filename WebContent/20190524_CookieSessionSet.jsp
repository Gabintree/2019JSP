<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 세션 관리</title>
</head>
<body>

<%
	String rememberId = request.getParameter("rememberId");
	String id = request.getParameter("id");
	Cookie cookieRememberId;
	Cookie cookieId;
	Cookie cookieLoginStatus;
		
	if(rememberId != null && rememberId.equals("keep")){
		cookieRememberId = new Cookie("rememberId", "keep");
	}else {
		cookieRememberId = new Cookie("rememberId", "temp");
	}
	cookieId = new Cookie("id", id);
	cookieLoginStatus = new Cookie("loginStatus", "login");
	
	cookieId.setMaxAge(5);
	
	response.addCookie(cookieRememberId);
	response.addCookie(cookieId);
	response.addCookie(cookieLoginStatus);
	
	out.println(cookieRememberId.getValue());
	response.sendRedirect("http://localhost:8181/Jsp20190510_start/20190524_CookieSessionChk.jsp");
%>
</body>
</html>