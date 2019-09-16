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
<link rel="icon" href="../resources/img/favicon.png" type="image/x-icon">
<!-- Stylesheets-->
<c:import url="/usercss"></c:import>


<script>
	function orderMessage() {
		const cnf = confirm("Siparişiniz alındı.");
		if (cnf) {
			return true;
		} else {
			return false;
		}
	}
</script>
</head>
<body class="wow-animation">
	<div class="site" id="page">
		<!-- Header-->
		<header>
			<c:import url="/userheader"></c:import>
		</header>

		<section class="jl-page-title"
			style="background-image: url(../resources/img/page-bg.jpg);">
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

						<table class="table table-bordered shop-cart margin-bottom-50">
							<thead>
								<tr>
									<th class="product-thumbnail">Image</th>
									<th class="product-name">Product</th>
									<th class="product-price text-center">Price</th>
									<th class="product-price text-center">Category</th>
									<th class="product-price text-center">Give Order</th>
								</tr>
							</thead>
							<tbody>
								<tr class="cart_item">
									<c:if test="${ not empty data }">

										<form action='<s:url value="/giveorder"></s:url>'
											method="post" role="form">
											<div class="card-body">
												<td class="product-thumbnail"><img
													src="../${data.pphoto}" width="100" alt="">
													<div class="form-group">
														<input type="hidden" value="${ data.pphoto}" name="ophoto"
															type="text" class="form-control"
															placeholder="Enter photo">
													</div></td>
												<td class="product-name">
													<h5>${data.ptitle}</h5>
													<div class="form-group">
														<input type="hidden" value="${data.ptitle}" name="otitle"
															type="text" class="form-control"
															placeholder="Enter title">
													</div>
												</td>
												<td class="product-price">
													<div class="form-group">
														<span class="Price-amount">${data.pprice} TL</span> <input
															type="hidden" value="${data.pprice}" name="oprice"
															type="number" class="form-control"
															placeholder="Enter Price">
													</div>
												</td>
												<td class="product-price">
													<div class="form-group">
														<c:if test="${not empty ctgData}">
															<c:forEach items="${ctgData }" var="item">
																<c:if test="${item.ctid==data.pcategory}">
																	<span class="Price-amount">${item.ctname}</span>
																</c:if>
															</c:forEach>
														</c:if>
														<input type="hidden" value="${data.pcategory}"
															name="ocategory" type="number" class="form-control"
															placeholder="Enter Price">
													</div>
												</td>

												<div class="form-group">
													<input type="hidden" value=1 name="ostatu" type="number"
														class="form-control" placeholder="Enter statu">
												</div>
												
											</div>
											<td class="product-price">

												<div>
													<button onclick="return orderMessage();" type="submit"
														class="btn btn-primary">Order Now</button>
												</div>
											</td>
										</form>
									</c:if>
								</tr>
							</tbody>
						</table>
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
									<img src="../resources/img/logo_white.png" alt="">
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
											src="../resources/img/01.jpg" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="../resources/img/02.jpg" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="../resources/img/03.jpg" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="../resources/img/04.jpg" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="../resources/img/05.jpg" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="../resources/img/06.jpg" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="../resources/img/07.jpg" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="../resources/img/08.jpg" alt=""> <i
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