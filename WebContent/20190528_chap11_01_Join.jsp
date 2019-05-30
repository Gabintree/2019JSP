<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, tr, td{
border : 1px solid black;
}
td {
text-align :center;
}
</style>
<%
	request.setCharacterEncoding("utf-8");
%>
</head>
<body>

	이름 : ${param.name} 
	<hr>
	성별 : ${param.namyeo} 
	<hr>
	아이디 : ${param.id} 
	<hr>
	주소 : ${param.ad} 
	<hr>
	전화번호 : ${param.tel} 
	<hr>
	이메일주소 : ${param.mail} 
	<hr>
	취미 :  
		<table>
<% 

%>		
		
     		<tr>
				<td>${paramValues.hobby[0]} </td>
			</tr>
			
		</table>
	

</body>
</html>