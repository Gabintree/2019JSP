<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mytest.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<h1>JSP</h1>
	
<h3>
<%
	Position po = new Position(30, 70);
	out.println("x.Postion = " + po.getXPos() + "<br>");
	out.println("y.Postion = " + po.getYPos());
	
%>
</h3>
<h1> 6단</h1>
<%
	
	int b = 6;
	for(int i = 1; i <10; i++){
		out.println(b + "x" + i + "=" + b*i + "<br/>");
	}

%>

</body>
</html>