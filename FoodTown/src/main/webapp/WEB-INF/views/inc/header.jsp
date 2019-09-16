<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- Stylesheets-->
<link href='<s:url value="resources/css/bootstrap.min.css"></s:url>'
	rel="stylesheet">
<link href='<s:url value="resources/css/style.css"></s:url>'
	rel="stylesheet">
<link href='<s:url value="resources/css/icons.css"></s:url>'
	rel="stylesheet">

<div class="jl_blank_nav"></div>
<div class="jl-menu-wrapper jl_menu_sticky jl_stick">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="jl_header_wrapper">
					<!-- nav toggle button -->
					<button
						class="navbar-toggler collapsed navicon justify-content-end"
						type="button" data-toggle="collapse" data-target="#navbarMobile"
						aria-controls="navbarMobile" aria-expanded="false">
						<span></span> <span></span> <span></span>
					</button>
					<!-- Logo-->
					<div class="jl_logo">
						<a href='<s:url value="/"></s:url>'><img
							src="resources/img/logo.png" alt=""></a>
					</div>
					<!-- Menu-->
					<div class="navigation_wrapper header-nav navbar-collapse collapse"
						id="navbarMobile">
						<ul id="mainmenu" class="jl_main_menu">
							<li class="menu-item-has-children"><a href="#">Our Menu</a>
								<ul class="sub-menu">
									<li><a href="food-menu-classic.html">Food Menu Classic</a></li>
									<li><a href="food-menu-list.html">Food Menu List</a></li>
									<li><a href="food-menu-grid.html">Food Menu Grid</a></li>
								</ul></li>
							<li class="menu-item-has-children"><a href="#">Blog</a>
								<ul class="sub-menu">
									<li><a href="blog-classic.html">Classic Blog</a></li>
									<li><a href="blog-grid.html">Grid Blog</a></li>
									<li><a href="blog-single.html">Single Blog Post</a></li>
								</ul></li>
							<li class="menu-item-has-children jl-mega-menu"><a href="#">Features</a>
								<ul class="sub-menu">
									<li><a href="typography.html">Typography</a></li>
									<li><a href="buttons.html">Buttons</a></li>
									<li><a href="forms.html">Forms</a></li>
									<li><a href="progress-bars.html">Progress bars</a></li>
									<li><a href="tabs.html">Tabs</a></li>
									<li><a href="tables.html">Tables</a></li>
									<li><a href="counter-coundown.html">Counter &
											Countdown</a></li>
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
									<li><a href="under-construction.html">Under
											Construction</a></li>
									<li><a href="shop-page.html">Shop Page</a></li>
									<li><a href="shop-cart.html">Shop Cart</a></li>
									<li><a href="single-shop-page.html">Single Shop Page</a></li>
								</ul></li>
							<li><a href="contact-us.html">Contact Us</a></li>
						</ul>
					</div>

					<!-- Cart and Reservation-->
					<div class="jl-header-right">
						<a class="jl-header-cart" href="#"> <span
							class="jl-cart-icon ti-shopping-cart"></span> <span
							class="jl-cart-number"><span> <c:if
										test="${not empty ols}">
											${fn:length(ols)}
									</c:if>
							</span></span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>