<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 3 | Dashboard</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<c:import url="/admin/css"></c:import>

</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">


		<c:import url="/admin/header"></c:import>
		<c:import url="/admin/menu"></c:import>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">Dashboard</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Dashboard v1</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<!-- Small boxes (Stat box) -->
					<c:import url="/admin/smallbox"></c:import>

					<div class="row">
						<div class="col-sm-6">
							<h1>Update Product</h1>

							<div class="card card-primary">
															
								<form action="${product != null ? 'productEdit' : '' }"
									method="post" role="form">
									<div class="card-body">
									
										<div class="form-group">
											<label for="exampleInputName">Title</label> <input
												value="${product.ptitle }" name="ptitle" type="text"
												class="form-control" placeholder="Enter title">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Photo</label> <input
												value="${product.pphoto }" name="pphoto" type="text"
												class="form-control" placeholder="Enter photo">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Price</label> <input
												value="${product.pprice }" name="pprice" type="number"
												class="form-control" placeholder="Enter Price">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Category</label> <select
												name="pcategory" class="form-control">
												<c:if test="${not empty ctgData}">
													<c:forEach items="${ctgData }" var="item">
														<c:if test="${product.pcategory== item.ctid}">
															<option selected="selected" value="${item.ctid}">${item.ctname}</option>
														</c:if>
														<c:if test="${product.pcategory != item.ctid}">
															<option value="${item.ctid}">${item.ctname}</option>
														</c:if>
													</c:forEach>
												</c:if>
											</select>
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Statu</label> <select
												name="pstatu" class="form-control">

												<c:if test="${not empty sls}">
													<c:forEach items="${sls}" var="item">
														<c:if test="${product.pstatu== item.sid}">
															<option selected="selected" value="${item.sid}">${item.sname}</option>
														</c:if>
														<c:if test="${product.pcategory != item.sid}">
															<option value="${item.sid}">${item.sname}</option>
														</c:if>
													</c:forEach>
												</c:if>
											</select>
										</div>
										<div class="form-group">
											<label for="exampleInputName">Detail</label> <input
												value="${product.pdetail }" name="pdetail" type="text"
												class="form-control" placeholder="Enter product detail">
										</div>
									</div>
									<div class="card-footer">
										<button type="submit" class="btn btn-primary">Submit</button>
									</div>
								</form>
							</div>
						</div>

					</div>

				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<strong>Copyright &copy; 2014-2019 <a
				href="http://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
			<div class="float-right d-none d-sm-inline-block">
				<b>Version</b> 3.0.0-beta.2
			</div>
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<c:import url="/admin/js"></c:import>

</body>
</html>
