
Nilesh Haushiram Darekar
4:29 PM (17 minutes ago)
to me

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>

<meta charset="ISO-8859-1">
<%@ include file="./base.jsp" %>
</head>
<body>
    <div class="container mt-3">
   
      <div class="row">
     
        <div class="col-md-6 offset-md-3">
       
        <h1 class ="text-center mb-3">Change the Product Details</h1>
       
        <form action="${pageContext.request.contextPath }/handle-product" method="post">
        <div class="form-group">
        <input type="hidden" value="${product.id }" name="id" />
        </div>
          <div class="form-group">
          <label for="name">Product Name</label>
          <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name" value="${product.name }" placeholder="Enter the product name here">
          </div>
       
        <div class="form-group">
          <label for="description">Product Description</label>
         <textarea class="form-control" rows="5" name="description" id="description" placeholder="Enter the product description">${product.description }</textarea>
         </div>
       
        <div class="form-group">
          <label for="price">Product Price</label>
          <input type="text" class="form-control" id="price" name="price" value="${product.price }"placeholder="Enter product price">
         </div>
       
        <div class="container text-center">
        <a href="${pageContext.request.contextPath }/home" class="btn btn-outline-danger">Back</a>
        <button type="submit" class="btn btn-primary">Add</button>
        </div>
       
        </form>
        </div>
      </div>
    </div>

</body>
</html>