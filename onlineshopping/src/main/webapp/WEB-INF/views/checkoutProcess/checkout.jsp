<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix = "form" uri = "http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<s:url value="/resources/images" var="images"/>
		<s:url value="/resources/css" var="css"/>
		
		<%-- <link rel="stylesheet" type="text/css" href="${css}/singlePage.css"> --%>
	</head>
	<body>
		<div class="container">
		<%@include file="../shared/navbar.jsp" %>
		<h2 class="page-header">SHIPPING ADDRESS</h2>
		<div>
			<form:form modelAttribute="cartModel" class="form-horizontal" method="post">
				<c:forEach items="${cartModel.user.address}" var="adr">
					<div class="form-group">
						<label class="control-label col-sm-2" for="billingAddress">Address:</label>
						<div class="col-sm-10 displayinfo">${adr.billingAddress}</div>
					</div>	
					<div class="form-group">
						<label class="control-label col-sm-2" for="city">CITY:</label>
						<div class="col-sm-10 displayinfo">${adr.city}</div>
					</div>		
					<div class="form-group">
						<label class="control-label col-sm-2" for="state">State:</label>
						<div class="col-sm-10 displayinfo">${adr.state}</div>
					</div>	
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="shippingAddress">Pincode:</label>
						<div class="col-sm-10 displayinfo">${adr.pincode}</div>
					</div>
					<div class="form-group">
					<label class="control-label col-sm-2" for="phone">Select Any one for Shipping:</label>
					<div class="col-sm-10">
						<form:radiobutton path="addressid" value="${adr.addressId}"/>
						<c:out value="${adr.addressId}"/>
					</div>
				</div>
				</c:forEach>
	
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<input name="_eventId_add" type="submit" value="New Address" />
						<input name="_eventId_next" type="submit" value="Next" /> 
					</div>
				</div>
			</form:form>
		</div>
		
	</div>

</body>
