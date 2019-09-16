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
<link rel="icon" href="resources/img/favicon.png" type="image/x-icon">
<!-- Stylesheets-->
<c:import url="/usercss"></c:import>

</head>
<body class="wow-animation">
	<div class="site" id="page">
		<!-- Header-->
		<header>
			<c:import url="/userheader"></c:import>
		</header>

		<section class="jl-page-title"
			style="background-image: url(resources/img/page-bg.jpg);">
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
							<form action='<s:url value="/userInsert"></s:url>' method="post"
								role="form">
								<div class="login-form-body">
									<div class="form-gp">
										<label for="full-name">Full Name</label> <input name="uname"
											type="text" id="full-name"> <i class="ti-user"></i>
									</div>
									<div class="form-gp">
										<label for="email">Email address</label> <input required
											name="umail" type="email" id="email"> <i
											class="ti-email"></i>
									</div>
									<div class="form-gp">
										<label for="password">Password</label> <input required
											name="upassword" type="password" id="password"> <i
											class="ti-lock"></i>
									</div>
									<div class="row margin-bottom-30 rmber-area">
										<div class="col-12">
											<div
												class="custom-control custom-checkbox primary-checkbox mr-sm-2">
												<input type="checkbox" class="custom-control-input"
													id="remember"> <label class="custom-control-label"
													for="remember">Remember Me</label>
											</div>
										</div>
									</div>
									<div class="submit-btn-area">
										<button id="form_submit" type="submit"
											class="btn btn-rounded btn-full">Submit</button>
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