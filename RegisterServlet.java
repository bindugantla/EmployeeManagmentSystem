package emss;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns ="/reg")
public class RegisterServlet extends HttpServlet
{
   @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
{
	String id=req.getParameter("id");
	String name=req.getParameter("name");
	String email=req.getParameter("email");
	String pass=req.getParameter("password");
	String salary=req.getParameter("salary");
	String dno=req.getParameter("dno");
	PrintWriter pw=resp.getWriter();
	pw.write("<html><body><h1 id='msg'>Registration successfully</h1></body></html>");
	RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
	rd.include(req, resp);

	
	try 
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root", "Root");
		PreparedStatement ps=con.prepareStatement("insert into emp values(?,?,?,?,?,?)");
		
		ps.setInt(1,Integer.parseInt(id));
		ps.setString(2, name);
		ps.setString(3, email);
		ps.setString(4, pass);
		ps.setDouble(5, Double.parseDouble(salary));
		ps.setInt(6, Integer.parseInt(dno));
		
		int row=ps.executeUpdate();
		System.out.println(row + " row inserted");
		ps.close();
		con.close();
		


	} 
	catch (ClassNotFoundException | SQLException e) 
	{
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
}
