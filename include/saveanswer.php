<?php
include_once('dbcore.php');
include_once('functions.php');

if(isset($_POST)){
	$data = array(
		'responseID' => 0,
		'testID' => $_POST['tid'],
		'userID' => $_POST['uid'],
		'test_index' => $_POST['qid'],
		'response' => $_POST['answer'],
		'session_id' => $_POST['sid']
	);
	if(!$db->insert('user_answers',$data)){
		echo(json_encode(array('msj'=>'Error al guardar respuesta, intente de nuevo por favor.', 'status'=>1)));
	}
}

?>