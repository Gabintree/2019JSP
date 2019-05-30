<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.io.FileReader" %>


<!DOCTYPE html>
<html>

<% FileReader reader = new FileReader (application.getRealPath ("20190530_HelloJtl.jsp")); %>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<pre>
		<c:out value="<%= reader %>" escapeXml="true"/>

		<c:out value=" ${reader}" escapeXml="true"/> <!--  이렇게 하면 아무 것도 안 나와 -->
		
	</pre>

</body>
</html>