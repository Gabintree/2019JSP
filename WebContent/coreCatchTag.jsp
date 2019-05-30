<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="java.io.FileReader" %>

<!DOCTYPE html>
<html>
	<c:catch var="reqParameterEx">
	<%
		String strParameter = request.getParameter("NoParameter");
		out.println(strParameter.length());	
	%>
	</c:catch>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<pre>
		<c:out value = "${reqParameterEx}"/>
		
	</pre>


</body>
</html>