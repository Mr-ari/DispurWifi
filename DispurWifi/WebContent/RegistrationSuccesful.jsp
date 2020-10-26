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
		<h3>Your Registration ID is :</h3>
		
		<h2 style="color:red;"><%=session.getAttribute("registrationId") %></h2>
		
		<p>use this registration id for further login</p>
		<form class="text-center" style="color: #757575;"
					action="index.jsp">


					<!-- Sign in button -->
					<button
						class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0"
						type="submit">Go back to Login page</button>

				</form>
			</div>

		</div>
		<!-- Material form register -->
	</div>
</body>
</html>