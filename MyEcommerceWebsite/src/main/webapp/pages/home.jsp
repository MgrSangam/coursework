<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
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
<title>Home page</title>
<link rel="stylesheet" text="text/css" href="/MyEcommerceWebsite/css/home.css">
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>

</head>
<body>
<jsp:include page="nav.jsp" />


  

  <h1 class="top">
    Shop all latest offers and innovations
  </h1>

  <div class="main-container">
    <div class="text">


      <button class="div_change" onclick="show_div_change1()">
        For You
      </button>
  
      <button class="div_change2" onclick="show_div_change2()">
        Smartphones
      </button>
  
      <button class="div_change3" onclick="show_div_change3()">
        TV & Audio
      </button>
  
      <button class="div_change4" onclick="show_div_change4()">
        Laptops
      </button>
  
      <button class="div_change5" onclick="show_div_change5()">
        Home Appliance
      </button>
    </div>
    
    <div class="product_change_div">
      <div class="product_div_main" id="div">
        <div class="product_div">
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
      		  
      		  <div  class="product"><a href="/MyEcommerceWebsite/pages/product_info.jsp">
            <img class="product_img" src="/MyEcommerceWebsite/images/products/<%=rss.getString(6) %>">
          
            <p class="product_name">
              <%= rss.getString(2)%>
            </p>
            <p class="product_price">
              <%= rss.getString(4)%>
            </p></a>
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

      </div> 

      <div class="product_div2_main" id="div2">
        <div class="product_div2">
  
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
      		  
      		  <div  class="product"><a href="/MyEcommerceWebsite/pages/product_info.jsp">
            <img class="product_img" src="/MyEcommerceWebsite/images/products/<%=rsss.getString(6) %>">
          
            <p class="product_name">
              <%= rsss.getString(2)%>
            </p>
            <p class="product_price">
              <%= rsss.getString(4)%>
            </p></a>
          </div>
      		  
      		  <% 
      	  }
      	  rsss.close();
      	    stss.close();
      	    con.close();
        }catch(Exception ex){
      	  
        }
   			%>
</div>
      </div>

      <div class="product_div3_main" id="div3">
        <div class="product_div3">
        <%
    	
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
      		  
      		  <div  class="product"><a href="/MyEcommerceWebsite/pages/product_info.jsp">
            <img class="product_img" src="/MyEcommerceWebsite/images/products/<%=rsss.getString(6) %>">
          
            <p class="product_name">
              <%= rsss.getString(2)%>
            </p>
            <p class="product_price">
              <%= rsss.getString(4)%>
            </p></a>
          </div>
      		  
      		  <% 
      	  }
      	  rsss.close();
      	    stss.close();
      	    con.close();
        }catch(Exception ex){
      	  
        }
   			%>
          
			</div>
      </div>

      <div class="product_div4_main" id="div4">
        <div class="product_div4">
  
           <%
    	
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
      		  
      		  <div  class="product"><a href="/MyEcommerceWebsite/pages/product_info.jsp">
            <img class="product_img" src="/MyEcommerceWebsite/images/products/<%=rsss.getString(6) %>">
          
            <p class="product_name">
              <%= rsss.getString(2)%>
            </p>
            <p class="product_price">
              <%= rsss.getString(4)%>
            </p></a>
          </div>
      		  
      		  <% 
      	  }
      	  rsss.close();
      	    stss.close();
      	    con.close();
        }catch(Exception ex){
      	  
        }
   			%>
    
  
          
        </div>

      </div>

      <div class="product_div5_main" id="div5">
        <div class="product_div5">
  
          <%
    	
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
      		  
      		  <div  class="product"><a href="/MyEcommerceWebsite/pages/product_info.jsp">
            <img class="product_img" src="/MyEcommerceWebsite/images/products/<%=rsss.getString(6) %>">
          
            <p class="product_name">
              <%= rsss.getString(2)%>
            </p>
            <p class="product_price">
              <%= rsss.getString(4)%>
            </p></a>
          </div>
      		  
      		  <% 
      	  }
      	  rsss.close();
      	    stss.close();
      	    con.close();
        }catch(Exception ex){
      	  
        }
   			%>
    
  


        </div>
        
      </div>


      

      

      

      

    </div>
  
      

  </div>
