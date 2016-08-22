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

public class Comments extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ResultSet rs;
	PreparedStatement pst;
    public Comments() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ToConnect cn=new ToConnect();
		Connection con=cn.getConnection();
		String username=request.getParameter("username");
		String comments=request.getParameter("textarea");
		System.out.println(username);
		System.out.println(comments);
     try {
		PreparedStatement ps =con.prepareStatement
		                     ("insert into comments values(?,?)");
		ps.setString(1, username);
		ps.setString(2, comments);
		request.setAttribute("username", username);
	    RequestDispatcher rs = request.getRequestDispatcher("Welcome.jsp");
	    rs.forward(request, response);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}

}
