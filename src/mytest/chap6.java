package mytest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/chap6")
public class chap6 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public chap6() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String namyeo = request.getParameter("namyeo");
		String id = request.getParameter("id");
		String ad = request.getParameter("ad");
		String tel = request.getParameter("tel");
		String mail = request.getParameter("mail");
		String[] hobby = request.getParameterValues("hobby");
		
		
		out.println("이름 : " + name);
		out.println("<hr>");
		out.println("성별 : " + namyeo);
		out.println("<hr>");
		out.println("아이디 : " + id);
		out.println("<hr>");
		out.println("주소 : " + ad);
		out.println("<hr>");
		out.println("전화번호 : " + tel);
		out.println("<hr>");
		out.println("이메일주소 : " + mail);
		out.println("<hr>");
		out.println("취미 : <br>" );
		
				
		if(hobby==null) {
			out.println("[선택하신 취미가 없습니다.]");
		}else {
			out.println("<style> table, tr, td { border : 1px solid black; } </style>");
			out.println("<table>");
			for(int i = 0; i < hobby.length; i++) {
				out.println("<tr><td>" + hobby[i] + "</td></tr>");
			}
			out.println("</table>");
		
		}
	}
}
