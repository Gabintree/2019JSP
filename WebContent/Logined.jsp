<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String rememberId = request.getParameter("rememberId");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(!id.isEmpty() || !pw.isEmpty() ) { 
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, "system", "1111");
		Statement stmt = conn.createStatement();
		PreparedStatement pstmt = conn.prepareStatement("select member_pw from member where member_id = ?");
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		if (rs.next()){
			if(pw.equals(rs.getString(1))){
				Cookie cookieRememberId;
				Cookie cookieId;
				Cookie cookiePw;
				Cookie cookieLoginStatus;
				
				if (rememberId != null && rememberId.equals("keep")){
					cookieRememberId = new Cookie("rId", "keep");
				} else {
					cookieRememberId = new Cookie("rId", "temp");
				}
				cookieId = new Cookie("id", id);
				cookiePw = new Cookie("pw", pw);
				cookieLoginStatus = new Cookie("loginStatus", "login");
				
				cookieId.setMaxAge(-1);
				
				response.addCookie(cookieRememberId);				
				response.addCookie(cookieId);
				response.addCookie(cookiePw);
				response.addCookie(cookieLoginStatus);
%>
					<form action="Logout.jsp" method="post">
					<table border="1">
						<tr>
							<td align="center"><%= id%>님 로그인을 환영합니다.</td>
						</tr>
						<tr>
							<td align="right">
								<input type="submit" value="로그아웃" />
							</td>
						</tr>
					</table>
					</form>
<%		
			}else { 
%>				
				<form action="Login.jsp" method="post">
				<table border="1">
					<tr>
						<td align="center"><h3>패스워드가 틀렸습니다. 다시 확인해 주세요.</h3></td>
					</tr>
					<tr>
						<td align="right">
							<input type="submit" value="로그인화면으로 이동" />
						</td>
					</tr>
				</table>
				</form>
<% 			}
		}else {
			
			
		}
	}
 %>


</body>
</html>