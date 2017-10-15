<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
	.productDiv{
	float:left;
	 
	margin-top:1%;
	margin-left:10%;
	
	}
	.btnDiv{
		float:right;
		 
		margin-top:5%;
	
	}
	.cartbtn{
		background-color:	#00ffff;
		padding:15px 15px 15px 15px;
		 
	}
	.buybtn{
		background-color:	#00ffff;
		padding:7px 20px 7px 15px;
		margin-top:4%;
	}
	
	
	</style>
</head>
<body>
	<div class="container-fluid">
		<%@ include file="shared/navbar.jsp"%>
		<div class="row">
		<div class="col-md-12">
			  <c:forEach items="${prdList}" var="i">
			   <div class="col-md-12" style="margin-top:2%;  background-color:#F8F8F8;">
			   		<div class="col-md-12">
			   				<div  style="float:left; "><img src="<c:url value="/resources/images/product/${i.product_image}" /> " width="300px" ></div>
			   				<div class="productDiv">
					   		    
					   		     <div style="float:rigth; color:red; font-size: 30px;"><p>${i.company_name} ${i.product_name}</p></div>
					   		 <div style="float:rigth; color:blue; font-size: 25px;"><p>Price : ${i.product_price} </p></div>
					   		  <div style="float:rigth; color:blue; font-size: 25px;"><p>Description : ${i.product_description} </p></div>
					   		</div>  
			   		  <div class="btnDiv">
			   		  			 <a href="/ecommerce1/user/addCart/${i.productId}" class="btn btn-info" style="text-decoration:none;">Add To Cart</a> <br/>
			   		   			 <a href="#"  class="btn btn-info" style="margin-top:10%;">Buy Now</a>
			   		   </div>
			   		   
			   		 </div> 
			   </div>
			  
			  </c:forEach>
		</div>
		 
		</div>
	</div>
</body>
</html>