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
<title>Detail | Home</title>
<!-- Favicon-->
<link rel="icon" href="../img/favicon.png" type="image/x-icon">
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
			style="background-image: url(../resources/img/page-bg.jpg);">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Single Shop Page</h1>
						<ul class="bread-crumb clearfix">
							<li><a href='<s:url value="/"></s:url>'>Home</a></li>
							<li>Single Shop Page</li>
						</ul>
					</div>
				</div>
			</div>
		</section>


		<section
			class="jl-page-content blog blog-single blog-standard margin-100 margin-sm-50">
			<div class="container">
				<div class="row product-details">

					<div class="image-column col-md-6 col-sm-12">

						<figure class="image-box">
							<c:if test="${ not empty data }">

								<img src="../${data.pphoto}" alt="">
							</c:if>
						</figure>
					</div>
					<div class="info-column col-md-6 col-sm-12">
						<c:if test="${ not empty data }">
							<div class="details-header">
								<h4>${data.ptitle}</h4>
								<div class="rating">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
								<a class="reviews" href="#">( 3 Customer Reviews )</a>

								<div class="item-price">${data.pprice}
									TL
									<del>40</del>
								</div>
							</div>
							<div class="text">${data.pdetail}</div>
							<div class="other-options clearfix">
								<div class="form-group stepper-type">
									<div class="stepper ">
										<input class="form-control stepper-input" type="number"
											data-zeros="true" value="6" min="1" max="99"><span
											class="stepper-arrow up"></span><span
											class="stepper-arrow down"></span>
									</div>
								</div>
								<form action='<s:url value="/addtocart"></s:url>' method="post"
									role="form">

									<input type="hidden" value="${ data.pphoto}" name="ophoto"
										type="text" class="form-control" placeholder="Enter photo">
										
									<input type="hidden" value="${data.ptitle}" name="otitle"
										type="text" class="form-control" placeholder="Enter title">

									<input type="hidden" value="${data.pprice}" name="oprice"
										type="number" class="form-control" placeholder="Enter Price">

									<input type="hidden" value="${data.pcategory}" name="ocategory"
										type="number" class="form-control" placeholder="Enter Price">

									<input type="hidden" value="${data.pstatu}" name="ostatu"
										type="text" class="form-control" placeholder="Enter statu">
									<input type="hidden" value="" name="ouserid" type="text"
										class="form-control" placeholder="Enter statu">
									<div>
										<button type="submit" class="btn">
											<span class="btn-title">Add To Cart</span>
										</button>
									</div>
								</form>
							</div>

						</c:if>

						<div class="tagcloud margin-top-20">
							<span class="posted_in">Categories:</span><a href="#" rel="tag">Good
								taste</a>, <a href="#" rel="tag">Healthy</a>, <a href="#" rel="tag">Fresh</a>,
							<a href="#" rel="tag">Thin Crust</a>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<!--tabs line start-->
						<section class="round-tabs margin-bottom-50">
							<ul class="nav nav-pills margin-bottom-20">
								<li><a class="active" data-toggle="tab" href="#tab-01">Description</a>
								</li>
								<li class=""><a data-toggle="tab" href="#tab-02">Reviews</a>
								</li>
							</ul>
							<div class="panel-body">
								<div class="tab-content">
									<div id="tab-01" class="tab-pane active">Nunc placerat mi
										id nisi interdum mollis. Praesent pharetra, justo ut
										scelerisque mattis, leo quam aliquet diam, congue laoreet elit
										metus eget diam. Proin ac metus diam. In quis scelerisque
										velit. Proin pellentesque neque ut scelerisque dapibus.
										Praesent elementum feugiat dignissim. Nunc placerat mi id nisi
										interdum mollis. Praesent pharetra, justo ut scelerisque
										mattis, leo quam aliquet diam, congue laoreet elit metus eget
										diam. Proin ac metus diam. In quis scelerisque velit. Proin
										pellentesque neque ut scelerisque dapibus. Praesent elementum
										feugiat dignissim. Nunc placerat mi id nisi interdum mollis.
										Praesent pharetra, justo ut scelerisque mattis, leo quam
										aliquet diam, congue laoreet elit metus eget diam. Proin ac
										metus diam.</div>
									<div id="tab-02" class="tab-pane">
										<div class="entry-widget entry-comments clearfix">
											<div class="entry-widget-title">
												<h4>
													<span class="comments--number">2</span> comments
												</h4>
											</div>
											<div class="entry-widget-content">
												<ul class="comments-list">
													<li class="comment-body">
														<div class="avatar">
															<img src="../resources/img/chef/author.jpg" alt="avatar">
														</div>
														<div class="comment">
															<h6>Long Makara</h6>
															<div class="date">Jan 20, 2019 - 08:07 pm</div>
															<p>Cras vitae mi erat, posuere mollis arcu.
																Pellentesque iaculis gravida nulla ac hendrerit.
																Vestibulum faucibus neque at lacus tristique eu ultrices
																ipsum mollis. Phasellus venenatis, lacus in malesuada
																pellentesque, nisl ipsum faucibus velit, et eleifend
																velit nulla a mi. Praesent pharetra semper purus, a
																vehicula massa interdum in.</p>
															<a class="reply" href="#">reply</a>
														</div>
													</li>
													<li class="comment-body">
														<div class="avatar">
															<img src="../resources/img/author.jpg" alt="avatar">
														</div>
														<div class="comment">
															<h6>Long Makara</h6>
															<div class="date">Jan 20, 2019 - 08:20 pm</div>
															<p>Cras vitae mi erat, posuere mollis arcu.
																Pellentesque iaculis gravida nulla ac hendrerit.
																Vestibulum faucibus neque at lacus tristique eu ultrices
																ipsum mollis. Phasellus venenatis, lacus in malesuada
																pellentesque, nisl ipsum faucibus velit, et eleifend
																velit nulla a mi. Praesent pharetra semper purus, a
																vehicula massa interdum in.</p>
															<a class="reply" href="#">reply</a>
														</div>
													</li>

												</ul>
											</div>
										</div>
										<div class="entry-widget entry-add-comment mb-0 clearfix">
											<div class="entry-widget-title">
												<h4>Leave A Reply</h4>
											</div>
											<div class="entry-widget-content">
												<form id="post-comment" class="mb-0">
													<div class="row">
														<div class="col-sm-12 col-md-6  col-lg-6">
															<input type="text" class="form-control"
																placeholder="Name:">
														</div>
														<div class="col-sm-12 col-md-6 col-lg-6">
															<input type="email" class="form-control"
																placeholder="Email:">
														</div>
														<div class="col-sm-12 col-md-12 col-lg-12">
															<textarea class="form-control mb-40" rows="2"
																placeholder="Comment:"></textarea>
														</div>
														<div class="col-sm-12 col-md-12 col-lg-12">
															<button type="submit"
																class="btn btn--primary btn--inverse">Submit
																Comment</button>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
				<div class="row product-grid">
					<div class="col-md-12">
						<h3 class="related-title">You may also like</h3>
					</div>
					<!-- Product items -->
					<div class="col-md-4">
						<div class="shop-entry text-center margin-bottom-30">
							<c:if test="${ not empty pls }">
								<c:forEach items="${ pls }" var="item">
									<c:if test="${item.pid==9 }">
										<figure>
											<img src="../${item.pphoto}" alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default"
													href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
											</h5>
											<p class="text-italic">${item.pdetail}</p>
											<p class="price">${item.pprice}TL</p>
											<a class="btn btn-border btn-gray"
												href='<s:url value="/order/${item.pid}"></s:url>'>Order
												Now</a>
										</div>
									</c:if>
								</c:forEach>
							</c:if>
						</div>
					</div>
					<!-- Product items -->
					<div class="col-md-4">
						<div class="shop-entry text-center margin-bottom-30">
							<c:if test="${ not empty pls }">
								<c:forEach items="${ pls }" var="item">
									<c:if test="${item.pid==10 }">
										<figure>
											<img src="../${item.pphoto}" alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default"
													href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
											</h5>
											<p class="text-italic">${item.pdetail}</p>
											<p class="price">${item.pprice}TL</p>
											<a class="btn btn-border btn-gray"
												href='<s:url value="/order/${item.pid}"></s:url>'>Order
												Now</a>
										</div>
									</c:if>
								</c:forEach>
							</c:if>
						</div>
					</div>
					<!-- Product items -->
					<div class="col-md-4">
						<div class="shop-entry text-center margin-bottom-30">
							<c:if test="${ not empty pls }">
								<c:forEach items="${ pls }" var="item">
									<c:if test="${item.pid==14 }">
										<figure>
											<img src="../${item.pphoto}" alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default"
													href='<s:url value="/detail/${item.pid}"></s:url>'>${item.ptitle}</a>
											</h5>
											<p class="text-italic">${item.pdetail}</p>
											<p class="price">${item.pprice}TL</p>
											<a class="btn btn-border btn-gray"
												href='<s:url value="/order/${item.pid}"></s:url>'>Order
												Now</a>
										</div>
									</c:if>
								</c:forEach>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</section>
		F
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
	<script src="../resources/js/scripts.js"></script>
	<script src="../resources/js/custom.js"></script>
</body>
</html>