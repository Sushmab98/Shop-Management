<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>SSS Shopping Mall | home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      

</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">SSS Shopping Mall</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Login</a></li>
					<li><a href="/register">New Registration</a></li>
					<li><a href="/show-shops">All Shops</a></li>
				</ul>
			</div>
		</div>
	</div>
	

	<c:choose>
		<c:when test="${mode=='MODE_HOME' }">
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>Welcome to SSS-ShoppingMall</h1>
					<h3>Enjoy Shopping Here</h3>
				</div>
			</div>

		</c:when>

		<c:when test="${mode=='MODE_REGISTER' }">
			<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-shop">
					<input type="hidden" name="id" value="${shop.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Shop Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="shopname"
								value="${shop.shopname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Shop Category</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="category"
								value="${shop.category }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Shop status</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="shopstatus"
								value="${shop.shopstatus }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Shop Owner</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="shopowner"
								value="${shop.shopowner }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">LeaseStatus</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="leasestatus"
								value="${shop.leasestatus }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${mode=='ALL_SHOPS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Shops</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>ShopName</th>
								<th>Shop Category</th>
								<th>Shop Status</th>
								<th>Shop Owner</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="shop" items="${shops }">
								<tr>
									<td>${shop.id}</td>
									<td>${shop.shopname}</td>
									<td>${shop.category}</td>
									<td>${shop.shopstatus}</td>
									<td>${shop.shopowner}</td>
									<td><a href="/delete-shop?id=${shop.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-shop?id=${shop.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_UPDATE' }">
			<div class="container text-center">
				<h3>Update User</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-shop">
					<input type="hidden" name="id" value="${shop.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Shop Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="shopname"
								value="${shop.shopname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">ShopStatus</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="shopstatus"
								value="${shop.shopstatus }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Shop Category</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="category"
								value="${shop.category }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Shop Owner </label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="shopowner"
								value="${shop.shopowner }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Lease Status</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="leasestatus"
								value="${shop.leasestatus }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_LOGIN' }">
			<div class="container text-center">
				<h3>Shop Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-shop">
					<c:if test="${not empty error }">
						<div class= "alert alert-danger">
							<c:out value="${error }"></c:out>
							</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Shop Id</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="id"
								value="${shop.id }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Shop Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="shopname"
								value="${shop.shopname }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
					</form>
					</div>
					</c:when>
	</c:choose>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>