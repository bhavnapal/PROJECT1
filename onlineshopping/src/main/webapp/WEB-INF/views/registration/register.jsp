<html lang="en">
<head>
<title>Womens Shopping-${title}</title>
<%@include file="../shared/el.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
</head>
<body>
	<%@include file="../shared/navbar.jsp"%>
	<div class="content">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="form-container col-lg-4">
				<form:form class="form-horizontal" method="POST" modelAttribute="user">
					<div class="row">
						<div class="form-group">
							<label class="col-md-3 control-lable" for="userName">User Name</label>
							<form:input path="userName" type="text" class="form-control" />

							<div class="has-error">
								<form:errors style="color:red" path="userName"	class="help-inline" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group">
							<label class="col-md-3 control-lable" for="firstName">First	Name</label>
							<form:input path="firstName" type="text" class="form-control" />

							<div class="has-error">
								<form:errors style="color:red" path="firstName"
									class="help-inline" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group">
							<label class="col-md-3 control-lable" for="lastName">Last Name</label>
							<form:input path="lastName" type="text" class="form-control" />

							<div class="has-error">
								<form:errors style="color:red" path="lastName"	class="help-inline" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<label class="col-md-3 control-lable" for="role">Role</label>
							<form:select path="role" type="text" class="form-control">
								<form:option value="User" label="User" selected="true" />
								
							</form:select>
							<div class="has-error">
								<form:errors style="color:red" path="role" class="help-inline" />
							</div>
						</div>
					</div> 

					<div class="row">
						<div class="form-group">
							<label class="col-md-3 control-lable" for="password">Password</label>
							<form:input path="password" type="password" class="form-control" />
							<div class="has-error">
								<form:errors style="color:red" path="password"	class="help-inline" />
							</div>
						</div>
					</div>
					<%-- <div class="row">
						<div class="form-group">
							<label class="col-md-3 control-lable" for="confirmPassword">Confirmpassword</label>
							<form:input path="confirmPassword" type="password" class="form-control" />
							<div class="has-error">
								<form:errors style="color:red" path="confirmPassword"	class="help-inline" />
							</div>
						</div>
					</div> --%>

					<div class="row">
						<div class="form-group">
							<label class="col-md-3 control-lable" for="email">Email</label>
							<form:input path="email" type="email" class="form-control" />
							<div class="has-error">
								<form:errors style="color:red" path="email" class="help-inline" />
							</div>
						</div>
					</div>

					<div class="row">
						<div>
							<div class="form-actions floatRight">
								<input type="submit" name="_eventId_submit"	class="btn btn-primary btn-sm" value="Next" />
								</th>
							</div>
						</div>
					</div>
				</form:form>
			</div>
			<div class="col-md-2"></div>
		</div>
	<%@include file="../shared/footer.jsp" %>
</body>
</html>