<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<style>
.imgDiv {
	float: left;
}

.descriptionDiv {
	float: left;
	border: 0px solid;
}

.productDiv {
	border: 0px solid;
}

.addressDiv {
	border: 0px solid;
	margin-left: 15%;
}
.productDiv{
	border:0px solid red;
}
.cancelbtn{
	padding: 5px 15px 5px 15px;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<%@ include file="shared/navbar.jsp"%>
		<div class="row">
			<c:forEach items="${orderlist}" var="i">
				<div class="col-md-11" style="border:0px solid;margin-bottom: 2%; margin-left: 3%; box-shadow:1px 5px 6px grey, -1px 3px 20px; border-radius:7px">
					<div class="mainDiv ">
						<div class="imgDiv">
							<img
								src='<c:url value="/resources/images/product/${i.product.product_image}" />'
								width="290px">
						</div>
						<div class="descriptionDiv col-md-9">
							<div class="addressDiv col-md-10">
								<h4>Delivery Address: ${i.address}</h4>
							</div>
							<br />
							<div class="col-md-12 productDiv">
								<div class="productDiv col-md-10">
									<h3>${i.product.company_name}${i.product.product_name}</h3>
								</div>
								<div>
									<a href="" class="btn btn-info cancelbtn">Cancel Order</a>
								</div>
							</div>

						</div>

					</div>

				</div>
			</c:forEach>


		</div>




	</div>

</body>
</html>




</div>

</body>
</html>