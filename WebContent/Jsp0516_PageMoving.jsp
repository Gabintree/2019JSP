<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head> 
<body>



페이지 이동 방식을 지정합니다.
<br>

<%
	String move = request.getParameter("redirect");
	
	if(move != null){
		if(move.equals("redirect")) {
			response.sendRedirect("http://localhost:8181/Jsp20190510_start/Jsp0517_PageMovingRedirect.jsp");
		} else if(move.equals("forward")){
			pageContext.forward("Jsp0517_PageMovingForward.jsp");
		} else if(move.equals("include")){
			pageContext.include("/Jsp0517_PageMovingInclude.jsp");
		} 
	}
%>

PageMoving.jsp 페이지의 마지막 입니다.




</body>
</html>