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
	style="background-image: url(https://www.affirmednetworks.com/wp-content/uploads/2020/09/a4o-cloud-mobile-1.jpg); background-size: 110%;">
	<div>
		<h1 align="center"
			style="color: white; font-weight: bold; font-family: 'Courier New'">The
			Dispur Wireless</h1>
		<br>
		<h3 align="center" style="color: white; font-family: 'Courier New'">Customer
			Management Portal</h3>
		<br>
	</div>
	<div class="signUpForm"
		style="float: left; size: 50%; margin-left: 5%; margin-bottom: 2%;">
		<!-- Material form register -->
		<div class="card">

			<h5 class="card-header info-color white-text text-center py-4"
				style="background-color: #009EEC;">
				<strong>Sign up</strong>
			</h5>

			<!--Card content-->
			<div class="card-body px-lg-5 pt-0">



				<!-- Form -->
				<form class="text-center" style="color: #757575;" method="post"
					action="Registration">

					<div class="form-row">
						<div class="col">
							<!-- First name -->
							<div class="md-form">
								<input type="text" name="fname"
									id="materialRegisterFormFirstName" class="form-control">
								<span for="materialRegisterFormFirstName">First name</span>
							</div>
						</div>
						<div class="col">
							<!-- Last name -->
							<div class="md-form">
								<input type="text" name="sname"
									id="materialRegisterFormLastName" class="form-control">
								<span for="materialRegisterFormLastName">Last name</span>
							</div>
						</div>
					</div>

					<!-- E-mail -->
					<div class="md-form mt-0">
						<input type="email" name="email" id="materialRegisterFormEmail"
							class="form-control"> <span
							for="materialRegisterFormEmail">E-mail</span>
					</div>
					<div class="md-form mt-0">
						<input type="text" name="address" id="materialRegisterFormEmail"
							class="form-control"> <span
							for="materialRegisterFormEmail">Address</span>
					</div>
					<!-- Password -->
					<div class="md-form">
						<input type="password" name="pass"
							id="materialRegisterFormPassword" class="form-control"
							aria-describedby="materialRegisterFormPasswordHelpBlock">
						<span for="materialRegisterFormPassword">Password</span>
					</div>

					<!-- Password -->
					<div class="md-form">
						<input type="password" name="conpass"
							id="materialRegisterFormPassword" class="form-control"
							aria-describedby="materialRegisterFormPasswordHelpBlock">
						<span for="materialRegisterFormPassword">Confirm Password</span>
					</div>

					<!-- Phone number -->
					<div class="md-form">
						<input type="text" name="ph" id="materialRegisterFormPhone"
							class="form-control"
							aria-describedby="materialRegisterFormPhoneHelpBlock"> <span
							for="materialRegisterFormPhone">Phone number</span>
					</div>
					<!-- Sign up button -->
					<button
						class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0"
						type="submit">Sign Up</button>

				</form>
				<!-- Form -->

			</div>

		</div>
		<!-- Material form register -->
	</div>



	<div class="signInForm"
		style="size: 100%; margin-right: 5%; margin-left: 57%;">
		<!-- Material form login -->
		<div class="card">

			<h5 class="card-header info-color white-text text-center py-4">
				<strong>Sign in</strong>
			</h5>

			<!--Card content-->
			<div class="card-body px-lg-5 pt-0">

				<!-- Form -->
				<form class="text-center" style="color: #757575;" method="post"
					action="LoginCheck">

					<!-- Email -->
					<div class="md-form">
						<input type="text" id="materialLoginFormEmail" name="uname"
							class="form-control"> <span for="materialLoginFormEmail">Registration
							ID</span>
					</div>

					<!-- Password -->
					<div class="md-form">
						<input type="password" id="materialLoginFormPassword" name="pass"
							class="form-control"> <span
							for="materialLoginFormPassword">Password</span>
					</div>

					<div class="d-flex justify-content-around">
						<div>
						</div>
					</div>

					<!-- Sign in button -->
					<button
						class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0"
						type="submit">Sign in</button>

				</form>
				<!-- Form -->

			</div>

		</div>
		<!-- Material form login -->

	</div>
</body>
</html>