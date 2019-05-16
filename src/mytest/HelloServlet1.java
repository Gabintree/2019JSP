package mytest;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet1")
public class HelloServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("mail");
		String nameUTF_8= new String(name.getBytes("ISO-8859-1"),"utf-8");
		
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hello.Servlet!</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>Hello Servlet!</h2><br/>");
		out.println("<h3>Message from doGet method!</h3>");
		out.println("name : [" + name + "]");
		out.println("email : [" + email + "]");
		out.println("</body>");
		out.println("</html>");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter  out = response.getWriter();
		String name = request.getParameter("name");
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hello.Servlet!</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>Hello Servlet!</h2><br/>");
		out.println("<h3>Message from doPost method!</h3>");
		out.println("name : [" + name + "]");
		out.println("</body>");
		out.println("</html>");
		
	}

}
