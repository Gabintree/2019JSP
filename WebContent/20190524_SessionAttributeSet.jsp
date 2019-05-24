<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 내장객체를 이용한 로그인/로그아웃 구현</title>
</head>
<body>
	<%
		String rememberId = request.getParameter("rememberId");
		session.setAttribute("ID", request.getParameter("id"));
		
		response.sendRedirect("http://localhost:8181/Jsp20190510_start/20190524_SessionChk.jsp");
	%>
</body>
</html>