<?php

include_once('class.mysql.php');

function is_localhost() {
	$whitelist = array( '127.0.0.1', '::1' );
	if( in_array( $_SERVER['REMOTE_ADDR'], $whitelist) )
		return true;
}

if(is_localhost()){
	$conn = array(
		'host' => '127.0.0.1',
		'user' => 'root',
		'pass' => 'root',
		'db' => 'avante');
}else{
	$conn = array(
		'host' => '192.168.2.5',
		'user' => 'root',
		'pass' => 'root',
		'db' => 'avante');
}
 
$db = new mysql($conn);

?>