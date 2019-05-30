<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setProperty 액션태그 사용</title>
</head>
<body>
	<jsp:useBean id = "myMember" class="mytest.Member"/>
	
	<jsp:setProperty name="myMember" property="id" value="OKJSP"/>
	<jsp:setProperty name="myMember" property="password" value="OKPassword"/>

	ID : <%=myMember.getId() %><br>
	Password : <%=myMember.getPassword() %> 

</body>
</html>