<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="./base.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Insert title here</title>
</head>
<body>


<div class="container mt-3">
   
    <div class="row">
   
    <div class="col-md-12">
    <h1 class="text-center mb-3">Welcome To Product App</h1>
   
  <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">S.NO</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${product }" var="p">
   <tr>
      <th scope="row">${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description }</td>
      <td>&#x20B9; ${p.price }</td>
      <td>
      <a href="delete/${p.id }"><i class="fas fa-trash"></i></a>
       <a href="update/${p.id }"><i class="fas fa-pen-nib"></i></a>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>

   <div class="container text-center">
    <a href="${pageContext.request.contextPath }/addproduct" class="btn btn-outline-danger">ADD PRODUCT</a>
   </div>
   
    </div>
  </div>
</div>
</body>
</html>