 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 

<%@ page
	import="java.security.*, java.util.* ,org.hibernate.SessionFactory, javax.servlet.http.HttpServletRequest, com.ecommerce2.ecommercebackend.Dao.*,com.ecommerce2.ecommercebackend.DaoImpl.*,com.ecommerce2.ecommercebackend.model.*,com.ecommerce2.ecommercebackend.DBConfig.*"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<jsp:useBean id="orderdao" class="com.ecommerce2.ecommercebackend.DaoImpl.ProductDaoImpl"></jsp:useBean>
<jsp:useBean id="order" class="com.ecommerce2.ecommercebackend.model.Product"></jsp:useBean>
<%
/* String id = request.getParameter("userId"); */
String driverName = "org.h2.Driver";
String connectionUrl = "jdbc:h2:tcp://localhost/~/test";
String dbName = "user_order1";
String userId = "sa";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	

<style>
nav {
	background-color: #1b6d85;
}

#dropdown1 {
	width: 140px;
	background-color: white;
	z-index: 1;
	list-style: none;
	margin-top: -0.01%;
	margin-left: 12%;
	color: black;
	position: absolute;
	border-bottom-left-radius: 7px;
	border-bottom-right-radius: 7px;
	height: 100px;
	box-shadow: 2px 2px 4px grey, -2px 2px 4px grey;
}

.order_span {
	margin-left: 25%;
}
</style>
<!-- <script type="text/javascript">
	$(document).ready(function(){
		$("#dropdownbtn").click(function(){
			$("#dropdown1").toggle();
		});
		
	});
</script> -->


<div class="row" style="border-bottom-style: none;">
	<nav class="navbar navbar-inverse"
		style="background-color: #292F33; border-radius: 0px; color: white; height: 60px">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="${pageContext.request.contextPath}"
					style="height: 59px"><img
					src="<c:url value="/resources/images/final.jpg" />" height=55px
					width=160px style="margin-top: -9.5%"></a>
			</div>
			<ul class="nav navbar-nav">

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Select Product <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${pageContext.request.contextPath}/samsung">Samsung</a></li>
						<li><a href="${pageContext.request.contextPath}/nokia">Nokia</a></li>
						<li><a href="#">HTC</a></li>
					</ul></li>

				<li><a href="/ecommerce1/user/view/cart"><span
						class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<sec:authorize access="hasAuthority('Admin')">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Admin <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="admin/product">Product</a></li>
							<li><a href="admin/supplier">Supplier</a></li>

						</ul></li>
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
					<li><a href="login">Sign In<span
							class="glyphicon glyphicon-log-in"></span></a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<li><a id="dropdownbtn" style="cursor: pointer"> <%
 	Principal principal = request.getUserPrincipal();
 		if (principal != null) {
 			principal.getName();
 			out.println(principal.getName());
 		}
   %>   <span class="caret"></span>
					</a>
						<ul id="dropdown1" style="">
							<li style="margin-left: -33%; margin-top: 6%;"><a
								href="${pageContext.request.contextPath}/user/showOrder">Your
									Orders<%-- <span class="badge order_span"><%
									   
 	//UserDaoImpl userdao = new UserDaoImpl();
	 


	/* User user2 = new User();
	  user2 = userdao.getById(61);  */
	 
	 order = orderdao.getbyId(58); 
	out.println(order.getCompany_name());
 
	
 %> 
								</span> --%>
							</a></li>
							<li style="margin-left: -33%; margin-top: 6%;">Your Account</li>
							<li style="margin-left: -33%; margin-top: 13%;"><a
								href="${pageContext.request.contextPath}/logout"
								style="border-top: 1px solid; padding-right: 70px">Log Out</a></li>

						</ul></li>
				</sec:authorize>
				<li><a href="registerpage">Register<span
						class="glyphicon glyphicon-registration-mark"></span></a></li>
			</ul>
		</div>

	</nav>
	
</div>
 