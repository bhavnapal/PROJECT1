<html lang="en">
<head>
<title>Womens Shopping-${title}</title>
<%@include file="../shared/el.jsp"%>
</head>
<body>
	<%@include file="../shared/navbar.jsp"%>
	<div class="content">
	<div class="row">
		<div class="col-md-4"></div>
		<div class="form-container col-lg-4">
			<form:form modelAttribute="registerModel">
				<div class="row">
					<div class="form-group">
					<h2>Do you want to continue ?</h2>
						<input type="submit" name="_eventId_submit"	class="btn btn btn-primary" value="Continue" /> 
						<input type="submit" name="_eventId_edit" class="btn btn btn-primary"	value="Edit" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</div>
<%@include file="../shared/footer.jsp"%>
</body>
</html>

