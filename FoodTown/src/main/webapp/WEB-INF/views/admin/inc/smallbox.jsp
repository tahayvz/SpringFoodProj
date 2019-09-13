<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

	<!-- Small boxes (Stat box) -->
					<div class="row">
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-info">
								<div class="inner">
									<c:if test="${not empty ols}">
										<h3>${fn:length(ols)}</h3>
									</c:if>
									<p>Order Count</p>
								</div>
								<div class="icon">
									<i class="ion ion-bag"></i>
								</div>
									<a href='<s:url value="/admin/dashboard"></s:url>'
									class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-success">
								<div class="inner">
									<c:if test="${not empty pls}">
										<h3>${fn:length(pls)}</h3>
									</c:if>
									<p>Product Count</p>
								</div>
								<div class="icon">
									<i class="ion ion-stats-bars"></i>
								</div>
									<a href='<s:url value="/admin/products"></s:url>'
									class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
								</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-warning">
								<div class="inner">
									<c:if test="${not empty uls}">
										<h3>${fn:length(uls)}</h3>
									</c:if>
									<p>User Count</p>

								</div>
								<div class="icon">
									<i class="ion ion-person-add"></i>
								</div>
								<a href='<s:url value="/admin/userlist"></s:url>'
									class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
			<!-- 			<div class="col-lg-3 col-6">
							small box
							<div class="small-box bg-danger">
								<div class="inner">
									<h3>65</h3>

									<p>Unique Visitors</p>
								</div>
								<div class="icon">
									<i class="ion ion-pie-graph"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div> -->
					</div>