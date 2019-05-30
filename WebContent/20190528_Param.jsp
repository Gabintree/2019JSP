<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 요청 파라미터 데이터 사용</title>
</head>

<%
	request.setCharacterEncoding("utf-8");
%>
<body>
	이름 : ${param.name}<br>
	선택 언어 :<br> ${paramValues.language [0]}<br>
					${paramValues.language [1]}
					${paramValues.language [2]}
					${paramValues.language [3]}

</body>
</html>