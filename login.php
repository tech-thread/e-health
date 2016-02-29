<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>eHealth</title>

	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
  </head>
  <body>

  	<nav class="navbar navbar-inverse">
  		<div class="container-fluid">
  			<div class="navbar-header">
  				<a class="navbar-brand" href="index.php">E-Health System</a>
  			</div>
  		</div>
  	</nav>

  	<div class="container" style="margin-top: 30px">
  		<div class="col-md-8">
  			<img class="img-responsive login" src="images/eHealth.jpg">
  		</div>
  		<div class="col-md-4  login">
  			<form method="POST" action="auth.php">
  				<h3 style="text-align:center;">Admin Log In</h3>
  				<label for="Email" class="control-label lbl-field">Username:</label>
  				<input type="text" class="form-control" name="username" placeholder="User Id" required="required" autofocus="autofocus"/>
  				<label class="control-label lbl-field">Password:</label>
  				<input type="password" class="form-control" name="password" placeholder="Password" required="required" />

  				<button class="btn btn-sm btn-primary btn-block" name="submit" type="submit" style="margin-top:45px;">Log in</button>
  			</form>
  		</div>
  	</div>


  	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	<script src="js/jquery.min.js"></script>
  	<!-- Include all compiled plugins (below), or include individual files as needed -->
  	<script src="js/bootstrap.min.js"></script>
  </body>
</html>