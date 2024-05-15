<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    <%@ page import="com.techno.ecommerce.controller.*" %>
<%@ page import="com.techno.ecommerce.model.*" %>
<%@ page import="com.techno.ecommerce.servlet.*" %>
<%@ page import="com.techno.ecommerce.util.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Audio</title>

<link rel="stylesheet" text="text/css" href="/MyEcommerceWebsite/css/category.css">
<jsp:include page="nav.jsp" />
</head>
<body>

<body>

	

<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>



    

    <div class="main_content">

        <div class="wrapper">

        	<div class="side">

            	<h2>Phones</h2>

            	<ul>

                	<li><a href="home.jsp"><i class="fas fa-home"></i>Home</a></li>

                	<li><a href="product-cat.jsp">Brand</a>

                	<br><ul><a href="iphone.jsp" class="ul-menu">iPhone</a></ul>

                	<ul><a href="sansungproduct.jsp" class="ul-menu">Samsung</a></ul>

                	</li>



            	</ul> 

       

        	</div>

        

            <!-- ############################## -->

            <!-- <h1 class="title-shop">Phones</h1> -->

            <main class="main bd-grid">
 <%
    	Connection con =  null;
        Statement stss = null;
        ResultSet rsss = null;
        try
        {
      	  Class.forName("com.mysql.jdbc.Driver");
      	  con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce_database","root","");
      	  stss=con.createStatement();
      	  
      	  String qery = ProductUtils.GET_ALL_PRODUCT_INFO;
      	  rsss=stss.executeQuery(qery);
      	  
      	  while(rsss.next())
      		 
      	  {
      		  %>
      		  
      		 <article class="card">

                    <div class="card__img" >

                       <a href="iphone15pro.jsp"><img  src="/MyEcommerceWebsite/images/products/<%=rsss.getString(6) %>" ></a>

                    </div>

                    <div class="card__name">

                        <a href="iphone15pro.jsp"><p><%= rsss.getString(2)%></p></a>

                    </div>

                    <div class="card__precis">

                        <a href="" class="card__icon" ><ion-icon name="heart-outline"></ion-icon></a>

                        

                        <div>

                            <span class="card__preci card__preci--now"><p> <%= rsss.getString(4)%></p>

                        </div>

                        <a href="" class="card__icon"><ion-icon name="cart-outline"></ion-icon></a>

                    </div>

                </article>
      		 
      		  <% 
      	  }
      	  rsss.close();
      	    stss.close();
      	    con.close();
        }catch(Exception ex){
      	  
        }
   			%>
                

            </main>

        </div>

    </div>

    

 



        <!-- ICONS -->

        <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>





	<jsp:include page="footer.jsp" />

</body>
</html>