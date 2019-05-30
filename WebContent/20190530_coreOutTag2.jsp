<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="java.io.FileReader" %>
<!DOCTYPE html>
<html>
<% FileReader reader = null; %>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<pre>
		<c:out value="<%=reader%>" escapeXml="true" default="출력값이 존재하지 않습니다."></c:out>
	</pre>



</body>
</html>