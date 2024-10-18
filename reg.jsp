<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="reg" method="post">    
	                                              
		<fieldset>
			<legend>Registration Details</legend>
            <label>Eid : </label> <br> 
            <input type="number" name="id" placeholder="enter id"> <br> <br>
			<label>Name :</label>  <br> 
			<input type="text" name="name" placeholder="Enter name"> <br> <br>
			<label>Email :</label> <br> 
			<input type="email" name="email" placeholder="Enter email"> <br> <br>
			<label>Password :</label>   <br> 
			<input type="text" name="password" placeholder="Enter password"> <br> <br>
			<label> Salary :</label>   <br> 
             <input type="number" name="salary" placeholder="enter salary">  <br> <br>
             <label>Dno :</label> <br> 
             <input type="number" name="dno" placeholder="Enter dept number"> <br> <br>
             
			<button type="submit">Registration</button>

		</fieldset>

	</form>

<h2>Already have Account <a href="login.jsp">Click here</a> to login</h2>



</body>
</html>