<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.object.user.*"%>
<%@ page import="com.user.tariffmgmt.*"%>
<%@ page import="java.util.*"%>

<% User u = (User)session.getAttribute("user");%>
<% int plan_id = Integer.parseInt(request.getParameter("plan_id")); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Customer Management Portal</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="css/mdb.min.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<link href="css/style.css" rel="stylesheet">
<style rel="stylesheet" href="customerManagementPortal.css"></style>
</head>
<body
	style="background-image: url(https://www.affirmednetworks.com/wp-content/uploads/2020/09/a4o-cloud-mobile-1.jpg); background-repeat: no-repeat; background-size: 110%;">
	<div>
		<h1 align="center"
			style="color: white; font-weight: bold; font-family: 'Courier New'">Welcome to Dispur Wireless</h1>
		<br>
		<br>
	</div>
	<div class="signUpForm"
		style="float: center; size: 50%; margin-left: 15%; margin-bottom: 2%; margin-right: 15%">
		<!-- Material form register -->
		<div class="card">

			<!--Card content-->
			<div class="card-body px-lg-5 pt-0">
			
			<br><br>
			
			<h3><%= TariffMgmtDao.unsubscribePlan(u.getUser_id(), plan_id) %></h3>
		<form class="text-center" style="color: #757575;"
					action="userTariffMgmt.jsp">


					<button
						class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0"
						type="submit">Go back</button>

				</form>
			</div>

		</div>
		<!-- Material form register -->
	</div>
</body>
</html>