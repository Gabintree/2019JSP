<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!

	public int add(int a, int b){
		return a+b;
	}
	public int sub(int a, int b){
		return a-b;
	}
	public int mul(int a, int b){
		return a*b;
	}
	public double div(int a, int b){
		return (double)a/b;
	}
	public int mod(int a, int b){
		return a%b;
	}
	

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table, tr, td {
border : 1px solid black;
} 
table {
width : 700px;
}
</style>
</head>
<body>

<table>
	<caption style = "text-align : center"><h2>구구단 출력</h2></caption>
		<%
		for(int i = 0; i <= 9; i++){
			out.println("<tr>");
			for(int j = 2; j <= 9; j++){
				if(i == 0){
					out.println("<td>" + j + "단</td>");
				}else{
					out.println("<td>"+ j + " X " + i + " = " + (j*i) + "</td>");
				}
			} 
			out.println("</tr>");
		}
		%>
</table>

<h3>10, 3의 오칙 연산 결과</h3>
10과 3의 덧셈 결과는 [<%= add(10,3) %>] 입니다.<br>
10과 3의 뺄셈 결과는 [<%= sub(10,3) %>] 입니다.<br>
10과 3의 곱셈 결과는 [<%= mul(10,3) %>] 입니다.<br>
10과 3의 나눗셈 결과는 [<%= div(10,3) %>] 입니다.<br>
10과 3의 나머지 결과는 [<%= mod(10,3) %>] 입니다.<br>







</body>
</html>