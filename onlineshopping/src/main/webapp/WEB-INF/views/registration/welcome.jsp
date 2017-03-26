<html lang="en">
<head>
<title>Womens Shopping-${title}</title>
<%@include file="../shared/el.jsp"%>
</head>
<body>
<div class="container">
	<%@include file="../shared/navbar.jsp"%>
	<div class="content">
	<form:form class="form-horizontal" method="post">
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<%-- <a href="${contextRoot}/login"><span class="glyphicon glyphicon-user"></span> Login</a> --%>
						<h2>Welcome , you have successfully registered...Now you can signin</h2>
						<h2>Email Id: ${user.email}</h2>
					</div>
			</div>
	</form:form>
	</div>
	<%@include file="../shared/footer.jsp"%>
</div>
</body>
</html>