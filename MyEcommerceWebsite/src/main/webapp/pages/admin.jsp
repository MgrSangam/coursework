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
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin</title>
 <link rel="stylesheet" text="text/css" href="/MyEcommerceWebsite/css/admin.css">
</head>
<body>
<%
String message = (String) session.getAttribute("CategoryMessage");
if (message != null){
%>
<script>
alert("<%= message %>");
<%
	session.removeAttribute("CategoryMessage");
%>
</script>
<% 
}
%>
  <div class="content_div">
    <div class="side_content_div">
      <button class="function_button_1" onclick="document.location='home.jsp'">
        Techno
      </button>
      <button class="function_button_2" onclick="show_employee_div()">
        Customers
      </button>

      <button class="function_button_3" onclick="show_product_div()">
        Products

      </button>



      <button class="function_button_4" onclick="show_AddProduct_div()">
        Add Products
      </button>

      <button class="function_button_5" onclick="show_Orders_div()">
        Orders
      </button>

      <button class="function_button_6" onclick="show_category_div()">
        Add Category
      </button>



    </div>
  
    <div class="main_content_div">

      <div class="content_div_1" id="div">

        <div class="inside_div_1">
          <div class="second_div_1"> 
            <div class="customer_identify"> 
              <p>Customers <span> 20</span></p> 
            </div>
    
            <div class="search_cust">
              <input  type="text" placeholder="Search by Username">
              <button> 
                Search
              </button>
            </div>
          </div>
  
  
          <div class="table_div">
            <table>
              <tr>
                <th> User Name</th>
                <th> First Name</th>
                <th> Last Name</th>
                <th> Birthday </th>
                <th> Email </th>
                <th> Phone Number </th>
                <th> Action </th>
              </tr>
    
              <%
              Connection conn =  null;
              Statement st = null;
              ResultSet rs = null;
              try
              {
            	  Class.forName("com.mysql.jdbc.Driver");
            	  conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce_database","root","");
            	  st=conn.createStatement();
            	  
            	  String qry = StringUtils.GET_ALL_CUSTOMER_INFO;
            	  rs=st.executeQuery(qry);
            	  while(rs.next())
            	  {
            		  %>
            		  <tr>
            		  		<td><%= rs.getString(1) %></td>
            		  		<td><%= rs.getString(2) %></td>
            		  		<td><%= rs.getString(3) %></td>
            		  		<td><%= rs.getString(4) %></td>
            		  		<td><%= rs.getString(5) %></td>
            		  		<td><%= rs.getString(6) %></td>
            		  		<td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg>
            		  			
            		  		</td>
            		  		
            		  
            		  </tr>
            		  
            		  <% 
            	  }
              }catch(Exception ex){}
              %>
            </table>
          </div>
        </div>

        

      </div>

      <div class="content_div_2" id="div2">
        <div class="inside_div_1">
          <div class="second_div_1"> 
            <div class="customer_identify"> 
              <p>Products <span> 20</span></p> 
            </div>
    
            <div class="search_cust">
              <input  type="text" placeholder="Search by Product Name">
              <button> 
                Search
              </button>
            </div>
          </div>
  
  
          <div class="table_div">
            <table>
              <tr>
                <th> Procduct</th>
                <th> Product Name</th>
                <th> Product Category</th>
                <th> Unit Price </th>
                <th> Description </th>
                <th> Stock</th>
                <th> Action </th>
              </tr>
    
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
            		  <tr>
            		  		
            		  		<td><img src="/MyEcommerceWebsite/images/products/<%=rss.getString(6) %>"></td>
            		  		<td><%= rss.getString(2) %></td>
            		  		<td><%= rss.getString(3) %></td>
            		  		<td><%= rss.getString(4) %></td>
            		  		<td><%= rss.getString(7) %></td>
            		  		<td><%= rss.getString(5) %></td>
            		  		<td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
            		  		
            		  
            		  </tr>
            		  
            		  <% 
            	  }
            	  rss.close();
            	    sts.close();
            	    conne.close();
              }catch(Exception ex){
            	  
              }
              %>

             
    
             
            </table>
          </div>
        </div>
      </div>

      <div class="content_div_4"  id="div5">
      <form action="../CategoryServlet" method="post" class="category-add">
      
        <p class="prod_add"> Add Product</p>

        <div class="pro_name">
          <p> Category Name</p>
          <input class="place" name="categoryname" type="text" placeholder="Enter Category Name">
        </div>

        <div class="pro_name">
          <p> Description</p>
          <input class="place_dec" name="categorydesc" type="text" placeholder="Enter Category Description">
          </div>

          <button class="publish"> Publish </button>
          
          </form>
     	 </div>
     	 
     	 
	<div class="content_div_3" id="div3">
	<form action="../ProductServlet" method="post" enctype="multipart/form-data">
	<p class="prod_add"> Add Product</p>
      <div class="content_3_main_div">
       

        <div class="add_img">
          <p class="img-add"> Add Images</p>
          <div class="upload_img">
            <label for="input-file" id="drop-area">
              <input type="file" name="productimage"accept="image/*" id="input-file" hidden>
              <div id="img-view">
                <img src="images/upload.webp">
                <p> Drag and drop or click here <br> to upload image</p>
                <span> Upload any images from desktop </span>
              </div>
            </label>
          </div>
        </div>

        <div class="product_info">
          <div class="pro_name">
            <p> Product Name</p>
            <input class="place" type="text" name="productname" placeholder="Enter Product Name">
          </div>
          
          <div class="pro_name">
            <p> Category</p>
            <input class="place" type="text" name="productcategory" placeholder="Enter Product Category">
          </div>

          <div class="pro_name">
            <p> Price</p>
            <input class="place" type="text" name="unitprice" placeholder="Enter Product Price">
          </div>

          <div class="pro_name">
            <p> Stock</p>
            <input class="place" type="text" name="productquantity" placeholder="Enter Product Stock">
          </div>

          <div class="pro_name">
            <p> Description</p>
            <input class="place_dec" type="text" name="productdesc" placeholder="Enter Product Description">

            <button class="publish"> Publish </button>
          </div>
	</form>
      
          
        </div>

        

      </div>

    </div>

    <div class="content_div_2" id="div4">
      <div class="inside_div_1">
        <div class="second_div_1"> 
          <div class="customer_identify"> 
            <p>Customers <span> 20</span></p> 
          </div>
  
          <div class="search_cust">
            <input  type="text" placeholder="Search by Username">
            <button> 
              Search
            </button>
          </div>
        </div>


        <div class="table_div">
          <table>
            <tr>
              <th> User Name</th>
              <th> First Name</th>
              <th> Last Name</th>
              <th> Gender </th>
              <th> Email </th>
              <th> Phone Number </th>
              <th> Action </th>
            </tr>
  
            <tr>
              <td> swze </td>
              <td> Sangam </td>
              <td> Thapa</td>
              <td> Male </td>
              <td> swngam26@gmail.com</td>
              <td> 9806695488 </td>
              <td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
            </tr>
  
            <tr>
              <td> swze </td>
              <td> Sangam </td>
              <td> Thapa</td>
              <td> Male </td>
              <td> swngam26@gmail.com</td>
              <td> 9806695488 </td>
              <td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
            </tr>
  
            <tr>
              <td> swze </td>
              <td> Sangam </td>
              <td> Thapa</td>
              <td> Male </td>
              <td> swngam26@gmail.com</td>
              <td> 9806695488 </td>
              <td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
            </tr>
  
            <tr>
              <td> swze </td>
              <td> Sangam </td>
              <td> Thapa</td>
              <td> Male </td>
              <td> swngam26@gmail.com</td>
              <td> 9806695488 </td>
              <td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
            </tr>
  
            <tr>
              <td> swze </td>
              <td> Sangam </td>
              <td> Thapa</td>
              <td> Male </td>
              <td> swngam26@gmail.com</td>
              <td> 9806695488 </td>
              <td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
            </tr>
  
            <tr>
              <td> swze </td>
              <td> Sangam </td>
              <td> Thapa</td>
              <td> Male </td>
              <td> swngam26@gmail.com</td>
              <td> 9806695488 </td>
              <td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
            </tr>
  
            <tr>
              <td> swze </td>
              <td> Sangam </td>
              <td> Thapa</td>
              <td> Male </td>
              <td> swngam26@gmail.com</td>
              <td> 9806695488 </td>
              <td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
            </tr>
  
            <tr>
              <td> swze </td>
              <td> Sangam </td>
              <td> Thapa</td>
              <td> Male </td>
              <td> swngam26@gmail.com</td>
              <td> 9806695488 </td>
              <td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
            </tr>
          </table>
        </div>
      </div>
    </div>
    </div>
  </div>

  <script>

