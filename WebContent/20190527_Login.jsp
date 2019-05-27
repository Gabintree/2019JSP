<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, tr, td {0
border : 1px solid black;
}
</style>
</head>
<body>


<%
	String id = "";
	String pw = "";
	String save = "";
	
	if(session.getAttribute("id") != null){
		
		id = (String)session.getAttribute("id");
		pw = (String)session.getAttribute("pw");
		save = "checked";
	}
	
%>


<p>아이디와 비밀번호를 입력하십시오.</p>
<hr>

 <form action = "20190527_Logined.jsp" method = "post">
 	<table>
 		<tr>
 			<td>아이디</td>
 			<td><input type = "text" name="id" value = "<%=id%>"></td>
 		</tr>
 		<tr>
 			<td>비밀번호</td>
 			<td><input type = "password" name="pw" value = "<%=pw%>"></td>
 		</tr>
 		<tr>
 			<td colspan="2" align="right"><input type ="checkbox" name = "save" value="save" <%=save%>> 아이디/비밀번호 저장</td>
 		</tr>
 		<tr>
 			<td colspan="2" align="right"><input type ="submit" value="로그인"></td>
 		</tr>
 		
 
 
 
 	</table>
 </form>
</body>
</html>