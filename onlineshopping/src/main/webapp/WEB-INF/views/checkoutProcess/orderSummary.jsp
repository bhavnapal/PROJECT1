<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<s:url value="/resources/images" var="images" />
<s:url value="/resources/css" var="css" />

</head>
<body>
	<div class="container">
	<%@include file="../shared/navbar.jsp" %>
		<h2 class="page-header">ORDER SUMMARY</h2>
		<div class="jumbotron">
			<form:form modelAttribute="cartModel" class="form-horizontal"
				method="post">
				<h3>CUSTOMER DETAILS</h3>
				<div class="form-group">
					<label class="control-label col-sm-2">Customer Name:</label>
					<div class="col-sm-10 displayinfo">${cartModel.user.userName}</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Email:</label>
					<div class="col-sm-10 displayinfo">${cartModel.user.email}</div>

				</div>

				<h3>SHIPPING ADDRESS DETAILS</h3>
				<div class="form-group">
					<label class="control-label col-sm-2">Address :</label>
					<div class="col-sm-10 displayinfo">${cartModel.address.billingAddress}</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2">State:</label>
					<div class="col-sm-10 displayinfo">${cartModel.address.state}</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">City:</label>
					<div class="col-sm-10 displayinfo">${cartModel.address.city}</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2">Pincode:</label>
					<div class="col-sm-10 displayinfo">${cartModel.address.pincode}</div>
				</div>
				<h3>ITEM DETAILS</h3>
				<div class="form-group">
					<ul>
						<c:forEach items="${cartModel.cartItemList }" var="item">
							<div class="form-group">
								<label class="control-label col-sm-2">Name:</label>
								<div class="col-sm-10 displayinfo">${item.product.name}</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2">Quantity:</label>
								<div class="col-sm-10 displayinfo">${item.quantity}</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2">Unit Price:</label>
								<div class="col-sm-10 displayinfo">${item.product.price}</div>
							</div>
						
						</c:forEach>

					</ul>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Grand Total:</label>
					<div class="col-sm-10 displayinfo">${cartModel.cart.grandTotal}</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<input name="_eventId_submit" type="submit" value="Pay" />
					</div>
				</div>
			</form:form>
		</div>
		
	</div>

</body>