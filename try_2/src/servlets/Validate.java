package servlets;

import java.sql.*;

public class Validate
 {
	ResultSet rs;
	PreparedStatement pst;
     public static boolean checkUser(String email,String pass) 
     {
      boolean st =false;
      try{
    	  ToConnect cn=new ToConnect();
			Connection con=cn.getConnection();
         PreparedStatement ps =con.prepareStatement
                             ("select * from customers where username=? and pwd=?");
         ps.setString(1, email);
         ps.setString(2, pass);
         ResultSet rs =ps.executeQuery();
         
         st = rs.next();
        
      }catch(Exception e)
      {
          e.printStackTrace();
      }
         return st;                 
  }   
}
