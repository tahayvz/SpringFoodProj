<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <!-- Title-->
    <title>Food | Home</title>
    <!-- Favicon-->
    <link rel="icon" href="resources/img/favicon.png" type="image/x-icon">
    <!-- Stylesheets-->    
    <link href='<s:url value="resources/css/bootstrap.min.css"></s:url>' rel="stylesheet">
        <link href='<s:url value="resources/css/style.css"></s:url>' rel="stylesheet">
        <link href='<s:url value="resources/css/icons.css"></s:url>' rel="stylesheet">
    
</head>
<body class="wow-animation">
    <div class="site" id="page">
        <!-- Header-->
        <header>
          <div class="jl_blank_nav"></div>
          <div class="jl-menu-wrapper jl_menu_sticky jl_stick">        
           <div class="container">
  <div class="row">
<div class="col-md-12">
<div class="jl_header_wrapper">
<!-- nav toggle button -->
            <button class="navbar-toggler collapsed navicon justify-content-end" type="button" data-toggle="collapse" data-target="#navbarMobile" aria-controls="navbarMobile" aria-expanded="false">
            <span></span>
            <span></span>
            <span></span>
          </button>
<!-- Logo-->
<div class="jl_logo"><a href="index.html"><img src="resources/img/logo.png" alt=""></a></div>
<!-- Menu-->
<div class="navigation_wrapper header-nav navbar-collapse collapse" id="navbarMobile">
<ul id="mainmenu" class="jl_main_menu">
<li class="menu-item-has-children"><a href="#">Our Menu</a>
<ul class="sub-menu"> 
  <li><a href="food-menu-classic.html">Food Menu Classic</a></li>
  <li><a href="food-menu-list.html">Food Menu List</a></li>
  <li><a href="food-menu-grid.html">Food Menu Grid</a></li>
  </ul>
</li>
<li class="menu-item-has-children"><a href="#">Blog</a>
<ul class="sub-menu"> 
  <li><a href="blog-classic.html">Classic Blog</a></li>
  <li><a href="blog-grid.html">Grid Blog</a></li>
  <li><a href="blog-single.html">Single Blog Post</a></li>
  </ul>
</li>
<li class="menu-item-has-children jl-mega-menu"><a href="#">Features</a>
  <ul class="sub-menu"> 
  <li><a href="typography.html">Typography</a></li>
  <li><a href="buttons.html">Buttons</a></li>
  <li><a href="forms.html">Forms</a></li>
  <li><a href="progress-bars.html">Progress bars</a></li>
  <li><a href="tabs.html">Tabs</a></li>
  <li><a href="tables.html">Tables</a></li>
  <li><a href="counter-coundown.html">Counter & Countdown</a></li>
  <li><a href="icon-box.html">Icon Box</a></li>
  <li><a href="team.html">Team</a></li>
  <li><a href="testimonials.html">Testimonials</a></li>
  <li><a href="pricing.html">Pricing</a></li>
  <li><a href="accordions.html">Accordions</a></li>
  </ul></li>
<li class="menu-item-has-children jl-mega-menu"><a href="#">Pages</a>
  <ul class="sub-menu"> 
  <li><a href="about-us.html">About Us</a></li>
  <li><a href="team-member.html">Team Member</a></li>
  <li><a href="gallery-grid.html">Gallery Grid</a></li>
  <li><a href="404-page.html">404 Page</a></li>
  <li><a href="search-page.html">Search Page</a></li>
  <li><a href="privacy-policy.html">Privacy Policy</a></li>
  <li><a href="faq.html">FAQ</a></li>
  <li><a href="login.html">Login</a></li>
  <li><a href="register.html">Register</a></li>
  <li><a href="under-construction.html">Under Construction</a></li>
  <li><a href="shop-page.html">Shop Page</a></li>
  <li><a href="shop-cart.html">Shop Cart</a></li>
  <li><a href="single-shop-page.html">Single Shop Page</a></li>
  </ul></li>
<li><a href="contact-us.html">Contact Us</a></li>
</ul>
</div>

<!-- Cart and Reservation-->
<div class="jl-header-right">
<a class="jl-header-cart" href="#">
            <span class="jl-cart-icon ti-shopping-cart"></span>
            <span class="jl-cart-number"><span>0</span></span>
        </a>
<div class="jl-top-btn"><a href="#">Reservation</a></div>
</div>

</div>
</div>
  </div>
  </div>
  </div>
</header>
        

<section class="jl-page-title" style="background-image:url(resources/img/page-bg.jpg);">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
            <h1>Single Shop Page</h1>
            <ul class="bread-crumb clearfix">
                <li><a href="index.html">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li>Single Shop Page</li>
            </ul>
        </div>
        </div>
        </div>