function show_employee_div(){
  document.getElementById('div').style.display = "block";
  document.getElementById('div2').style.display = "none";
  document.getElementById('div3').style.display = "none";
  document.getElementById('div4').style.display = "none";
  document.getElementById('div5').style.display = "none";
  
}

function show_product_div(){
  document.getElementById('div').style.display = "none";
  document.getElementById('div2').style.display = "block";
  document.getElementById('div3').style.display = "none";
  document.getElementById('div4').style.display = "none";
  document.getElementById('div5').style.display = "none";

}

function show_category_div(){
  document.getElementById('div').style.display="none";
  document.getElementById('div2').style.display="none";
  document.getElementById('div3').style.display="none";
  document.getElementById('div4').style.display="none";
  document.getElementById('div5').style.display="block";
}

function show_AddProduct_div(){
  document.getElementById('div').style.display = "none";
  document.getElementById('div2').style.display = "none";
  document.getElementById('div5').style.display = "none";
  document.getElementById('div3').style.display = "block";
  document.getElementById('div4').style.display = "none";
 

}

function show_Orders_div(){
  document.getElementById('div').style.display = "none";
  document.getElementById('div2').style.display = "none";
  document.getElementById('div5').style.display = "none";
  document.getElementById('div3').style.display = "none";
  document.getElementById('div4').style.display = "block";


}

/******************************************************/
const dropArea = document.getElementById("drop-area");
const inputFile = document.getElementById("input-file");
const imageView = document.getElementById("img-view");

inputFile.addEventListener("change", uploadImage);

function uploadImage() {
  let imgLink = URL.createObjectURL(inputFile.files[0]);
  imageView.style.backgroundImage = `url(${imgLink})`;
  imageView.textContent = "";
  imageView.style.border = 0;
}

  </script>

  

  
</body>
</html>