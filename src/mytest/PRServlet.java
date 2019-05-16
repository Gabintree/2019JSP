package mytest;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.jar.Attributes.Name;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PRServlet")
public class PRServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PRServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		response.setContentType("text/html; charset=UTF-8");	
	
		PrintWriter out = response.getWriter();
		String name=request.getParameter("name");
		String mail=request.getParameter("mail");
		String lunch=request.getParameter("lunch");
		String[] food=request.getParameterValues("food");

			
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hello.Servlet!</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>");
		out.println("name : [" + name + "]"+"</br>");
		out.println("mail : [" + mail + "]<br>");
		out.println("lunch : [" + lunch + "]<br>");
		out.println("food : ");
		for(int i=0; i <food.length;i++) {
			out.println("[" + food[i] + "]");
		}
		
		out.println("</h2><br/>");
		out.println("</body>");
		out.println("</html>");
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		String name=request.getParameter("name");
		String mail=request.getParameter("mail");
		
		
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hello.Servlet!</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>");
		out.println("name : [" + name + "]"+"</br>");
		out.println("mail : [" + mail + "]");
		out.println("</h2><br/>");
		out.println("</body>");
		out.println("</html>");
	}

}