</section>



<section class="jl-page-content margin-100 margin-sm-50">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
<div class="login-form">
              <form action='<s:url value="/userInsert"></s:url>' method="post" role="form">
                    <div class="login-form-body">
                        <div class="form-gp">
                            <label for="full-name">Full Name</label>
                            <input name="uname" type="text" id="full-name">
                            <i class="ti-user"></i>
                        </div>
                        <div class="form-gp">
                            <label for="email">Email address</label>
                            <input required name="umail" type="email" id="email">
                            <i class="ti-email"></i>
                        </div>
                        <div class="form-gp">
                            <label for="password">Password</label>
                            <input required name="upassword" type="password" id="password">
                            <i class="ti-lock"></i>
                        </div>
                        <div class="row margin-bottom-30 rmber-area">
                            <div class="col-12">
                                <div class="custom-control custom-checkbox primary-checkbox mr-sm-2">
                                    <input type="checkbox" class="custom-control-input" id="remember">
                                    <label class="custom-control-label" for="remember">Remember Me</label>
                                </div>
                            </div>
                        </div>
                         <div class="submit-btn-area">
                            <button id="form_submit" type="submit" class="btn btn-rounded btn-full">Submit</button>
                        </div>
                      </div>
                </form>
            </div>
    </div>
    </div>
    </div>
    </section>




        <footer>
           <div class="jl-footer-wrapper padding-top-60 padding-bottom-10">
           <div class="container">
  <div class="row">
    <!-- About Us-->
    <div class="col-md-4 margin-bottom-50">
<div class="footer-widget-area">
<div class="footer-about">
  <img src="resources/img/logo_white.png" alt="">
              <p>
                 Etiam consequat sem ullamcorper, euismod metus sit amet, tristique justo. Vestibulum mattis, nisi ut faucibus commodo, risus ex commodo.
              </p>              
            </div>

<div class="jl-social-about"><ul><li><a href="#" target="_self"><span class="fab fa-twitter"></span></a></li><li><a href="#" target="_self"><span class="fab fa-facebook-f"></span></a></li><li><a href="#" target="_self"><span class="fab fa-instagram"></span></a></li><li><a href="#" target="_self"><span class="fab fa-google-plus-g"></span></a></li></ul></div>

</div>
      </div>
      <!-- Contact Info-->
      <div class="col-md-4 margin-bottom-50">        
        <div class="footer-widget-area">
          <h3 class="header-widget">Contact info</h3>
        
        <ul class="contact-list">
          <li><i class="ti-location-pin"></i><span class="txt"><strong> Our location: </strong><br> 150 teuk laak 2 near Khan Tuol Kouk, Phnom Penh</span></li>
          <li><i class="ti-mobile"></i><span class="txt"><strong> Phones: </strong><br> +855-086-8634-836</span></li>
          <li><i class="ti-email"></i><span class="txt"><strong> Email: </strong><br> mytheme@example.com</span></li>
        </ul>
      </div>
      </div>
      <!-- Follow Us-->
      <div class="col-md-4 margin-bottom-50">
<div class="footer-widget-area">
<h3 class="header-widget">Follow Us</h3>
            <div class="jl-instagram">
              <a href="#">                
                  <span class="instagram-content">
                <img src="resources/img/01.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
              <a href="#">
                <span class="instagram-content">
                <img src="resources/img/02.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
              <a href="#">
                <span class="instagram-content">
                <img src="resources/img/03.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
              <a href="#">
                <span class="instagram-content">
                <img src="resources/img/04.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
              <a href="#">
                <span class="instagram-content">
                <img src="resources/img/05.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
              <a href="#">
                <span class="instagram-content">
                <img src="resources/img/06.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
              <a href="#">
                <span class="instagram-content">
                <img src="resources/img/07.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
              <a href="#">
                <span class="instagram-content">
                <img src="resources/img/08.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
            </div>
          </div>
      </div>
      
      </div>
      </div>
    </div>
    <div class="jl-footer-copyright padding-30">
    <div class="container">
  <div class="row">
    <div class="col-md-12">
      <p class="copyright">Copyright 2019 © jellyster.com HTML Template</p>
      <ul class="footer-menu">
      <li><a href="index.html">Home</a></li>
      <li><a href="about-us.html">About Us</a></li>
      <li><a href="faq.html">FAQ</a></li>
      <li><a href="privacy-policy.html">Privacy Policy</a></li>
      </ul>
    </div>
      </div>
    </div>
    </div>
    </footer>
    </div>
    <div id="go-top"><i class="ti-angle-up"></i></div>
  <!-- Javascript-->
    <script src="resources/js/scripts.js"></script>
    <script src="resources/js/custom.js"></script>     
</body>
</html>