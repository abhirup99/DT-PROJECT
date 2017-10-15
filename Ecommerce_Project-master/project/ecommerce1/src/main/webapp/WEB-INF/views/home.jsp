<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ABHIRUP PROJECT WEBSITE</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="home1.jsp">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
</head>
<body
	style="background-color: #ff9933; mergin: 0%; text-shadow: 2px 2px 4px #ff9900; color: #ff6666;">

	<div class="container-fluid">
		<%@include file="shared/navbar.jsp"%>




		<div class="row" style="margin-top: -1.7%;">

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="<c:url value="/resources/images/lamborgini.jpg"/>" alt="lamborgini"
							style="width: 1500px; height: 450px;">



					</div>

					<div class="item">
					
						<img src="<c:url value="/resources/images/047.jpg"/>"alt="farari(2)"
							style="width: 1500px; height: 450px;">

					</div>
					<div class="item">
						<img src="<c:url value="/resources/images/bokert.jpg"/>"alt="Farrari"
							style="width: 1500px; height: 450px;">

					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev" width="500" height="650"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next" width="500" height="650"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
 			</div>

		</div>

		<div class="row">
			<div class="panel panel-default">
				<div class="col-md-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<center>
								<b>Lamborgini</b>
							</center>
						</div>
						<div class="panel-body">
							<img src="<c:url value="/resources/images/lamborgini.jpg"/>"alt="lamborgini"
								style="width: 350px; height: 200px;">
						</div>
						<div class="panel-footer">
							<b>Lamborgini, an Italian manufacturing magnate, founded
								Automobili Ferruccio Lamborghini S.p.A. in 1963 to compete with
								established marques, including Ferrari.Lamborgini was rated the
								world's most powerful brand by Brand Finance. </b>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<center>
								<b>Bugatti Veyron</b>
							</center>
						</div>
						<div class="panel-body">
							<img src="<c:url value="/resources/images/047.jpg"/>"alt="farari(2)"
								style="width: 350px; height: 200px;">
						</div>
						<div class="panel-footer">
							<b>The Bugatti Veyron EB 16.4 is a mid-engined sports car,
								designed and developed in Germany by the Volkswagen Group and
								manufactured in Molsheim, France, by Bugatti Automobiles S.A.S.,
								named after the racing driver Pierre Veyron.</b>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="panel panel-default">

						<div class="panel-heading">
							<center>
								<b>Farrari</b>
							</center>
						</div>
						<div class="panel-body">
						<img src="<c:url value="/resources/images/bokert.jpg"/>"alt="Bugatti"
						style="width: 350px; height: 200px;">
						</div>
						<div class="panel-footer">
							<b>In 2014, Ferrari was rated the world's most powerful brand
								by Brand Finance. In May 2012 the 1962 Ferrari 250 GTO became
								the most expensive car in history, selling in a private
								transaction for US$38.1 million to American communications
								magnate Craig McCaw. </b>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-main contains ends---- >
		<%@include file="shared/footer.jsp"%>


	</div>
</body>
</html>