<div class="swiper">
          <!-- Additional required wrapper -->
          <div class="swiper-wrapper">
            <!-- Img Slides -->
            <div class="swiper-slide">
              <img src="/MyEcommerceWebsite/images/slideshow_images/washing machine.webp" />
            </div>
            <div class="swiper-slide">
              <img src="/MyEcommerceWebsite/images/slideshow_images/HP_KV-S24-Ultra-Lifestyle_Buy-TryUPDATED.411.PM_DT.webp" />
            </div>
            <div class="swiper-slide">
              <img src="/MyEcommerceWebsite/images/slideshow_images/reno11-f-5120-1280-gp.jpg" />
            </div>
            <div class="swiper-slide">
              <img src="/MyEcommerceWebsite/images/slideshow_images/Tvs.webp" />
            </div>
          </div>
          <!-- If we need pagination -->
          <div class="swiper-pagination"></div>
  
          <!-- If we need navigation buttons -->
          <div class="swiper-button-prev"></div>
          <div class="swiper-button-next"></div>
        </div>
 <div class="HERO">

  <video autoplay loop muted plays-inline class="back-video">
    <source src="/MyEcommerceWebsite/video/SnapSave.io-ASUS Zenbook 14 OLED (UX3405) .mp4" type="video/mp4">
  </video>
  
    <div class="content">
      <h1>New ASUS Zenbook 14 OLED <br>is Available</h1>
      <a href="#">Shop Now</a>
    </div>
  

  
</div>
  
     

<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
 
<script type="text/javascript">
  
// image slide 
const swiper = new Swiper(".swiper", {
  autoplay: {
    delay: 3000, // 3sec
    disableOnInteraction: false,
  },

  loop: true,

  // here is pagination
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },

  // Navigation arrows
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});

// product slide
const productContainers = [...document.querySelectorAll('.product-container')];
const nextBtn = [...document.querySelectorAll('.next-btn')];
const preBtn = [...document.querySelectorAll('.pre-btn')];

productContainers.forEach((item, i) => {
  let containerDimensions = item.getBoundingClientRect();
  let containerWidth = containerDimensions.width;

  nextBtn[i].addEventListener('click', () => {
    item.scrollLeft += containerWidth;                //this makes arrow to slide right
  })
  preBtn[i].addEventListener('click', () => {
    item.scrollLeft -= containerWidth;                 //this makes arrow to slide left
  })
})


function show_div_change1(){
  document.getElementById('div').style.display = "block";
  document.getElementById('div2').style.display = "none";
  document.getElementById('div3').style.display = "none";
  document.getElementById('div4').style.display = "none";
  document.getElementById('div5').style.display = "none";
}

function show_div_change2(){
  document.getElementById('div').style.display = "none";
  document.getElementById('div2').style.display = "block";
  document.getElementById('div3').style.display = "none";
  document.getElementById('div4').style.display = "none";
  document.getElementById('div5').style.display = "none";
}

function show_div_change3(){
  document.getElementById('div').style.display = "none";
  document.getElementById('div2').style.display = "none";
  document.getElementById('div3').style.display = "block";
  document.getElementById('div4').style.display = "none";
  document.getElementById('div5').style.display = "none";
}

function show_div_change4(){
  document.getElementById('div').style.display = "none";
  document.getElementById('div2').style.display = "none";
  document.getElementById('div3').style.display = "none";
  document.getElementById('div4').style.display = "block";
  document.getElementById('div5').style.display = "none";
}

function show_div_change5(){
  document.getElementById('div').style.display = "none";
  document.getElementById('div2').style.display = "none";
  document.getElementById('div3').style.display = "none";
  document.getElementById('div4').style.display = "none";
  document.getElementById('div5').style.display = "block";
}
  


</script>

	<jsp:include page="footer.jsp" />

</body>
</html>