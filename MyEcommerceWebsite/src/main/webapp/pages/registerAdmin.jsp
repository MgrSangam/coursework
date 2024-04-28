<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Admin</title>
<link rel="stylesheet"  href="/MyEcommerceWebsite/css/registration.css">

</head>
<body>



<div class="registration-container">

<% 
String message = (String) session.getAttribute("message");
if (message != null) {
%>
<script>
alert("<%= message %>");
<% 
  session.removeAttribute("message"); 
%>
</script>
<% } %>

	
    <h2 class="registration-heading">Registration Form</h2>
    <form action="../AdminRegisterServlet" method="post" class="register-form">
    
        <label for="firstname">First Name:</label>
        <input type="text" id="firstname" name="firstname" class="input-field" required><br>

        <label for="lastname">Last Name:</label>
        <input type="text" id="lastname" name="lastname" class="input-field" required><br>

		<label for="birthday">Birth Day:</label>
        <input type="date" id="birthday" name="birthday" class="input-field" required><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" class="input-field" required><br>

        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone" class="input-field" required><br>

        <label for="username">User Name:</label>
        <input type="text" name="username" class="input-field" required><br>

        <label for="password">Password:</label>
        <input type="text" id="password" name="password" class="input-field" required><br>
        
        
        <label for="retypepassword">Re Type-Password:</label>
        <input type="text" id="retypepassword" name="retypepassword" class="input-field" required><br>
        <br>
        <div class="submit">
            <input  type="submit" value="Register">
        </div>
        
        <div class="submit">
            <input type="submit" value="Login">
        </div>

    </form>
</div>


	



</body>
</html>