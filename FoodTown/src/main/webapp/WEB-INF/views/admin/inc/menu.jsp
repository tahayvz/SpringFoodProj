<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<script>
	function exitfunc() {
		const cnf = confirm("Are you sure you want to logout?");
		if (cnf) {
			return true;
		} else {
			return false;
		}
	}
</script>
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->
	<a href="index3.html" class="brand-link"> <span
		class="brand-text font-weight-light">AdminLTE 3</span>
	</a>

	<!-- Sidebar -->
	<div class="sidebar">
		<!-- Sidebar user panel (optional) -->
		<div class="user-panel mt-3 pb-3 mb-3 d-flex">
			<div class="image">
				<img src='<s:url value="/resources/img/profile.png"></s:url>'
					class="img-circle elevation-2" alt="User Image">
			</div>
			<div class="info">
				<a href="#" class="d-block"> <c:if test="${not empty adminls}">
				${adminls.aname} 
				</c:if>
				</a>
			</div>
		</div>

		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column"
				data-widget="treeview" role="menu" data-accordion="false">
				<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
				<li class="nav-item has-treeview menu-open"><a href="#"
					class="nav-link active"> <i
						class="nav-icon fas fa-tachometer-alt"></i>
						<p>
							Dashboard <i class="right fas fa-angle-left"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a
							href='<s:url value="/admin/dashboard"></s:url>'
							class="nav-link ${link == 'dashboard'? 'active':'' } "> <i
								class="far fa-circle nav-icon"></i>
								<p>Admin Home</p>
						</a></li>
						<li class="nav-item"><a
							href='<s:url value="/admin/settings"></s:url>'
							class="nav-link ${link == 'settings'? 'active':'' } "> <i
								class="far fa-circle nav-icon"></i>
								<p>Settings</p>
						</a></li>
						<li class="nav-item"><a
							href='<s:url value="/admin/products"></s:url>' class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Product List</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a
					href='<s:url value="/admin/addproduct"></s:url>' class="nav-link">
						<i class="nav-icon fas fa-th"></i>
						<p>
							Add Product <span class="right badge badge-danger">New</span>
						</p>
				</a></li>
				<li class="nav-item has-treeview"><a href="#" class="nav-link">
						<i class="nav-icon fas fa-copy"></i>
						<p>
							Admin Control <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">6</span>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a
							href='<s:url value="/admin/addadmin"></s:url>' class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Add Admin</p>
						</a></li>
					</ul></li>
				<li class="nav-item has-treeview"><a href="#" class="nav-link">
						<i class="nav-icon fas fa-chart-pie"></i>
						<p>
							User Control <i class="right fas fa-angle-left"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a
							href='<s:url value="/admin/userlist"></s:url>' class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>User List</p>
						</a></li>
					</ul></li>
				<li class="nav-item has-treeview"><a href="#" class="nav-link">
						<i class="nav-icon fas fa-tree"></i>
						<p>
							Products Category <i class="fas fa-angle-left right"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><c:if test="${not empty cls}">
								<c:forEach items="${cls}" var="item" begin="0" end="0">
									<a
										href='<s:url value="/admin/categoryproduct/${item.ctname}"></s:url>'
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>${item.ctname}</p>
									</a>
								</c:forEach>
							</c:if></li>
						<li class="nav-item"><c:if test="${not empty cls}">
								<c:forEach items="${cls}" var="item" begin="1" end="1">
									<a
										href='<s:url value="/admin/categoryproduct/${item.ctname}"></s:url>'
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>${item.ctname}</p>
									</a>
								</c:forEach>
							</c:if></li>
						<li class="nav-item"><c:if test="${not empty cls}">
								<c:forEach items="${cls}" var="item" begin="2" end="2">
									<a
										href='<s:url value="/admin/categoryproduct/${item.ctname}"></s:url>'
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>${item.ctname}</p>
									</a>
								</c:forEach>
							</c:if></li>
						<li class="nav-item"><c:if test="${not empty cls}">
								<c:forEach items="${cls}" var="item" begin="3" end="3">
									<a
										href='<s:url value="/admin/categoryproduct/${item.ctname}"></s:url>'
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>${item.ctname}</p>
									</a>
								</c:forEach>
							</c:if></li>
						<li class="nav-item"><c:if test="${not empty cls}">
								<c:forEach items="${cls}" var="item" begin="4" end="4">
									<a
										href='<s:url value="/admin/categoryproduct/${item.ctname}"></s:url>'
										class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>${item.ctname}</p>
									</a>
								</c:forEach>
							</c:if></li>
					</ul></li>
				<li class="nav-item has-treeview"><a href="#" class="nav-link">
						<i class="nav-icon fas fa-table"></i>
						<p>
							Category Control <i class="right fas fa-angle-left"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a
							href='<s:url value="/admin/categoryList"></s:url>'
							class="nav-link"> <i class="far fa-circle nav-icon"></i>
								<p>Categories</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a onclick="return exitfunc();"
					href='<s:url value="/admin/exit"></s:url>' class="nav-link"> <i
						class="nav-icon far fa-circle text-danger"></i>
						<p class="text">Exit</p>
				</a></li>

			</ul>
		</nav>
		<!-- /.sidebar-menu -->
	</div>
	<!-- /.sidebar -->
</aside>