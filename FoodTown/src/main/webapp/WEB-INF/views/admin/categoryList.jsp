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
							<h1 class="m-0 text-dark">Category Control</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Category</li>
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
							<h3>Add Category</h3>

							<div class="card card-primary">

								<!-- form start -->
								<form action='<s:url value="/admin/categoryInsert"></s:url>'
									method="post" role="form">
									<div class="card-body">

										<div class="form-group">
											<label for="exampleInputName">Category Name</label> <input
												name="ctname" type="text" class="form-control"
												id="exampleInputName" placeholder="Enter Category">
										</div>
									</div>
									<div class="card-footer">
										<button type="submit" class="btn btn-primary">Submit</button>
									</div>
								</form>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="card">
								<div class="card-header">
									<h2 class="card-title">Category List</h2>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th style="width: 10px">ID</th>
												<th>Category Name</th>
												<th style="width: 175px">Action</th>
											</tr>
										</thead>
										<tbody>

											<c:if test="${ not empty ctgData }">
												<c:forEach items="${ctgData }" var="item">
													<tr>
														<td>${item.ctid }</td>
														<td>${item.ctname }</td>
														<td><a
															href='<s:url value="/admin/deleteCategory/${ item.ctid }"></s:url>'
															class="btn btn-danger">Delete</a> <a
															href='<s:url value="/admin/updateCategory/${ item.ctid }"></s:url>'
															class="btn btn-info">Update</a></td>
													</tr>
												</c:forEach>
											</c:if>

										</tbody>
									</table>
								</div>

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
