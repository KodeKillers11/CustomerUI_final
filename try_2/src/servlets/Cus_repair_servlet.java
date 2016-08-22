package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Cus_repair_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ResultSet rs;
	PreparedStatement pst;
   
    public Cus_repair_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String option=request.getParameter("type");
		System.out.println(option);
		ToConnect cn=new ToConnect();
		Connection con=cn.getConnection();
		request.getRequestDispatcher("Successful.html");
	}

}
