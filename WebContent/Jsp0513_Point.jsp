<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="mytest.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>20190513 gabinee</title>
</head>
<body>
  <h2>gabin test</h2>
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
 	Point p1 = new Point();
	Point p2 = new Point(30, 50);
	
	out.println(p1.getX()+"</br>");
	out.println(p1.getY()+"</br>");
	out.println(p2.getX()+"</br>");
	out.println(p2.getY()+"</br>");
%>

</body>
</html>