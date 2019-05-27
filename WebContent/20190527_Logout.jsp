<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<p>안전하게 로그아웃 되었습니다. 이용해주셔서 감사합니다.</p>
<hr>
<p>다시 로그인 하시려면<br></p>

<%
 	pageContext.include("20190527_Login.jsp");
 	
%>

<hr>
<a href = "20190527_Login.jsp"><input type="button" value ="첫 화면으로"></a> </body>
</html>