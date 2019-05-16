<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ page import="mytest.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0510수업</title>
<title>char 데이터 타입</title>
</head>
<body>

<!-- <title>변수사용</title> -->
	<h3>
	<%
		int a = 3;
		int b;
		b=2;
		out.println(a+"<br/>");
		out.println(b+"<br/>");
		a=b;
		b=10;
		out.println(a+"<br/>");
		out.println(b+"<br/>");
	%>
	</h3>
<!--<title> char  데이터 타입</title>  -->	
	<%
		char a1 ='a';
		char a2 = '\u0061';
		char a3 = 0x0061;
		char a4 = 97;
		
		out.print(a1);
		out.print("<hr/>");
	%>
<!--<title>삼항연산자</title>  -->

	<% 
		 int c = 3;
		out.print(((c%2==0) ? "c의 값은 짝수입니다." : "c의 값은 홀수입니다."));
	%>
<!--<title> for문</title>  -->

	<%	
		for(int i = 1; i<= 9; i++){
			out.println("2곱하기" +i + "은(는)");
			out.println(2*i);
			out.println("<br/>");
		}
	%>
	
<br>
<!--<title> while문</title>  -->
	<%
		int i = 1;
	while (i <= 9){
		out.print("2 곱하기" +i +"은(는)");
		out.print(2*i);
		out.print("<br/>");
		i++;
	}
	%>
<br>
<%--<title> do while문</title>  --%>
	
	<%
			i=1;
		do {
			out.print("2 곱하기" +i +"은(는)");
			out.print(2*i);
			out.print("<br/>");
			i++;
		} while (i <= 9);
	%>
<br>
<!--<title> break문</title>  -->
	<%
			for(int j = 1; j <=9; j++) {
				if( j == 5){
				out.print("break문을 만났습니다. 반복을 종료합니다.<br/>");
				break;
			}
				out.print("2 곱하기" + i + "은(는) ");
				out.print(2*1);
				out.print("<br/>");
			}
	%>
<!--<title> continue문</title>  -->	
<br>

	<%
		for(i = 1; i <= 9; i++){
			if( i == 5 ){
				out.print("continue문을 만났습니다. 이번 반복주기를 건너뜁니다.<br/>");
				continue;
			}
	
			out.print("2곱하기" + i +"은(는)");
			out.print(2*i);
			out.print("<br/>");
		}
	%>
<!--<title> String의 메서드</title>  -->	
<br>

	<%
		String str1="String Method!";
		String str2="String method!";
	%>
	<h3>
		str1.length() : <%=str1.length() %><br/>
		str2.length() : <%=str2.length() %><br/>
	</h3><hr/>
	<h3>
		str1.charAt(0) : <%=str1.charAt(0) %><br/>
		str2.charAt(7) : <%=str2.charAt(7) %>
	</h3><hr/>
	<h3>
		str1.indexOf("Method") : <%=str1.indexOf("Method") %><br/>
		str2.indexOf("Method") : <%=str2.indexOf("Method") %><br/>
		str1.indexOf("Method", 4) : <%=str1.indexOf("Method", 4) %><br/>
		str2.indexOf("method", 10) : <%=str2.indexOf("method", 10) %><br/>
		str1.indexOf('M', 1) : <%=str1.indexOf('M',1) %><br/>
		str2.indexOf('M', 1) : <%=str2.indexOf('M',1) %><br/>
	</h3><hr/>

<!--<title> 클래스 사용</title>  -->	
<br>
<%
	Point p = new Point();
out.print("x, y =" + p.x+ " " +p.y + "<br/>");

p.x=3;
p.y=5;

out.print("x+y =" + p.x+p.y + "<br/>");

p.setX(10);
p.setY(17);

out.println("변경 후 p.x : "+ p.getX() + "<br/>");
out.println("변경 후 p.x : "+ p.getY() + "<br/>");
%>




		
		
</body>
</html>