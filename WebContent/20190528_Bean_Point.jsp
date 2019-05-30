<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>gabin test</h2>

<jsp:useBean id="Bean_Point" class = "mytest.Bean_Point"/>
  <%
  
  	int a = 5;
  	int b = 0;
  	
  	
  	for(int i = 0; i <= 100; i++){
  		 b = b + i;
  	}
  		out.println(b+"</br>");
  		out.println("</br>");
  		
  	for(int i=1; i<10;i++){
  		out.println(a + "x" + i + "=" + a*i + "</br>");
  	}
  
  %>
<h2>5단 끝!</h2>

<%
//	Bean_Point p1 = new Bean_Point();
//	Bean_Point p2 = new Bean_Point(30, 50);

	Bean_Point.setX(30);
	Bean_Point.setY(20);

	out.println(Bean_Point.getX()+"</br>");
	out.println(Bean_Point.getY()+"</br>");
//	out.println(Bean_Point.getX()+"</br>");
//	out.println(Bean_Point.getY()+"</br>");
%>

</body>
</html>


 