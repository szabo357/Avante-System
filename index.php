<?php
include_once 'include/dbcore.php';
include_once 'include/functions.php';
sec_session_start();
if(login_check($db) == true) {
	echo get_header();
?>

<br><br>
<h1>DASHBOARD DE USUARIO</h1><hr><br>
<div>
<a href="p1.php">test1</a>
<br>
<code>
<?php 

echo $_SESSION['session_id'];

$data = $db->queryObj("SELECT question_text,test_index FROM tests_questions WHERE testID=1 LIMIT 3",false,false);

foreach ($data as $row) {
	print_r($row->question_text);
	echo '<br>';
}

?>
</code>
</div>

<?php
	echo get_footer();
} else {
	include 'login.php';
}
?>