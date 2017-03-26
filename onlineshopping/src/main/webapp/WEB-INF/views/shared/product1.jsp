<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="el.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product1</title>
</head>
<body>
<%@include file="navbar.jsp" %><br><br><br>
<table class="table table-hover">
    <thead>
      <tr>
        <th>Levi's</th>
        <th><img src="${images}/image1.jpg" alt="product" height="70" width="70"></th>
        <th><a href="/onlineshopping/viewLevis"><button type="button" class="btn btn-primary">VIEW</button></a>
         <button type="button" class="btn btn-primary">ADD TO CART</button></th>
      </tr>
    </thead>
    <thead>
      <tr>
        <th>Max Mars</th>
        <th><img src="${images}/image2.jpg" alt="product" height="70" width="70"></th>
        <th><a href="/onlineshopping/viewMax"><button type="button" class="btn btn-primary">VIEW</button></a> <button type="button" class="btn btn-primary">ADD TO CART</button></th>
      </tr>
    </thead>  </table>
<!-- footer -->
<%@include file="footer.jsp" %>
</body>

</html>