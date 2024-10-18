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
@WebServlet(urlPatterns = "/delete")
public class DeleteServlet extends HttpServlet
{
   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
{
	String id=req.getParameter("id");
	 int eid=Integer.parseInt(id);
	 
//	 int id=Integer.parseInt(req.getParameter("id"));
	
		
	 try 
	 {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems", "root", "Root");
		PreparedStatement ps=con.prepareStatement("delete from emp where id=?");
		ps.setInt(1, eid);
		int row=ps.executeUpdate();
		System.out.println(row +" row deleted");
		ps.close();
		con.close();
		
		
	} 
	 catch (ClassNotFoundException | SQLException e)
	 {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	 PrintWriter pw=resp.getWriter();
	 pw.write("<html><body><h3 id='msg'>Employee deleted successfully with Id: "+id+"</h3></body></html>");
	try 
	{
		getClass().forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems", "root", "Root");
		Statement s=con.createStatement();
		 ResultSet rs=s.executeQuery("select * from emp");
		 req.setAttribute("rs",rs);
		 RequestDispatcher rd=req.getRequestDispatcher("allemp.jsp");
//		 rd.forward(req, resp);
		 rd.include(req, resp);
		
	} 
	catch (ClassNotFoundException | SQLException e) 
	{
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
		

}
}
