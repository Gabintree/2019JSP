package mytest;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getRequest")
public class getRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public getRequest() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hello.Servlet!</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>Hello Servlet!</h2><br/>");
		out.println("<h3>이 요청은 doPost에서 처리되었습니다.</h3>");
		out.println("name : [" + name + "]");
		out.println("</body>");
		out.println("</html>");
		
		
	}

}
