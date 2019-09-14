<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
	<!-- Left navbar links -->
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
			href="#"><i class="fas fa-bars"></i></a></li>
		<li class="nav-item d-none d-sm-inline-block"><a
			href='<s:url value="/admin/dashboard"></s:url>' class="nav-link">Home</a>
		</li>
	</ul>

	<!-- SEARCH FORM -->
	<form action='<s:url value="/admin/search"></s:url>'
		class="form-inline ml-3">
		<div class="input-group input-group-sm">
			<input class="form-control form-control-navbar" name="q"
				class="form-control mr-sm-2" type="text" placeholder="Search"
				aria-label="Search" value="${param.q}">
			<div class="input-group-append">
				<button class="btn btn-navbar" type="submit">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</div>
	</form>

	<!-- Right navbar links -->
	<ul class="navbar-nav ml-auto">
		<!-- Messages Dropdown Menu -->
		<li class="nav-item dropdown"><a class="nav-link"
			data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
				<span class="badge badge-danger navbar-badge"> <!-- 	order count -->
					<c:if test="${not empty ls}">
						${fn:length(ls)}
				</c:if>
			</span>
		</a>
			<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
				<a href="#" class="dropdown-item"> <!-- Message Start -->
					<div class="media">
						<div class="media-body">
							<h3 class="dropdown-item-title">
								Brad Diesel
								<c:if test="${not empty ls}">
									<c:forEach items="${ls }" var="item" end="0">
										<h3>${item.otitle}</h3>
									</c:forEach>
								</c:if>
								<span class="float-right text-sm text-danger"><i
									class="fas fa-star"></i></span>
							</h3>
							<p class="text-sm">Call me whenever you can...</p>
							<p class="text-sm text-muted">
								<i class="far fa-clock mr-1"></i> 4 Hours Ago
							</p>
						</div>
					</div> <!-- Message End -->
				</a>
				<div class="dropdown-divider"></div>
				<a href="#" class="dropdown-item"> <!-- Message Start -->
					<div class="media">

						<div class="media-body">
							<h3 class="dropdown-item-title">
								John Pierce <span class="float-right text-sm text-muted"><i
									class="fas fa-star"></i></span>
								<c:if test="${not empty ls}">
									<c:forEach items="${ls }" var="item" begin="1" end="1">
										<h3>${item.otitle}</h3>
									</c:forEach>
								</c:if>
							</h3>
							<p class="text-sm">I got your message bro</p>
							<p class="text-sm text-muted">
								<i class="far fa-clock mr-1"></i> 4 Hours Ago
							</p>
						</div>
					</div> <!-- Message End -->
				</a>
				<div class="dropdown-divider"></div>
				<a href="#" class="dropdown-item"> <!-- Message Start -->
					<div class="media">

						<div class="media-body">
							<h3 class="dropdown-item-title">
								Nora Silvester <span class="float-right text-sm text-warning"><i
									class="fas fa-star"></i></span>
								<c:if test="${not empty ls}">
									<c:forEach items="${ls }" var="item" begin="2" end="2">
										<h3>${item.otitle}</h3>
									</c:forEach>
								</c:if>
							</h3>
							<p class="text-sm">The subject goes here</p>
							<p class="text-sm text-muted">
								<i class="far fa-clock mr-1"></i> 4 Hours Ago
							</p>
						</div>
					</div> <!-- Message End -->
				</a>
				<div class="dropdown-divider"></div>
				<a href="#" class="dropdown-item dropdown-footer">See All
					Messages</a>
			</div></li>
		<!-- Notifications Dropdown Menu -->
		<li class="nav-item dropdown"><a class="nav-link"
			data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
				class="badge badge-warning navbar-badge">15</span>
		</a>
			<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
				<span class="dropdown-item dropdown-header">15 Notifications</span>
				<div class="dropdown-divider"></div>
				<a href="#" class="dropdown-item"> <i
					class="fas fa-envelope mr-2"></i> 4 new messages <span
					class="float-right text-muted text-sm">3 mins</span>
				</a>
				<div class="dropdown-divider"></div>
				<a href="#" class="dropdown-item"> <i class="fas fa-users mr-2"></i>
					8 friend requests <span class="float-right text-muted text-sm">12
						hours</span>
				</a>
				<div class="dropdown-divider"></div>
				<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
					3 new reports <span class="float-right text-muted text-sm">2
						days</span>
				</a>
				<div class="dropdown-divider"></div>
				<a href="#" class="dropdown-item dropdown-footer">See All
					Notifications</a>
			</div></li>
		<li class="nav-item"><a class="nav-link"
			data-widget="control-sidebar" data-slide="true" href="#"> <i
				class="fas fa-th-large"></i>
		</a></li>
	</ul>
</nav>
<!-- /.navbar -->