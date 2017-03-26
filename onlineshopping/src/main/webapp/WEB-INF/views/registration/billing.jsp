<html lang="en">
<head>
<title>Womens Shopping-${title}</title>
<%@include file="../shared/el.jsp"%>
</head>
<body>
<%@include file="../shared/navbar.jsp" %>

		<div class="content">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="form-container col-lg-4">
					<form:form class="form-horizontal" method="POST" modelAttribute="address">
						<h3>Billing Address</h3>
						<div class="row">
							<div class="form-group">
								<label class="col-md-3 control-lable" for="billingAddress">Address</label>
								<form:input path="billingAddress" type="text" class="form-control" />
								<div class="has-error">
									<form:errors style="color:red" path="billingAddress" class="help-inline" />
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="form-group">
								<label class="col-sm-6 control-lable" for="city">City</label>
								<form:input path="city" type="text" class="form-control"/>
								<div class="has-error">
									<form:errors style="color:red" path="city"	class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="col-sm-6 control-lable" for="pincode">Pincode</label>
								<form:input path="pincode" type="text" class="form-control"/>
								<div class="has-error">
									<form:errors style="color:red" path="pincode" class="help-inline" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label class="col-sm-6 control-lable" for="state">State</label>
								<form:input path="state" type="text" class="form-control"/>
								<div class="has-error">
									<form:errors style="color:red" path="state" class="help-inline" />
								</div>
							</div>
						</div>
						<div class="input-group">
							<div class="form-group">
							<table>
							<tr>
							<td><form:checkbox path="shippingAddress" value="1" /></td>
							<td><label>Shipping address is same as Billing address</label></td>
							</tr>
							</table>	
							</div>
						</div> 
 
						<div class="row">
							<div class="form-group">
								<input type="submit" name="_eventId_submit" value="register" class="btn btn-primary btn-md"/>
							</div>
						</div>
						</div>
										
					</form:form>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
	<%@include file="../shared/footer.jsp" %>
	</body>
</html>