<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getProperty 액션태그 사용</title>
</head>
<body>
	<jsp:useBean id ="myMember" class="mytest.Member"/>
	<jsp:setProperty name = "myMember" property="id" value="OKJSP"/>
	<jsp:setProperty name = "myMember" property="password" value="OKPassword"/>

	ID : <jsp:getProperty name ="myMember" property="id"/><br>
	Password : <jsp:getProperty name ="myMember" property="password"/>
	
	
</body>
</html>