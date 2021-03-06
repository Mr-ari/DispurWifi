package com.login.check;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.object.user.User;

/**
 * Servlet implementation class LoginCheck
 */
@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCheck() {
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
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		User user = LoginValidation.validate(uname, pass);
		if(user == null) {
			PrintWriter out = response.getWriter();  
			response.setContentType("text/html"); 
			out.println("<script type=\"text/javascript\">");  
			out.println("alert('Invalid Username or Password');");  
			out.println("window.location.href='index.jsp';");
			out.println("</script>");
		}
		else if(user.getRole().equals("admin")) {
			
		}
		else {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			request.getRequestDispatcher("/userTariffMgmt.jsp").forward(request, response);
		}
		
	}

}
