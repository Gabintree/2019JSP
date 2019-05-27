<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	String loginStatus = null;
	String rememberId = "temp";
	String id = null;
	String pw = null;
	if (cookies != null && cookies.length > 0){
		for (int i=0 ; i < cookies.length ; i++){
			if (cookies[i].getName().equals("rId") && cookies[i].getValue().equals("keep")){
				rememberId = cookies[i].getValue();
			}
			if (cookies[i].getName().equals("id")){
				id = cookies[i].getValue();
			}
			if (cookies[i].getName().equals("pw")){
				pw = cookies[i].getValue();
			}
		}
	}
%>
	
<form action="Logined2.jsp" method="post">
	아이디와 비밀번호를 입력하십시오<hr/>
	<table border="1">
		<tr>
			<td align="center">아이디</td>
			<td><input type="text" name="id" value="<%=(id == null || rememberId.equals("temp") ? "" : id) %>" /></td>
		</tr>
		<tr>
			<td align="center">비밀번호</td>
			<td><input type="password" name="pw" value="<%=(pw == null || rememberId.equals("temp") ? "" : pw) %>"/></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="checkbox" name="rememberId" value="keep" <%= rememberId == null || rememberId.equals("temp") ? "" : "checked=\"checked\"" %>/> 아이디/비밀번호 저장
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="submit" value="로그인" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>