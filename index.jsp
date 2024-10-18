<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>

<style type="text/css">
.main{
margin-top:40px;
display:block;
height:30vh;
margin:50px auto;
width:25vw;
border: 2px solid;
background-color:aquamarine;
box-shadow: 1px 1px 5px black;
border-radius:15px;
}

h1{
font-weight:bold;
color:red;
text-align:center
}

button{
background-color:DodgerBlue;
font-weight:bold;
padding:5px;
border-radius:10px;
margin-left:20px;
}
</style>
</head>
<body>

   // <% response.sendRedirect("login.jsp"); %> //
<div class="main">
  <h2>Welcome to EMS</h2>
 
<a href="reg.jsp"><button type="submit">Click Here to Register</button></a> <br> <br>

<a href="allemp"><button>View All Employee</button></a>
<a href="login.jsp"><button>Login</button></a>  
  
  <script>
  
  let msgEle=document.getElementById("msg");
  setTimeout(() => {
 	msgEle.style.display="none";
 }, 2000);


  
  </script>
  </div>
  
  
</body>
</html>