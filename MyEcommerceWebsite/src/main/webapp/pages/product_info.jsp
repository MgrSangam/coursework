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
<title>Products</title>
<link rel="stylesheet" text="text/css" href="/MyEcommerceWebsite/css/product_info.css">
<jsp:include page="nav.jsp" />
</head>
<body>
<section>
		<div class="container flex">
			<div class="left">
			<%
              Connection conne =  null;
              Statement sts = null;
              ResultSet rss = null;
              try
              {
            	  Class.forName("com.mysql.jdbc.Driver");
            	  conne = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce_database","root","");
            	  sts=conne.createStatement();
            	  
            	  String qery = ProductUtils.GET_ALL_PRODUCT_INFO;
            	  rss=sts.executeQuery(qery);
            	  
            	  while(rss.next())
            		 
            	  {
            		  %>
            		  <div class="main_image">
					<img class="product_img" src="/MyEcommerceWebsite/images/products/<%=rss.getString(6) %>">
				</div>
				
			</div>
			<div class="right">
				<h3><%= rss.getString(2)%></h3>
				<h4>
					<%= rss.getString(3) %>
				</h4>
				<p><%= rss.getString(7)%></p>
				<h5>Color-SPACE GRAY</h5>
				<div class="color flex1">
					<span></span> <span></span> <span></span> <span></span> <span></span>
					<span></span> <span></span>
				</div>
				<h5>Number</h5>
				<div class="row ">
					<div class="large-6 small-12 column left-align">
						<div class="block_quantity clearfix">
							<span class="text_specification">Quantity</span>
							<div class="block_quantity__chooseBlock">
								<input class="block_quantity__number" name="quantityNumber"
									type="text" min="1" value="1">
								<button class="block_quantity__button block_quantity__up"></button>
								<button class="block_quantity__button block_quantity__down"></button>
							</div>
						</div>
            		  
            		  <% 
            	  }
            	  rss.close();
            	    sts.close();
            	    conne.close();
              }catch(Exception ex){
            	  
              }
              %>
				
					</div>

					<button type="submit">Add to Cart</button>
					<button type="submit">Buy Now</button>
				</div>
			</div>
		</div>
	</section>
	<script>
		function img(anything) {
			document.querySelector('.slide').src = anything;
		}

		function change(change) {
			const line = document.querySelector('.home');
			line.style.background = change;
		}

		window.onload = function() {
			var up = document.getElementsByClassName('block_quantity__up')[0], down = document
					.getElementsByClassName('block_quantity__down')[0], input = document
					.getElementsByClassName('block_quantity__number')[0];

			function getValue() {
				return parseInt(input.value);
			}

			up.onclick = function(event) {
				input.value = getValue() + 1;
			};
			down.onclick = function(event) {
				if (input.value <= 1) {
					return 1;
				} else {
					input.value = getValue() - 1;
				}

			}
		};
	</script>
	
		<jsp:include page="footer.jsp" />

</body>
</html>