<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table, tr, td {
border : 1px solid black;
}
</style>
<body>
 <%
 
 	String id = request.getParameter("id");
 	String pw = request.getParameter("pw");
	String save = request.getParameter("save");
	
	if(save!=null && save.equals("save")){
		
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		session.setMaxInactiveInterval(10);
	}else{
		session.invalidate();		
	}
	 
%>


<form action = "20190527_Logout.jsp" method="post">
	<table>
		<tr>
			<td><%= id%>님 로그인을 환영합니다.</td>	
		</tr>
		<tr>
 			<td colspan="2" align="right"><input type ="submit" value="로그아웃"></td>
 		</tr>
			
	
	</table>
</form>
</body>
</html>