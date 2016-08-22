package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ResultSet rs;
	PreparedStatement pst;
	
    public signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ToConnect cn=new ToConnect();
		Connection con=cn.getConnection();
		
			String customer_name= request.getParameter("customer_name");
			String user_name= request.getParameter("user_name");
			String password= request.getParameter("password");
			String phno= request.getParameter("phno");
			String address= request.getParameter("address");
			String fios= request.getParameter("fios");
			String dsl= request.getParameter("dsl");
			String phone= request.getParameter("phone");
			String mobile= request.getParameter("mobile");
			String customer_id= "11";
			
			try {
				PreparedStatement ps =con.prepareStatement
				        ("insert into customers values(?,?,?,?,?,?,?,?,?,?)");
				
				ps.setString(1, customer_name);
				ps.setString(2, customer_id);
				ps.setString(3, user_name);
				ps.setString(4, password);
				ps.setString(5, phno);
				ps.setString(6, address);
				ps.setString(7, fios);
				ps.setString(8, dsl);
				ps.setString(9, phone);
				ps.setString(10, mobile);
				ps.execute();
				
			    response.sendRedirect("newform.html");
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
	}

}
