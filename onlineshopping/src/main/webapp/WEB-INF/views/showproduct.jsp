<html>
<head>
<Title>Product Details</Title>
<%@include file="./shared/el.jsp"%>
</head>

<body>
	<%@include file="./shared/navbar.jsp"%>
	<div class="container" id="product-section">
		<div class="row">
			<div class="col-md-3">
				<img src="${images}/${prd.imageUrl}" class="image-responsive" height="200" width="200" />
				<!--  adjusting image with the layout -->
			</div>
			<div class="col-md-5 ">
				<ul>
					<span style="font-weight:bold ; font-size:18px">Brand:</span> ${prd.brand}<br>
					<span style="font-weight:bold ; font-size:18px">Product Name:</span> ${prd.name}<br>
					<span style="font-weight:bold ; font-size:18px">Product Price: </span><span>&#8377;</span>${prd.price}<br>
					<span style="font-weight:bold ; font-size:18px">Quantity:</span> ${prd.quantity}<br>
				</ul>
				<div class="button">
				<a href="/onlineshopping/cart/user/addtocart/${prd.id}" class="btn btn-primary" role=button>
				<span class="glyphicon glyphicon-shopping-cart"></span>Add To Cart</a>
				<a href="/onlineshopping/products" class="btn btn-primary" role=button>Back</a>
				</div>
			
				</div>
		</div>
	</div>
	<!-- end row -->
	<%@include file="./shared/footer.jsp"%>
	<!-- end container -->

</body>
</html>
