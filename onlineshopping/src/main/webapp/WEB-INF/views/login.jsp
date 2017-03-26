<html lang="en">
<head>
<title>Womens Shopping-${title}</title>
<%@include file="./shared/el.jsp"%>
</head>
<body>
	<%@include file="./shared/navbar.jsp"%>
	<div class="content">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="form-container col-lg-6">

				<form method="post" class="form-signin">
					<h2 class="form-signin-heading">Please sign in</h2>
					<div class="col-xs-6">
					<c:if test="${error==true}">
					<div><p style="color:red;">Invalid credentials!!! Please sign up</p></div>
					</c:if>
						<label for="email" class="sr-only"></label>Email:
						 <input	type="text" name="username" id="email" class="form-control" placeholder="Email" required autofocus><label
							for="password" class="sr-only"></label> Password:
							<input type="password" name="password" id="password" class="form-control" placeholder="Password" required> <br>
						<button type="submit" class="btn btn-primary">Sign In</button>
					</div>
				</form>

			</div>
		</div>
		<%@include file="./shared/footer.jsp"%>
	</div>
	
</body>
</html>