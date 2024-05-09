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

<title>Nav bar</title>

<link rel="stylesheet" text="text/css" href="../css/nav.css">

</head>

<body>

<div class="main_div">

<nav>

      <ul class="left_nav">

        <li class="logo_li"> <a class="logo_fun" href="home.jsp"> Techno </a></li>

      </ul>



      <ul class="middle_nav">

        <li class="button-item"> <a href="/MyEcommerceWebsite/pages/smartphone_category.jsp"> Smartphones </a></li>

        <li class="button-item"> <a href="/MyEcommerceWebsite/pages/home_appliance_category.jsp"> Home Appliance </a></li>

        <li class="button-item"> <a href="/MyEcommerceWebsite/pages/audio_category.jsp"> Audio </a></li>

        <li class="button-item"> <a href="/MyEcommerceWebsite/pages/laptops_cateogy.jsp"> Laptops </a></li>

        <li class="button-item"> <a href=""> Explore </a></li>

      </ul>



      <ul class="right_nav">

        <li class="hide_right_div"> <a href="#"> <svg  xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M784-120 532-372q-30 24-69 38t-83 14q-109 0-184.5-75.5T120-580q0-109 75.5-184.5T380-840q109 0 184.5 75.5T640-580q0 44-14 83t-38 69l252 252-56 56ZM380-400q75 0 127.5-52.5T560-580q0-75-52.5-127.5T380-760q-75 0-127.5 52.5T200-580q0 75 52.5 127.5T380-400Z"/></svg> </a>

          <ul class="search_drop_down">

            <li>

              <input class="search_bar" type="text" placeholder="Search in Techno.com" autofocus>

            </li>

            <li><a href="#"> Iphone 15 Pro Max</a></li>

            <li><a href="#"> Samsung S24 Ultra</a></li>

            <li><a href="#"> Televison</a></li>

            <li><a href="#"> EarBuds/AirPods</a></li>

          </ul>

        </li>

        <li class="hide_right_div"> <a href="#"> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M280-80q-33 0-56.5-23.5T200-160q0-33 23.5-56.5T280-240q33 0 56.5 23.5T360-160q0 33-23.5 56.5T280-80Zm400 0q-33 0-56.5-23.5T600-160q0-33 23.5-56.5T680-240q33 0 56.5 23.5T760-160q0 33-23.5 56.5T680-80ZM246-720l96 200h280l110-200H246Zm-38-80h590q23 0 35 20.5t1 41.5L692-482q-11 20-29.5 31T622-440H324l-44 80h480v80H280q-45 0-68-39.5t-2-78.5l54-98-144-304H40v-80h130l38 80Zm134 280h280-280Z"/></svg> </a></li>

        <li class="hide_right_div"> <a href="#"> <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M234-276q51-39 114-61.5T480-360q69 0 132 22.5T726-276q35-41 54.5-93T800-480q0-133-93.5-226.5T480-800q-133 0-226.5 93.5T160-480q0 59 19.5 111t54.5 93Zm246-164q-59 0-99.5-40.5T340-580q0-59 40.5-99.5T480-720q59 0 99.5 40.5T620-580q0 59-40.5 99.5T480-440Zm0 360q-83 0-156-31.5T197-197q-54-54-85.5-127T80-480q0-83 31.5-156T197-763q54-54 127-85.5T480-880q83 0 156 31.5T763-763q54 54 85.5 127T880-480q0 83-31.5 156T763-197q-54 54-127 85.5T480-80Zm0-80q53 0 100-15.5t86-44.5q-39-29-86-44.5T480-280q-53 0-100 15.5T294-220q39 29 86 44.5T480-160Zm0-360q26 0 43-17t17-43q0-26-17-43t-43-17q-26 0-43 17t-17 43q0 26 17 43t43 17Zm0-60Zm0 360Z"/></svg> </a>

            <ul class="account_drop_down">

              <li><a href="/MyEcommerceWebsite/pages/login.jsp"> Sign in/ Create Account</a></li>

              <li><a href="#"> Why create an Account</a></li>

              <li><a href="#"> Track your Orders</a></li>

            </ul>

        <li class="menu_button" onclick="showSidebar()"><a href="#"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M120-240v-80h720v80H120Zm0-200v-80h720v80H120Zm0-200v-80h720v80H120Z"/></svg></a></li>

        </li>

      </ul>



      <ul class="sidebar">

        <li onclick=hideSidebar()><a href="#"> <svg xmlns="http://www.w3.org/2000/svg" height="26" viewBox="0 -960 960 960" width="26"><path d="m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z"/></svg> </a></li>

        <li><a href="#"> Smartphones</a></li>

        <li><a href="#"> Home Appliance </a></li>

        <li><a href="#"> Audio </a></li>

        <li><a href="#"> Laptops </a></li>

        <li><a href="#"> Explore</a></li>

        <li><a href="#"> Sign in </a></li>

      </ul>

    </nav>
</div>
 



  <script>

    function showSidebar(){

      const sidebar = document.querySelector('.sidebar')

      sidebar.style.display = 'flex'

    }



    function hideSidebar(){

      const sidebar = document.querySelector('.sidebar')

      sidebar.style.display = 'none'

    }

  </script>





</body>

</html>