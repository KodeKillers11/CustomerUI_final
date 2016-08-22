package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ResultSet rs;
	PreparedStatement pst;
   
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		 		response.setContentType("text/html;charset=UTF-8");
		 		PrintWriter out = response.getWriter();

				String username=request.getParameter("username");
				String password=request.getParameter("password");
				System.out.println(username);
				System.out.println(password);
				
				if(Validate.checkUser(username, password))
				{
					request.setAttribute("username", username);
				    RequestDispatcher rs = request.getRequestDispatcher("Welcome.jsp");
				    rs.forward(request, response);
				}
				else
				{
				   out.println("Username or Password incorrect");
				   RequestDispatcher rs = request.getRequestDispatcher("newform.html");
				   rs.include(request, response);
				}
				
	}

}
