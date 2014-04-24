<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Avante - Centro de reducción de Estrés :: Inicio de Sesion</title>
		<meta charset=utf-8>
		<meta name=description content="">
		<meta name=viewport content="width=device-width, initial-scale=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="css/Roboto/font.css" rel="stylesheet" media="screen">
		<link href="css/toastr.css" rel="stylesheet" media="screen">
		<link href="css/login.css" rel="stylesheet" media="screen">
		<link href="css/main.css" rel="stylesheet" media="screen">
	</head>
	<body class="login-bg">

		<div class="login-cont">
			<div class="login-wrap">
				<form class="form-signin" action="include/process_login.php" method="post" name="login_form">
					<img src="images/logo_avante_simple.svg" width="330" alt="">
					<h2 class="form-signin-heading" class="img-responsive">Inicio de Sesión</h2>
					<input type="text" name="email" id="user" placeholder="Username">
					<input type="password" name="p" id="pass" placeholder="Password">
					<button class="login-btn btn btn-primary" type="submit">Entrar</button>
				</form>
			</div>
		</div>

		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/toastr.js"></script>
		<script src="js/sha512.js"></script>
		<script src="js/form.js"></script>
	</body>
</html>