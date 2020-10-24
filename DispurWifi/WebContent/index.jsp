<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Customer Management Portal</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="css/style.css" rel="stylesheet">
  <style rel="stylesheet" href="customerManagementPortal.css"></style>
</head>


<body 
style="background-image: url(https://www.affirmednetworks.com/wp-content/uploads/2020/09/a4o-cloud-mobile-1.jpg); 
background-repeat: no-repeat; 
background-size: 100%;">
    <div>
        <h1 align="center" style="color: white; font-weight: bold; font-family:'Courier New'">The Dispur Wireless</h1>
        <br>
        <h3 align="center" style="color: white; font-family:'Courier New'">Customer Management Portal</h3>
        <br>
    </div>
<div class="signUpForm" style="float: left; size: 50%; margin-left: 5%; margin-bottom: 2%;">
    <!-- Material form register -->
<div class="card">

    <h5 class="card-header info-color white-text text-center py-4" style="background-color: #009EEC;">
        <strong>Sign up</strong>
    </h5>

    <!--Card content-->
    <div class="card-body px-lg-5 pt-0">

        <!-- Form -->
        <form class="text-center" style="color: #757575;" action="./showRegistrationId.html">

            <div class="form-row">
                <div class="col">
                    <!-- First name -->
                    <div class="md-form">
                        <input type="text" id="materialRegisterFormFirstName" class="form-control">
                        <label for="materialRegisterFormFirstName">First name</label>
                    </div>
                </div>
                <div class="col">
                    <!-- Last name -->
                    <div class="md-form">
                        <input type="email" id="materialRegisterFormLastName" class="form-control">
                        <label for="materialRegisterFormLastName">Last name</label>
                    </div>
                </div>
            </div>

            <!-- E-mail -->
            <div class="md-form mt-0">
                <input type="email" id="materialRegisterFormEmail" class="form-control">
                <label for="materialRegisterFormEmail">E-mail</label>
            </div>

            <!-- Password -->
            <div class="md-form">
                <input type="password" id="materialRegisterFormPassword" class="form-control" aria-describedby="materialRegisterFormPasswordHelpBlock">
                <label for="materialRegisterFormPassword">Password</label>
                <small id="materialRegisterFormPasswordHelpBlock" class="form-text text-muted mb-4">
                    At least 8 characters and 1 digit
                </small>
            </div>

            <!-- Phone number -->
            <div class="md-form">
                <input type="password" id="materialRegisterFormPhone" class="form-control" aria-describedby="materialRegisterFormPhoneHelpBlock">
                <label for="materialRegisterFormPhone">Phone number</label>
                <small id="materialRegisterFormPhoneHelpBlock" class="form-text text-muted mb-4">
                    Optional
                </small>
            </div>

            <!-- Newsletter 
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="materialRegisterFormNewsletter">
                <label class="form-check-label" for="materialRegisterFormNewsletter">Subscribe to our newsletter</label>
            </div> -->

            <!-- Sign up button -->
            <button class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0" type="submit">Sign Up</button>

            <!-- Social register 
            <p>or sign up with:</p>

            <a type="button" class="btn-floating btn-fb btn-sm">
                <i class="fab fa-facebook-f"></i>
            </a>
            <a type="button" class="btn-floating btn-tw btn-sm">
                <i class="fab fa-twitter"></i>
            </a>
            <a type="button" class="btn-floating btn-li btn-sm">
                <i class="fab fa-linkedin-in"></i>
            </a>
            <a type="button" class="btn-floating btn-git btn-sm">
                <i class="fab fa-github"></i>
            </a>

            <hr> -->

            <!-- Terms of service 
            <p>By clicking
                <em>Sign up</em> you agree to our
                <a href="" target="_blank">terms of service</a> -->

        </form>
        <!-- Form -->

    </div>

</div>
<!-- Material form register -->
</div>



<div class="signInForm" style="size: 100%; margin-right: 5%; margin-left: 57%;">
    <!-- Material form login -->
<div class="card">

    <h5 class="card-header info-color white-text text-center py-4">
      <strong>Sign in</strong>
    </h5>
  
    <!--Card content-->
    <div class="card-body px-lg-5 pt-0">
  
      <!-- Form -->
      <form class="text-center" style="color: #757575;" action="./showRegistrationId.html">
  
        <!-- Email -->
        <div class="md-form">
          <input type="text" id="materialLoginFormEmail" class="form-control">
          <label for="materialLoginFormEmail">Registration ID</label>
        </div>
  
        <!-- Password -->
        <div class="md-form">
          <input type="password" id="materialLoginFormPassword" class="form-control">
          <label for="materialLoginFormPassword">Password</label>
        </div>
  
        <div class="d-flex justify-content-around">
          <div>
            <!-- Remember me 
            <div class="form-check">
              <input type="checkbox" class="form-check-input" id="materialLoginFormRemember">
              <label class="form-check-label" for="materialLoginFormRemember">Remember me</label> 
            </div> -->
          </div>
          <div>
            <!-- Forgot password -->
            <a href="">Forgot password?</a>
          </div>
        </div>
  
        <!-- Sign in button -->
        <button class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0" type="submit">Sign in</button>
  
        <!-- Register 
        <p>Not a member?
          <a href="">Register</a>
        </p> -->
  
        <!-- Social login 
        <p>or sign in with:</p>
        <a type="button" class="btn-floating btn-fb btn-sm">
          <i class="fab fa-facebook-f"></i>
        </a>
        <a type="button" class="btn-floating btn-tw btn-sm">
          <i class="fab fa-twitter"></i>
        </a>
        <a type="button" class="btn-floating btn-li btn-sm">
          <i class="fab fa-linkedin-in"></i>
        </a>
        <a type="button" class="btn-floating btn-git btn-sm">
          <i class="fab fa-github"></i>
        </a> -->
  
      </form>
      <!-- Form -->
  
    </div>
  
  </div>
  <!-- Material form login -->

</div>
</body>
</html>