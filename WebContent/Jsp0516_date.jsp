<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Date" %>

<%!
	String hello = "Hello!";
	String world = "World!";
	
	public int add (int a, int b) {
		return a+b;
	}

%>

<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h3>날짜/시간 출력</h3>

<%

Date today = new Date();
SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss");

%>

<h3>현재 날짜 : <%=  date.format(today) %> </h3>

<h3>현재 시간 : <%= time.format(today) %></h3>

<%@ include file = "Jsp0515_Ncstest.html" %>
<%@ include file = "Jsp0514_form.html" %>

<%
	String num1= request.getParameter("num1");
	String hel="Hello!";
	String wor="World";
	if(num1!=null){
		
		for(int i=1;i<=Integer.parseInt(num1); i++){
			out.print("<h" + i + ">"+ hello + " "+world + "</h" + i + ">");
			if(i==Integer.parseInt(num1)){
%>
				<h1> 스크립틀릿 내 for문의 마지막 수행입니다.</h1>
<%
			} else {
%> <h1>스크립틀릿 내 for문 수행중입니다.</h1>
<%
			}
		}
	}
%>


<% int num = add(2, 3); %>
<%= num %>번 반복합니다.<br/>
<%= add(2, 3) %>

<%
	for(int i =1; i<= num; i++) {
%>  <%=hello%> <%=world%><br/>
<%
}
%>




</body>
</html>