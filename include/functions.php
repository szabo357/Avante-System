<?php

//RETURN THE HEADER
function get_header(){
	return '<!DOCTYPE html>
	<html><head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>pSicologia</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/animate.css">
		<link rel="stylesheet" type="text/css" href="css/toastr.css">
		<link rel="stylesheet" type="text/css" href="css/main.css">
	</head>
	<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-menu">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="http://netsti.com/psyco/psicologo/test1.html#">Avante</a>
		</div>
		<div class="collapse navbar-collapse" id="main-menu">
			<ul class="nav navbar-nav">
				<li>
					<a href="http://netsti.com/psyco/psicologo/test1.html#">Home</a>
				</li>
				<li>
					<a href="http://netsti.com/psyco/psicologo/test1.html#">Link</a>
				</li>
				<li>
					<a href="#" class="logout-btn">LogOut</a>
				</li>
			</ul>
		</div>
	</nav>';
}

//GET THE FOOTER
function get_footer(){
	return '<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4 item">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti, reiciendis voluptatum nesciunt nihil cum atque magnam exercitationem eveniet nostrum quidem illo porro laborum vel excepturi inventore iure optio sed assumenda.</div>
				<div class="col-md-4 item">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel, neque, quos sed dolorum eligendi voluptates aliquam qui voluptatem ratione nostrum! Id, dolor, impedit aperiam at unde assumenda quo eveniet voluptatum.</div>
				<div class="col-md-4 item">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, atque, doloribus, commodi, eius cumque enim esse nobis molestiae voluptas architecto mollitia praesentium consequatur ipsum debitis rerum. Laboriosam, iure ducimus perspiciatis!</div>
			</div>
		</div>
	</footer>

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/toastr.js"></script>
	<script type="text/javascript" src="js/main.js"></script>

	</body></html>';
}

// START SESSION PHP
function sec_session_start() {
	$session_name = 'sec_session_id';
	$secure = false; // Set to true if using https.
	$httponly = true;

	ini_set('session.use_only_cookies', 1);
	$cookieParams = session_get_cookie_params();
	session_set_cookie_params($cookieParams["lifetime"], $cookieParams["path"], $cookieParams["domain"], $secure, $httponly);
	session_name($session_name);
	session_start();
	session_regenerate_id();
}

// LOGIN PROCCESS VERIFICATION
function login_status($email, $password, $db) {
	if($data = $db->row(array('table'=>'members', 'condition'=>'email="'.$email.'"'))){

		$user_id = $data['userID'];
		$username = $data['username'];
		$db_password = $data['password'];
		$salt = $data['salt'];

		$password = hash('sha512', $password.$salt);

		if(checkbrute($user_id, $db) == true) {
			return 3;
		} else {
			if($db_password == $password) {

				$user_browser = $_SERVER['HTTP_USER_AGENT'];

				$user_id = preg_replace("/[^0-9]+/", "", $user_id);
				$_SESSION['session_id'] = session_id();
				$_SESSION['user_id'] = $user_id; 
				$_SESSION['user'] = $username;
				$username = preg_replace("/[^a-zA-Z0-9_\-]+/", "", $username);
				$_SESSION['username'] = $username;
				$_SESSION['login_string'] = hash('sha512', $password.$user_browser);
				return 0;    
			} else {
				$if = $db->insert('login_attempts',array('userID' => $user_id, 'time' => time()));
				return 2;
			}
		}
	} else { return 1; }
}

// CHECK LOGIN ATTEMPTS
function checkbrute($user_id, $db) {
	$now = time();
	$valid_attempts = $now - (2 * 60 * 60); 

	if($data = $db->query("SELECT time FROM login_attempts WHERE userID = $user_id AND time > '$valid_attempts'")){
		if(count($data) > 5) {
			return true;
		} else {
			return false;
		}
	}
}

// CHECK IF USER LOGIN
function login_check($db) {
	if(isset($_SESSION['user_id'], $_SESSION['username'], $_SESSION['login_string'])) {
		$user_id = $_SESSION['user_id'];
		$login_string = $_SESSION['login_string'];
		$username = $_SESSION['username'];

		$user_browser = $_SERVER['HTTP_USER_AGENT'];

		if($data = $db->row(array('table'=>'members', 'condition'=>'userID="'.$user_id.'"'))){
			if(count($data['password']) == 1) {
				$login_check = hash('sha512', $data['password'].$user_browser);
				if($login_check == $login_string) {
					return true;
				} else { return false; }
			} else { return false; }
		} else { return false; }
	} else { return false; }
}

?>