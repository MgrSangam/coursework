<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin page</title>
<link rel="stylesheet" text="text/css" href="/MyEcommerceWebsite/css/admin.css">
</head>
<body>

<div class="content_div">
    <div class="side_content_div">
      <button class="function_button_1">
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
                <th> Product Id </th>
                <th> Unit Price </th>
                <th> Brand </th>
                <th> Action </th>
              </tr>
    
              <tr>
                <td > <img class="prod_img" src="products/macbook-2048px-9765.webp"> </td>
                <td> MacBook Pro </td>
                <td> Laptops</td>
                <td> #234</td>
                <td> Rs.1,80,000</td>
                <td> Apple</td>
                <td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
              </tr>

              <tr>
                <td > <img class="prod_img" src="products/macbook-2048px-9765.webp"> </td>
                <td> MacBook Pro </td>
                <td> Laptops</td>
                <td> #234</td>
                <td> Rs.1,80,000</td>
                <td> Apple</td>
                <td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
              </tr>

              <tr>
                <td > <img class="prod_img" src="products/macbook-2048px-9765.webp"> </td>
                <td> MacBook Pro </td>
                <td> Laptops</td>
                <td> #234</td>
                <td> Rs.1,80,000</td>
                <td> Apple</td>
                <td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
              </tr>

              <tr>
                <td > <img class="prod_img" src="products/macbook-2048px-9765.webp"> </td>
                <td> MacBook Pro </td>
                <td> Laptops</td>
                <td> #234</td>
                <td> Rs.1,80,000</td>
                <td> Apple</td>
                <td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
              </tr>

              <tr>
                <td > <img class="prod_img" src="products/macbook-2048px-9765.webp"> </td>
                <td> MacBook Pro </td>
                <td> Laptops</td>
                <td> #234</td>
                <td> Rs.1,80,000</td>
                <td> Apple</td>
                <td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
              </tr>

              <tr>
                <td > <img class="prod_img" src="products/macbook-2048px-9765.webp"> </td>
                <td> MacBook Pro </td>
                <td> Laptops</td>
                <td> #234</td>
                <td> Rs.1,80,000</td>
                <td> Apple</td>
                <td> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-400q-33 0-56.5-23.5T160-480q0-33 23.5-56.5T240-560q33 0 56.5 23.5T320-480q0 33-23.5 56.5T240-400Zm240 0q-33 0-56.5-23.5T400-480q0-33 23.5-56.5T480-560q33 0 56.5 23.5T560-480q0 33-23.5 56.5T480-400Zm240 0q-33 0-56.5-23.5T640-480q0-33 23.5-56.5T720-560q33 0 56.5 23.5T800-480q0 33-23.5 56.5T720-400Z"/></svg></td>
              </tr>

             
    
             
            </table>
          </div>
        </div>
      </div>

      <div class="content_div_3" id="div3">
        <p class="prod_add"> Add Product</p>
        <div class="content_3_main_div">
         

          <div class="add_img">
            <p class="img-add"> Add Images</p>
            <div class="upload_img">
              <label for="input-file" id="drop-area">
                <input type="file" accept="image/*" id="input-file" hidden>
                <div id="img-view">
                  <img src="images/upload.webp">
                  <p> Drag and drop or click here <br> to upload image</p>
                  <span> Upload any images from desktop </span>
                </div>
              </label>
            </div>

            <div class="product_info">

            </div>
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
  
}

function show_product_div(){
  document.getElementById('div').style.display = "none";
  document.getElementById('div2').style.display = "block";
  document.getElementById('div3').style.display = "none";
  document.getElementById('div4').style.display = "none";

}

function show_AddProduct_div(){
  document.getElementById('div').style.display = "none";
  document.getElementById('div2').style.display = "none";
  document.getElementById('div3').style.display = "block";
  document.getElementById('div4').style.display = "none";

}

function show_Orders_div(){
  document.getElementById('div').style.display = "none";
  document.getElementById('div2').style.display = "none";
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