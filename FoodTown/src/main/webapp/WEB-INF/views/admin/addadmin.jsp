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
<script>
	function del() {
		const cnf = confirm("Are you sure you want to delete?");
		if (cnf) {
			return true;
		} else {
			return false;
		}
	}	
</script>

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
							<h1>Add Admin</h1>

							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">Quick Example</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->
								<form action='<s:url value="/admin/adminInsert"></s:url>'
									method="post" role="form">
									<div class="card-body">

										<div class="form-group">
											<label for="exampleInputName">Name Surname</label> <input
												name="aname" type="text" class="form-control"
												id="exampleInputName" placeholder="Enter Name">
										</div>

										<div class="form-group">
											<label for="exampleInputEmail1">Email address</label> <input
												name="amail" type="email" class="form-control"
												id="exampleInputEmail1" placeholder="Enter email">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Password</label> <input
												name="apass" type="password" class="form-control"
												id="exampleInputPassword1" placeholder="Password">
										</div>
									</div>

									<div class="card-footer">
										<button type="submit" class="btn btn-primary">Submit</button>
									</div>
								</form>
							</div>
						</div>
						<div class="col-sm-6">
							<h1>Admin List</h1>
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Bordered Table</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th style="width: 10px">#</th>
												<th>Task</th>
												<th>Progress</th>
												<th style="width: 175px">Action</th>
											</tr>
										</thead>
										<tbody>

											<c:if test="${ not empty als }">
												<c:forEach items="${als }" var="item">
													<tr>
														<td>${item.aid }</td>
														<td>${item.aname }</td>
														<td>${item.amail }</td>
														<td><a onclick="del()"
															href='<s:url value="/admin/deleteAdmin/${ item.aid }"></s:url>'
															class="btn btn-danger">Delete</a> <a
															href='<s:url value="/admin/updateAdmin/${ item.aid }"></s:url>'
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
