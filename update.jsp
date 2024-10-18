<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
</head>
<body>
  <%
   Connection con=null;
   PreparedStatement ps=null;
   ResultSet rs=null;
   try 
	 {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems", "root", "Root");
		ps=con.prepareStatement("select * from emp where id=?");
		
		String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		ps.setInt(1, id);
		rs=ps.executeQuery();
		rs.next();
		
	 }
	 catch (Exception e) 
	 {
		e.printStackTrace();
	}

   %>
    <h2><%= session.getAttribute("name") %></h2>
    <h2>Update Page</h2>
    
    <form action="update" method="post">
    
    <fieldset>
			<legend>Update page</legend>
            <label>Eid : </label> <br> 
            <input type="number"  name="id" placeholder="enter  new id" value="<%=rs.getInt(1) %>"> <br> <br>
			<label>Name :</label>  <br> 
			<input type="text"  name="name" placeholder="Enter  new name" value="<%=rs.getString(2) %>"> <br> <br>
			<label>Email :</label> <br> 
			<input type="email"  name="email" placeholder="Enter new  email" value="<%=rs.getString(3) %>"> <br> <br>
			<label>Password :</label>   <br> 
			<input type="text"  name="password" placeholder="Enter new password" value="<%=rs.getString(4) %>"> <br> <br>
			<label> Salary :</label>   <br> 
             <input type="number"  name="salary" placeholder="enter new  salary" value="<%=rs.getDouble(5) %>">  <br> <br>
             <label>Dno :</label> <br> 
             <input type="number"  name="dno" placeholder="Enter  new dept number" value="<%=rs.getInt(6) %>"> <br> <br>
             
			<button type="submit">Update</button>

		</fieldset>
    
    
    </form>
     
</body>
</html>