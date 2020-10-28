<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.object.user.*"%>
<%@ page import="com.user.tariffmgmt.*"%>
<%@ page import="java.util.*"%>

<% User u = (User)session.getAttribute("user");%>
<% List <TariffPlan> x = TariffMgmtDao.fetchAvailablePlansId(u.getUser_id()); %>
<% List <TariffPlan> sub = TariffMgmtDao.fetchSubscribedPlansId(u.getUser_id()); %>

<c:set var="subdPlans" value="<%=sub%>" />
<c:set var="plans" value="<%=x%>" />
<c:set var="count" value="1" scope="page" />



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Tariff Plan Management Portal</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="css/mdb.min.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<link href="css/style.css" rel="stylesheet">
</head>

<body
	style="background-image: url(https://www.affirmednetworks.com/wp-content/uploads/2020/09/a4o-cloud-mobile-1.jpg); background-size: 110%;">
	<br>
	<div>
		<h1 align="center"
			style="color: white; font-weight: bold; font-family: 'Courier New'">The
			Dispur Wireless</h1>
		<br>
		<h3 align="center" style="color: white; font-family: 'Courier New'">Tariff
			Plan Management Portal</h3>
		<br>
	</div>
	<br>
	<div align="center" style="color: white; font-family: 'Courier New'">
		<h5>
			Welcome
			<%=u.getName()%></h5>
	</div>

	<div class="Plans"
		style="size: 100%; margin: 5%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); background-color: rgba(0, 0, 255, 0.5);">

		<h5 align="center" style="color: white;">
			<i>Available Plans</i>
		</h5>
		<table class="table table-striped table-responsive-md btn-table"
			style="color: white;">

			<thead>
				<tr>
					<th>#</th>
					<th>Plan Name</th>
					<th>Type</th>
					<th>Tariff (in Rs./min)</th>
					<th>Validity (in Days)</th>
					<th>Rental</th>
					<th>Subscribe Here</th>
				</tr>
			</thead>

			<tbody>

				<c:forEach items="${plans}" var="item">

					<tr>
						<th scope="row"><c:out value="${count}" /></th>
						<td><c:out value="${item.getPlanName()}" /></td>
						<td><c:out value="${item.getPlanType()}" /></td>
						<td><c:out value="${item.getTariff()}" /></td>
						<td><c:out value="${item.getValidity()}" /></td>
						<td><c:out value="${item.getRental()}" /></td>
						<td>
						<form action="SubscribePlan.jsp" method="get"><button name="plan_id" value="<c:out value="${item.getPlanId()}" />" type="submit" class="btn btn-red btn-sm m-0">Subscribe</button></form>
						</td>
					</tr>
					<c:set var="count" value="${count + 1}" scope="page" />
				</c:forEach>

			</tbody>

		</table>
	</div>
<c:set var="count" value="1" scope="page" />
	<div class="Plans"
		style="size: 100%; margin: 5%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); background-color: rgba(0, 0, 255, 0.5);">

		<h5 align="center" style="color: white;">
			<i>Subscribed Plans</i>
		</h5>
		<table class="table table-striped table-responsive-md btn-table"
			style="color: white;">

			<thead>
				<tr>
					<th>#</th>
					<th>Plan Name</th>
					<th>Type</th>
					<th>Tariff (in Rs./min)</th>
					<th>Validity (in Days)</th>
					<th>Rental</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${subdPlans}" var="item">
					<tr>
						<th scope="row"><c:out value="${count}" /></th>
						<td><c:out value="${item.getPlanName()}" /></td>
						<td><c:out value="${item.getPlanType()}" /></td>
						<td><c:out value="${item.getTariff()}" /></td>
						<td><c:out value="${item.getValidity()}" /></td>
						<td><c:out value="${item.getRental()}" /></td>
						<td>
							<form action="UnsubscribePlan.jsp" method="get"><button name="plan_id" value="<c:out value="${item.getPlanId()}" />" type="submit" class="btn btn-white btn-sm m-0">Unsubscribe</button></form>
						</td>
					</tr>
					<c:set var="count" value="${count + 1}" scope="page" />
				</c:forEach>
			</tbody>

		</table>
	</div>

	<div class="d-flex justify-content-center" style="margin-bottom: 2%;">
		<form action="Backend/logout.jsp">
			<button type="submit" class="btn btn-primary btn-rounded">Logout</button>
		</form>
	</div>

</body>
</html>