<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="java.util.*" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head> 
<body>

<%
String id = request.getParameter("id");
String pw =request.getParameter("pw");

Date today = new Date();
SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd "); 
SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss"); 

if(id.equals("admin")&&pw.equals("1111")){
	

%>

<h2>[<%= id%>]님 접속을 환영합니다.</h2>

<h2>접속하신 날짜 및 시간은 <%= date.format(today) + " " + time.format(today) %>입니다.</h2>
<%
}else {
%>
<h2>접속에 실패하였습니다.</h2>

<%
}
%>
</body>
</html>