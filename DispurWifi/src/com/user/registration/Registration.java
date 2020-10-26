package com.user.registration;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.registrationDao.RegistrationDao;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("fname");
		String sname = request.getParameter("sname");
		String addr = request.getParameter("address");
		Long ph = Long.parseLong(request.getParameter("ph"));
		String pass = request.getParameter("pass");
		String conPass = request.getParameter("conpass");
		String email = request.getParameter("email");
		
		if(pass.equals(conPass)) {
			//User user = new User();
			int res = RegistrationDao.insertUser(name, sname, addr, email, conPass, ph);
			if(res == -1) {
				PrintWriter out = response.getWriter();  
				response.setContentType("text/html"); 
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('Cant Register Right Now');");  
				out.println("window.location.href='index.jsp';");
				out.println("</script>");
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("registrationId", String.valueOf(res));
				System.out.print(res);
				request.getRequestDispatcher("RegistrationSuccesful.jsp").forward(request, response);
			}
		}
		else {
			PrintWriter out = response.getWriter();  
			response.setContentType("text/html"); 
			out.println("<script type=\"text/javascript\">");  
			out.println("alert('Password and Confirm Password not matched');");  
			out.println("window.location.href='index.jsp';");
			out.println("</script>");
			//response.sendRedirect("index.jsp");
		}
	}

}
