<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="score" value="93"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${score>=90}">
		<h3>A점입니다.</h3>
		</c:when>
		<c:when test="${score>=80}">
		<h3>B점입니다.</h3>
		</c:when>
		<c:when test="${score>=70}">
		<h3>C점입니다.</h3>
		</c:when>
		<c:when test="${score>=60}">
		<h3>D점입니다.</h3>
		<c:otherwise>
		<h3>F점입니다.</h3>
		</c:otherwise>
		</c:when>	
	</c:choose>
	
</body>
</html>