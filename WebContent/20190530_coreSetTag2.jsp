<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="mytest.Chap13Member" %>

	<jsp:useBean id ="member1" class="mytest.Chap13Member"/>
	<% Chap13Member member2 = new Chap13Member(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set target="<%=member1 %>" property="name" value="이지훈1"/>
	
	<c:set var ="mem2" value="<%=member2 %>"/>
	<c:set target="${mem2}" property="name" value="이지훈2"/>

	<h2>member1 : ${member1.name}</h2>
	<h2>member2 : ${mem2.name}</h2>
	<h2>member2 : ${member2.name}</h>
	
</body>
</html>