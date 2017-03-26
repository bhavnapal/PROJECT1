<%@include file="el.jsp"%>
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"	data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<li id="home"><a class="navbar-brand" href="${contextRoot}/home">WomenShopping</a></li>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">

				<li id="listProducts"><a href="${contextRoot}/products">View Products</a></li>
				<li id="about"><a href="${contextRoot}/about">About Us</a></li>
			
				<security:authorize access="hasAuthority('Admin')">
					 
			 			<li><a href="${contextRoot}/admin">Category</a></li>
						<li><a	href="${contextRoot}/admin/admin/Products">Product</a></li>
				</security:authorize>
				<security:authorize access="isAuthenticated()">
				<li id="logout"><a href="${contextRoot}/cart/user/viewcart">View cart</a></li>
					<li id="logout"><a href="${contextRoot}/logout">Logout</a></li>
				</security:authorize>
				<security:authorize access="isAnonymous()">
					<li id="login"><a href="${contextRoot}/login">Sign in</a></li>
					<li id="register"><a href="${contextRoot}/register">Sign Up</a></li>
				</security:authorize>
			</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>




