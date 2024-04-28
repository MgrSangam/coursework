<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet"  href="/MyEcommerceWebsite/css/login.css">

</head>
<body>


<div class="wrapper">



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
		<form action="../LoginServlet" method="get">
			<h1><i class = 'bx bxs-user-rectangle'></i>Login</h1>
			
			<% 
String loginMessage = (String) session.getAttribute("LoginMessage");
if (loginMessage != null) {
%>
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong><%= loginMessage %></strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
	session.removeAttribute("loginMessage");
%>
<% } %>
			<div class="input-box">
				<input type="text" placeholder="Username" name="username" id="email "required>
				<i class='bx bxs-envelope'></i>
			</div>
			<div class="input-box">
				<input type="password" placeholder="Password" name="password" id="password" required>
				<i class='bx bxs-lock' ></i>
			</div>
			<div class="remember-forgot">
				<label><input type= "checkbox">Remember me</label>
				<a href= "#">Forgot password?</a>
			</div>
			<button type="submit"class="btn" >Login</button>
			<div class="register-link">
			<p>Don't have an account? </p>
			<a href="registration.jsp">Register now</a></div>
		</form>
	</div>
	

	

</html>