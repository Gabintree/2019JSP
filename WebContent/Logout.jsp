<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	안전하게 로그아웃되었습니다. 이용해 주셔서 감사합니다.<hr/>
	다시 로그인 하시려면 아이디와 비밀번호를 입력하시오.<hr/>
	<jsp:include page="Login.jsp"></jsp:include>
	<hr/>
<input type="button" onclick="location.href('Login.jsp')" value="첫화면으로" />
</body>
</html>