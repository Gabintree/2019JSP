package mytest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ncstest")
public class Ncstest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Ncstest() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String mbname = request.getParameter("mbname");
		String mbid = request.getParameter("mbid");
		String mbpw = request.getParameter("mbpw");
		String mbpw_re = request.getParameter("mbpw_re");
		String pwhintans = request.getParameter("pwhintans");
		String email = request.getParameter("email");
		String inputmode = request.getParameter("tel");
		
		if(6<=mbpw.length()) {
			out.println("ȸ�������� �Ǿ����ϴ�.");
		}else { out.println("��й�ȣ�� 6�ڸ� �����Դϴ�. �ٽ� �Է��� �ּ���.");
		
	}

	}
}
