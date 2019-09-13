<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
<link rel="icon" href="img/favicon.png" type="image/x-icon">
<!-- Stylesheets-->
<link href='<s:url value="resources/css/bootstrap.min.css"></s:url>'
	rel="stylesheet">
<link href='<s:url value="resources/css/style.css"></s:url>'
	rel="stylesheet">
<link href='<s:url value="resources/css/icons.css"></s:url>'
	rel="stylesheet">

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
								<button
									class="navbar-toggler collapsed navicon justify-content-end"
									type="button" data-toggle="collapse"
									data-target="#navbarMobile" aria-controls="navbarMobile"
									aria-expanded="false">
									<span></span> <span></span> <span></span>
								</button>
								<!-- Logo-->
								<div class="jl_logo">
									<a href='<s:url value="/"></s:url>'><img
										src="resources/img/logo.png" alt=""></a>
								</div>
								<!-- Menu-->
								<div
									class="navigation_wrapper header-nav navbar-collapse collapse"
									id="navbarMobile">
									<ul id="mainmenu" class="jl_main_menu">
										<li class="menu-item-has-children"><a href="#">Our
												Menu</a>
											<ul class="sub-menu">
												<li><a href="food-menu-classic.html">Food Menu
														Classic</a></li>
												<li><a href="food-menu-list.html">Food Menu List</a></li>
												<li><a href="food-menu-grid.html">Food Menu Grid</a></li>
											</ul></li>
										<li class="menu-item-has-children"><a href="#">Blog</a>
											<ul class="sub-menu">
												<li><a href="blog-classic.html">Classic Blog</a></li>
												<li><a href="blog-grid.html">Grid Blog</a></li>
												<li><a href="blog-single.html">Single Blog Post</a></li>
											</ul></li>
										<li class="menu-item-has-children jl-mega-menu"><a
											href="#">Features</a>
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
										<li class="menu-item-has-children jl-mega-menu"><a
											href="#">Pages</a>
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
												<li><a href="single-shop-page.html">Single Shop
														Page</a></li>
											</ul></li>
										<li><a href="contact-us.html">Contact Us</a></li>
									</ul>
								</div>

								<!-- Cart and Reservation-->
								<div class="jl-header-right">
									<a class="jl-header-cart" href="#"> <span
										class="jl-cart-icon ti-shopping-cart"></span> <span
										class="jl-cart-number"><span>0</span></span>
									</a>
									<div class="jl-top-btn">
										<a href="#">Reservation</a>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- Slider-->
		<section>
			<div class="jl-main-slider">
				<div class="slide"
					style="background-image: url('resources/img/slider-2.jpg');">
					<div class="container">
						<div class="row">
							<div class="col col-md-6 slide-caption">
								<div class="slide-title">
									<span class="jl-title-info">Alway Tasty Food</span>
									<h2>Special Offer</h2>
								</div>
								<c:if test="${ not empty data }">
									<c:forEach items="${ data }" var="item">
										<c:if test="${item.pid==9 }">
											<div class="slide-subtitle">
												<p>${item.pdetail}</p>
											</div>
											<div class="btns">
												<a href='<s:url value="/order/${item.pid}"></s:url>'
													class="btn btn-lg margin-top-15">Order Now</a>
											</div>
										</c:if>
									</c:forEach>
								</c:if>
							</div>
						</div>
					</div>
				</div>
				<div class="slide"
					style="background-image: url('resources/img/slider-1.jpg');">

					<div class="container">
						<div class="row">
							<div class="col col-lg-6 slide-caption">
								<div class="slide-title">
									<span class="jl-title-info">Alway Tasty Food</span>
									<h2>Fresh & hot</h2>
								</div>
								<c:if test="${ not empty data }">
									<c:forEach items="${ data }" var="item">
										<c:if test="${item.pid==10 }">
											<div class="slide-subtitle">
												<p>${item.pdetail}</p>
											</div>
											<div class="btns">
												<a href='<s:url value="/order/${item.pid}"></s:url>'
													class="btn btn-lg margin-top-15">Order Now</a>
											</div>
										</c:if>
									</c:forEach>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Feature box -->
		<section class="jl-feature-box padding-top-80 padding-sm-top-50">
			<div class="container">
				<div class="row">
					<div class="col-md-6 wow-outer">
						<div
							class="feature-box-img feature-box-large bg-red color-white wow fadeInUp delay-01"
							style="background-image: url(resources/img/feature-box1.jpg);">
							<c:if test="${ not empty data }">
								<c:forEach items="${ data }" var="item">
									<c:if test="${item.pid==10 }">

										<a href='<s:url value="/detail/${item.pid}"></s:url>'
											class="feature-box-link"></a>
									</c:if>
								</c:forEach>
							</c:if>
							<div class="feature-box-title">
								<h5>Try It Today</h5>
								<h4>Most Popular Pizza</h4>
							</div>
						</div>
					</div>

					<div class="col-md-6 wow-outer">
						<div
							class="feature-box-img feature-box-small bg-red color-white wow fadeInUp delay-01"
							style="background-image: url(resources/img/feature-box2.jpg);">
							<c:if test="${ not empty data }">
								<c:forEach items="${ data }" var="item">
									<c:if test="${item.pid==27 }">

										<a href='<s:url value="/detail/${item.pid}"></s:url>'
											class="feature-box-link"></a>
									</c:if>
								</c:forEach>
							</c:if>
							<div class="feature-box-title">
								<h5>Try It Today</h5>
								<h4>More Fun More Taste</h4>
							</div>
						</div>
						<div
							class="feature-box-img feature-box-small bg-red color-white wow fadeInUp delay-01"
							style="background-image: url(resources/img/feature-box3.jpg);">
							<c:if test="${ not empty data }">
								<c:forEach items="${ data }" var="item">
									<c:if test="${item.pid==22 }">

										<a href='<s:url value="/detail/${item.pid}"></s:url>'
											class="feature-box-link"></a>
									</c:if>
								</c:forEach>
							</c:if>
							<div class="feature-box-title">
								<h5>Try It Today</h5>
								<h4>Fresh And Chili</h4>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>

		<!-- Food Menu -->
		<section
			class="jl-food-menu padding-top-50 padding-bottom-80 padding-sm-top-20 padding-sm-bottom-50">
			<div class="container">
				<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Alway Tasty Food</span>
							<h2 class="">Choose & enjoy</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa Cum sociis natoque penatibus.</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<ul class="jl-food-nav-tab nav nav-tabs margin-bottom-30">
							<li class="nav-item"><a data-toggle="tab" href="#menu1"
								class="active"><i class="foodicon-burger"></i>Burgers</a></li>
							<li class="nav-item"><a data-toggle="tab" href="#menu2"><i
									class="foodicon-pizza-slice"></i>Pizzas</a></li>
							<li class="nav-item"><a data-toggle="tab" href="#menu3"><i
									class="foodicon-salad-1"></i>Vegetarian</a></li>
							<li class="nav-item"><a data-toggle="tab" href="#menu4"><i
									class="foodicon-lemonade"></i>Soft drinks</a></li>
							<li class="nav-item"><a data-toggle="tab" href="#menu5"><i
									class="foodicon-cupcake-1"></i>Desserts</a></li>
						</ul>



						<div class="tab-content jl-tab-content">
							<div id="menu1" class="tab-pane active">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<div class="col-md-4 jl-item-carousel wow fadeInUp">
										<figure>
											<img src="resources/img/burger1.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==9 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel wow fadeInUp delay-02">
										<figure>
											<img src="resources/img/burger2.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==10 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel wow fadeInUp delay-03">
										<figure>
											<img src="resources/img/burger3.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==13 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel wow fadeInUp delay-04">
										<figure>
											<img src="resources/img/burger4.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==14}">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
								</div>
							</div>


							<div id="menu2" class="tab-pane">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/pizza1.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==15}">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/pizza2.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==16 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/pizza3.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==17 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/pizza4.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==18 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
								</div>
							</div>
							<div id="menu3" class="tab-pane">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/salad1.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==19 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/salad2.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==20 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/salad3.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==21 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/salad4.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==22 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
								</div>
							</div>
							<div id="menu4" class="tab-pane">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/drink1.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==23 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/drink2.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==24 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/drink3.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==25 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/drink4.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==26 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
								</div>
							</div>

							<div id="menu5" class="tab-pane">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/dessert1.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==27 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/dessert2.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==28 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/dessert3.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==29 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="resources/img/dessert4.jpg" alt="">
										</figure>
										<div class="caption">
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==30 }">
														<h5>
															<a class="link link-default"
																href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
														</h5>
														<p class="text-italic">${item.pdetail}</p>
														<p class="price">${item.pprice}TL</p>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</section>

		<!-- Special Offer -->
		<section class="jl-special-offer bg-gray padding-80 padding-sm-50">
			<div class="container">
				<div class="row">
					<div class="jl-promotion-slider" data-arrows="true"
						data-loop="true" data-dots="true" data-swipe="true" data-items="1"
						data-xs-items="1" data-sm-items="1" data-md-items="1"
						data-lg-items="1" data-xl-items="1">
						<div class="slide">
							<div class="slide-wrapper">
								<div class="slide-content">
									<div class="jl-pro-img margin-sm-bottom-20">
										<img src="resources/img/big-salad.png" alt="">
									</div>
									<div class="jl-pro-desc">
										<div class="jl-desc-wrapper">
											<h2 class="headline">Big Bowl Salad</h2>
											<div class="rating">
												<span class="fa fa-star"></span> <span class="fa fa-star"></span>
												<span class="fa fa-star"></span> <span class="fa fa-star"></span>
												<span class="fa fa-star"></span>
											</div>
											<a class="reviews" href="#">( 3 Customer Reviews )</a>
											<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==21 }">
														<div class="item-price">


															${item.pprice } TL
															<del>40 TL</del>

														</div>
														<p class="jl-subtitle">${item.pdetail }</p>

														<div class="tagcloud">
															<span class="posted_in">Categories:</span><a href="#"
																rel="tag">Good taste</a>, <a href="#" rel="tag">Healthy</a>,
															<a href="#" rel="tag">Fresh</a>, <a href="#" rel="tag">Thin
																Crust</a>
														</div>
														<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="slide-wrapper">
							<div class="slide-content">
								<div class="jl-pro-img">
									<img src="resources/img/big-pizza.png" alt="">
								</div>
								<div class="jl-pro-desc">
									<div class="jl-desc-wrapper">
										<h2 class="headline">Best Pizza Slide</h2>
										<div class="rating">
											<span class="fa fa-star"></span> <span class="fa fa-star"></span>
											<span class="fa fa-star"></span> <span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
										</div>
										<a class="reviews" href="#">( 2 Customer Reviews )</a>
										<c:if test="${ not empty data }">
												<c:forEach items="${ data }" var="item">
													<c:if test="${item.pid==16}">
										<div class="item-price">
											${item.pprice } TL
											<del>70 TL</del>
										</div>
										<p class="jl-subtitle">${item.pdetail }</p>
										<div class="tagcloud">
											<span class="posted_in">Categories:</span><a href="#"
												rel="tag">Good taste</a>, <a href="#" rel="tag">Healthy</a>,
											<a href="#" rel="tag">Fresh</a>, <a href="#" rel="tag">Thin
												Crust</a>
										</div>
										<a class="btn margin-top-15"
															href='<s:url value="/order/${item.pid}"></s:url>'>Order
															Now</a>
													</c:if>
												</c:forEach>
											</c:if>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Food Blog -->
		<section
			class="jl-food-blog padding-top-80 padding-bottom-30 padding-sm-top-50 padding-sm-bottom-0">
			<div class="container">
				<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Alway Tasty Food</span>
							<h2 class="">Food Latest News</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa Cum sociis natoque penatibus.</div>
						</div>
					</div>
				</div>
				<div class="row blog-grid wow-outer">
					<!-- Blog Entry -->
					<div class="col-md-4 wow fadeInUp">
						<div class="blog-entry">
							<div class="entry--img">
								<a href="#"> <img src="resources/img/grid-1.jpg" alt="">
								</a>
							</div>
							<div class="entry--meta-container">
								<div class="entry--meta-author">
									<img src="resources/img/author.jpg" alt=""> <span>By:
										<a href="#">Mark Den</a>
									</span>
								</div>
								<div class="entry--date">Date: Jan 20, 2019</div>
							</div>
							<div class="entry--content">
								<div class="entry--title">
									<h4>
										<a href="blog-single.html">Instant Pot Carnitas Inspired
											Street Tacos Recipe</a>
									</h4>
								</div>
								<div class="entry--bio">
									<p>Pellentesque iaculis gravida nulla ac hendrerit.
										Vestibulum faucibus neque at lacus tristique eu ultrices ipsum
										mollis. Phasellus venenatis lacus...</p>
								</div>
								<div class="entry--more">
									<a href="#">Read More</a>
								</div>
							</div>
						</div>
					</div>
					<!-- Blog Entry -->
					<div class="col-md-4 wow fadeInUp delay-02">
						<div class="blog-entry">
							<div class="entry--img">
								<a href="#"> <img src="resources/img/grid-2.jpg" alt="">
								</a>
							</div>
							<div class="entry--meta-container">
								<div class="entry--meta-author">
									<img src="resources/img/author.jpg" alt=""> <span>By:
										<a href="#">Mark Den</a>
									</span>
								</div>
								<div class="entry--date">Date: Jan 20, 2019</div>
							</div>
							<div class="entry--content">
								<div class="entry--title">
									<h4>
										<a href="blog-single.html">Strawberry Shortcake Strawberry
											Pancakes Recipe</a>
									</h4>
								</div>
								<div class="entry--bio">
									<p>Pellentesque iaculis gravida nulla ac hendrerit.
										Vestibulum faucibus neque at lacus tristique eu ultrices ipsum
										mollis. Phasellus venenatis lacus...</p>
								</div>
								<div class="entry--more">
									<a href="#">Read More</a>
								</div>
							</div>
						</div>
					</div>
					<!-- Blog Entry -->
					<div class="col-md-4 wow fadeInUp delay-03">
						<div class="blog-entry">
							<div class="entry--img">
								<a href="#"> <img src="resources/img/grid-3.jpg" alt="">
								</a>
							</div>
							<div class="entry--meta-container">
								<div class="entry--meta-author">
									<img src="resources/img/author.jpg" alt=""> <span>By:
										<a href="#">Mark Den</a>
									</span>
								</div>
								<div class="entry--date">Date: Jan 20, 2019</div>
							</div>
							<div class="entry--content">
								<div class="entry--title">
									<h4>
										<a href="blog-single.html">Chicken Satay Recipe and a No
											Peanut Peanut Sauce</a>
									</h4>
								</div>
								<div class="entry--bio">
									<p>Pellentesque iaculis gravida nulla ac hendrerit.
										Vestibulum faucibus neque at lacus tristique eu ultrices ipsum
										mollis. Phasellus venenatis lacus...</p>
								</div>
								<div class="entry--more">
									<a href="#">Read More</a>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>



		<!-- Testimonial -->
		<section class="padding-80 padding-sm-50">
			<div class="container">
				<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Alway Tasty Food</span>
							<h2 class="">Happy Customers</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa Cum sociis natoque penatibus.</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="jl-testimonial multi-col">
							<div class="jl-testimonial-slide" data-arrows="false"
								data-loop="true" data-dots="true" data-swipe="true"
								data-items="1" data-xs-items="1" data-sm-items="1"
								data-md-items="1" data-lg-items="3" data-xl-items="3">
								<div class="slide">
									<div class="testimonial-item">
										<div class="testimonial-image">
											<img src="resources/img/author.jpg" alt="">
										</div>
										<div class="testimonial-rating star5">
											<i class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i>
										</div>
										<div class="testimonial-content">“Cras vitae mi erat,
											posuere mollis arcu. Pellentesque iaculis gravida hendrerit.
											Vestibulum faucibus neque”</div>
										<div class="testimonial-meta">
											<h3 class="testimonial-title">Long Makara</h3>
											<span class="testimonial-position">Guest</span>
										</div>
									</div>
								</div>

								<div class="slide">
									<div class="testimonial-item">
										<div class="testimonial-image">
											<img src="resources/img/author.jpg" alt="">
										</div>
										<div class="testimonial-rating star5">
											<i class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i>
										</div>
										<div class="testimonial-content">“Cras vitae mi erat,
											posuere mollis arcu. Pellentesque iaculis gravida hendrerit.
											Vestibulum faucibus neque”</div>
										<div class="testimonial-meta">
											<h3 class="testimonial-title">Long Makara</h3>
											<span class="testimonial-position">Guest</span>
										</div>
									</div>
								</div>

								<div class="slide">
									<div class="testimonial-item">
										<div class="testimonial-image">
											<img src="resources/img/author.jpg" alt="">
										</div>
										<div class="testimonial-rating star5">
											<i class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i>
										</div>
										<div class="testimonial-content">“Cras vitae mi erat,
											posuere mollis arcu. Pellentesque iaculis gravida hendrerit.
											Vestibulum faucibus neque”</div>
										<div class="testimonial-meta">
											<h3 class="testimonial-title">Long Makara</h3>
											<span class="testimonial-position">Guest</span>
										</div>
									</div>
								</div>
								<div class="slide">
									<div class="testimonial-item">
										<div class="testimonial-image">
											<img src="resources/img/author.jpg" alt="">
										</div>
										<div class="testimonial-rating star5">
											<i class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i>
										</div>
										<div class="testimonial-content">“Cras vitae mi erat,
											posuere mollis arcu. Pellentesque iaculis gravida hendrerit.
											Vestibulum faucibus neque”</div>
										<div class="testimonial-meta">
											<h3 class="testimonial-title">Long Makara</h3>
											<span class="testimonial-position">Guest</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Footer-->
		<footer>
			<div class="jl-footer-wrapper padding-top-60 padding-bottom-10">
				<div class="container">
					<div class="row">
						<!-- About Us-->
						<div class="col-md-4 margin-bottom-50">
							<div class="footer-widget-area">
								<div class="footer-about">
									<img src="resources/img/logo_white.png" alt="">
									<p>Etiam consequat sem ullamcorper, euismod metus sit amet,
										tristique justo. Vestibulum mattis, nisi ut faucibus commodo,
										risus ex commodo.</p>
								</div>

								<div class="jl-social-about">
									<ul>
										<li><a href="#" target="_self"><span
												class="fab fa-twitter"></span></a></li>
										<li><a href="#" target="_self"><span
												class="fab fa-facebook-f"></span></a></li>
										<li><a href="#" target="_self"><span
												class="fab fa-instagram"></span></a></li>
										<li><a href="#" target="_self"><span
												class="fab fa-google-plus-g"></span></a></li>
									</ul>
								</div>

							</div>
						</div>
						<!-- Contact Info-->
						<div class="col-md-4 margin-bottom-50">
							<div class="footer-widget-area">
								<h3 class="header-widget">Contact info</h3>

								<ul class="contact-list">
									<li><i class="ti-location-pin"></i><span class="txt"><strong>
												Our location: </strong><br> 150 teuk laak 2 near Khan Tuol Kouk,
											Phnom Penh</span></li>
									<li><i class="ti-mobile"></i><span class="txt"><strong>
												Phones: </strong><br> +855-086-8634-836</span></li>
									<li><i class="ti-email"></i><span class="txt"><strong>
												Email: </strong><br> mytheme@example.com</span></li>
								</ul>
							</div>
						</div>
						<!-- Follow Us-->
						<div class="col-md-4 margin-bottom-50">
							<div class="footer-widget-area">
								<h3 class="header-widget">Follow Us</h3>
								<div class="jl-instagram">
									<a href="#"> <span class="instagram-content"> <img
											src="resources/img/01.jpg" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="resources/img/02.jpg" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="resources/img/03.jpg" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="resources/img/04.jpg" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="resources/img/05.jpg" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="resources/img/06.jpg" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="resources/img/07.jpg" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="resources/img/08.jpg" alt=""> <i
											class="fab fa-instagram"></i>
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
							<p class="copyright">Copyright 2019 © jellyster.com HTML
								Template</p>
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
	<div id="go-top">
		<i class="ti-angle-up"></i>
	</div>
	<!-- Javascript-->
	<script src="resources/js/scripts.js"></script>
	<script src="resources/js/custom.js"></script>
</body>
</html>