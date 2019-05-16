<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String redirect = request.getParameter("redirect");
	out.println("redirect 파라미터 값 : " + redirect);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chaop6 page.1</title>
</head>
<body>

	<form action="chap6" method="post">
	<table>
		<tr>
			<td>이름</td>
			<td><input type ="text" name="name"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
			<select name = "namyeo">
				<option value="남자">남자</option>
				<option value="여자">여자</option>
			</select>
			</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type ="text" name="id"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type ="text" name="pw"></td>	
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td><input type = "text" name="pw_re"><input type ="submit" value="비밀번호 확인"></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input type ="text" name="ad"></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type ="tel" name="tel"></td>
		</tr>
		<tr>
			<td>이메일주소</td>
			<td><input type = "email" name= "mail"></td>
		</tr>
		<tr>
			<td>취미</td>
			<td>
				축구 <input type="checkbox" name="hobby" value="축구">
				야구 <input type="checkbox" name="hobby" value="야구">
				농구 <input type="checkbox" name="hobby" value="농구"><br>
				수영 <input type="checkbox" name="hobby" value="수영">
				게임 <input type="checkbox" name="hobby" value="게임">
				독서 <input type="checkbox" name="hobby" value="독서"><br>
				음악 <input type="checkbox" name="hobby" value="음악">
				TV <input type="checkbox" name="hobby" value="TV">
				영화 <input type="checkbox" name="hobby" value="영화"><br>
				연극 <input type="checkbox" name="hobby" value="연극">
				뮤지컬 <input type="checkbox" name="hobby" value="뮤지컬">
				전시 <input type="checkbox" name="hobby" value="전시">
			</td>
		</tr>
	</table>
<hr>
			<input type ="submit" value="회원가입">
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<%-- <% 
	redirect = request.getParameter("redirect");
	if(redirect ==null){
		out.println("redirect가 지정되지 않았습니다.");
	}else if(redirect.equals("ok")){
		response.sendRedirect("http://www.naver.com");
	}else{
		response.sendRedirect("http://localhost:8181/Jsp0516_chap6.jsp");
	}
%>
<%	
	String pw = request.getParameter("pw");
	String pw_re = request.getParameter("pw_re");
	
	if(pw != null && pw_re != null){
		if(pw.equals(pw_re)){
			response.sendRedirect("http://www.naver.com");
		}else {
			response.sendRedirect("http://www.google.com");
		}
	}
%> --%>
</body>
</html>