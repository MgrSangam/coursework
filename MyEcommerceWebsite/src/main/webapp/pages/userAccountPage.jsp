<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/MyEcommerceWebsite/css/userStyles.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

</head>
  <body>
    <jsp:include page="nav.jsp" />
      <div class="container">
        <div class="user-profile">
          <i class='bx bxs-user-account'></i>
        </div>
        
        <div class="rightbox">
          <div class="profile tabshow">
            <h1 class="head">Personal info</h1>
               <h2>User ID</h2>
            <input type="text"
            class="input" placeholder="JaneHoe">
            <h2>Full Name</h2>
            <input type="text"
            class="input" placeholder="Jane DOE">
            <h2>Birthday</h2>
            <input type="text"
            class="input" placeholder="April,20 1992">
            <h2>Gender</h2>
            <input type="text"
            class="input" placeholder="Female">
            <h2>Email</h2>
            <input type="text"
            class="input" placeholder="mero@email.com">
            <h2>Password</h2>
            <input type="password"
            class="input" placeholder="123">
            <button class="btn">Update</button>

          </div>
          </div>
          </div>
    <script>src="jQuery/jquery.js"</script>
 
<jsp:include page="footer.jsp" />
  </body>
</html>