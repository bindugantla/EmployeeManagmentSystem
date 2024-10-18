<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login here</title>

<style type="text/css" >
.form{
display:block;
height:35vh;
margin:50px auto;
width:25vw;
border: 2px solid;
background-color:orange;
box-shadow: 1px 1px 5px black;
}
.form h1{
text-align:center;
}
.form .main{
margin-left:50px;
}
.main input{
padding:5px;
width:15vw;
}
.main button{
margin-left:60px;
background-color:blue;
font-weight:bold;
padding:10px;
border-radius:5px;
color:white;
margin-top:20px
}
</style>

</head>
<body>
<h2> <%= session.getAttribute("name") %></h2>

  <% 
   session.invalidate();
  %>

      <div class="form">
      <h1>Login</h1>
    <form action="login" method="post" class="main">    
	                                              
		<fieldset>
			<legend>Login Details</legend>
         
			<label>Email :</label> <br> 
			<input type="email" name="email" placeholder="Enter email"> <br> <br>
			<label>Password :</label>   <br> 
			<input type="text" name="password" placeholder="Enter password"> <br> <br>
			
             
			<button type="submit">LOGIN</button>

		</fieldset>

	</form>
    </div>
    
 <h2>Don't have account <a href="reg.jsp" >click here</a> to create</h2>

</body>
</html>