<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.util.*" %>

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
<title>가빈이의 아무것도 모르는 코딩 연습</title>
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


<title>request 내장객체를 이용한 요청 전송정보</title>

요청 프로토콜 : <%=request.getProtocol() %><br>
요청 방식 : <%=request.getMethod() %><br>
현재 페이지 경로 : <%=request.getContextPath() %><br>
웹 클라이언트 URI : <%=request.getRequestURI() %><br>
웹 클라이언트 URL : <%=request.getRequestURL() %><br>
웹 클라이언트 Query : <%=request.getQueryString() %><br>
웹 클라이언트 호스트명 : <%=request.getRemoteHost() %><br>
웹 클라이언트 IP 주소 : <%=request.getRemoteAddr() %><br>
웹 서버 도메인 : <%=request.getServerName() %><br>
웹 서버 포트 : <%=request.getServerPort() %><br>

<hr>
<p>헤더 정보</p>

<%
Enumeration<String> header = request.getHeaderNames();

while(header.hasMoreElements()){
	String name = (String)header.nextElement();
	String value = request.getHeader(name);
	out.print(name + " : " + value + "<br>");
	
	
}
%>


			<form action="Jsp0516_date.jsp" method="post">
			<label for="name">이름</label>
			<input type="text" id="name" name="name">
			<input type="submit" value="전송">
			</form>
			
<%
String name = request.getParameter("name");
if(name != null){
	String naming=null;
	pageContext.forward("Jsp0516_chap6.jsp");

	}

%>

	포워딩 수행 후 메시지입니다.<br>
	<%out.print("하나<br>"); %>
	<%out.print("둘<br>"); %>
	<%out.print("셋<br>"); %>
	
	
	<%
	out.print("여기는 pageContextForwarded.jsp 페이지 입니다!"); %>
</body>
</html>