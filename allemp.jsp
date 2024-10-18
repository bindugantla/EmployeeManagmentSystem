<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Employee Page</title>
<style type="text/css">
#createbut{
margin-top:20px;
margin-left:70%;
}
body{
background-color:gainsboro;
}
#createbut button{
margin-bottom:10px;
background-color:blue;
padding:10px;
width:8vw;
border-radius: 3px ;
color:white;
font-weight:bold;
}
.table{
background-color:teal;
color:white;
width:60vw;
height:80vh;
}
.table thead{
background-color:orange
}
.table #btn{
	border-radius:solid 5px;
	padding:5px;	
}
h1{
color:purple;
font-style:itallic;
font-size:40px;
text-decoration:underline;
}


</style>

</head>
<body>
   <h2 style="text-align:center;">All employee page</h2>
   <a  id="cretebut" href="reg.jsp"><button>New Registration</button></a>
   <h2><%=session.getAttribute("name") %></h2>
   <table border="3" cellpadding="10" cellspacing="0" align="center" class="table" >
   <thead>
   <tr>
   <th>Id</th>
   <th>Name</th>
   <th>Email</th>
   <th>Password</th>
   <th>Salary</th>
   <th>Dno</th>
   <th colspan="2">Action</th>
   </tr>
   </thead>
   <tbody>
   
    <%
      ResultSet rs=(ResultSet) request.getAttribute("rs");
      while(rs.next())
      {
   %>
   <tr>
    <td><%= rs.getString(1)         %> </td>
    <td><%= rs.getString(2)         %> </td>
    <td><%= rs.getString(3)         %> </td>
    <td><%= rs.getString(4)         %> </td>
    <td><%= rs.getString(5)         %> </td>
    <td><%= rs.getString(6)         %> </td>
    <td><a href="delete?id=<%= rs.getString(1)    %>"><button>Delete</button></a></td>
    <td><a href="update.jsp?id=<%=rs.getString(1) %>"><button>Update</button></a></td>
    
    
   
   
   </tr>
    <%	
    
      }
    %>
   </tbody>
   
   </table>
   <center><a href="login.jsp"><button margin-top="10">Logout</button></a></center>   
  
       	
   <script type="text/javascript">
   
   const msgEle=document.getElementById("msg");
   setTimeout(() => {
	msgEle.style.display="none";
}, 2000);
   
   </script> 
   
   
</body>
</html>