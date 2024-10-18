package emss;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/update")
public class UpdateServlet extends HttpServlet
{
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
    	 int id=Integer.parseInt(req.getParameter("id"));
    	 String name=req.getParameter("name");
    	 String email=req.getParameter("email");
    	 String pass=req.getParameter("password");
    	 double salary=Double.parseDouble(req.getParameter("salary"));
    	 int dno=Integer.parseInt(req.getParameter("dno"));
    	 
    	 try 
    	 {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems", "root", "Root");
			PreparedStatement ps=con.prepareStatement("update emp set name=? , email=? , password=? ,salary=? ,dno=? where id=?");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pass);
			ps.setDouble(4, salary);
			ps.setInt(5, dno);
			ps.setInt(6, id);
			
		int row=ps.executeUpdate();
		System.out.println(row+" : Row Updated ");
		ps.close();
		con.close();
	
			
		 }
    	 catch (ClassNotFoundException | SQLException e) 
    	 {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	 
    	 PrintWriter pw=resp.getWriter();
    	 pw.write("<html><body><h1 id='msg'> Employee updated sucessufully</h1></body></html>");
    	 
    	 try 
    	 {
    		Class.forName("com.mysql.cj.jdbc.Driver");
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems", "root","Root");
    		Statement s=con.createStatement();
    		ResultSet rs=s.executeQuery("select * from emp");
    		
    		req.setAttribute("rs", rs);
    		RequestDispatcher rd=req.getRequestDispatcher("allemp.jsp");
    		rd.include(req, resp);
//    				while(rs.next())
//    			{
//    				System.out.println(rs.getInt(1));
//    				System.out.println(rs.getString(2));
//    				System.out.println(rs.getString(3));
//    				System.out.println(rs.getDouble(4));
//    				System.out.println(rs.getInt(5));
//    				System.out.println(rs.getString(6));
//    			}
    			 rs.close();
    			 s.close();
    			 con.close();

    	 } 
    	 catch (ClassNotFoundException | SQLException e) 
    	 {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	 }
    	 
    }
}
