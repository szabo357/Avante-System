<?php
include 'include/dbcore.php';
include 'include/functions.php';
sec_session_start();
if(login_check($db) == true) {
	echo get_header();
?>
<div class="jumbotron main-hd">
	<div class="container">
		<h1>Hello, world!</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. </p>
		<p>
			<a class="btn btn-primary btn-lg">Learn more</a>
		</p>
	</div>
</div>

<div class="container">
	<?php 
		$testid = (isset($_GET['test'])? $_GET['test'] : 1);
		$blockn = (isset($_GET['blockn'])? $_GET['blockn'] : 1);
		$block = $db->row(array('table'=>'block_detail','condition'=>'block_number='.$blockn.' AND testID='.$testid));
		$blockcount = count($db->query("SELECT * FROM block_detail WHERE testID=".$testid));
		$blockpercent = $blockn / $blockcount * 100;
	?>
	<h1 class="light">Lorem ipsum dolor sit amet</h1>
	<hr>
	<div class="col-md-4 col-sm-12">
		<div class="widget">
			<div class="instructions" style="top: 60px; position: static;">
				<h1>Instrucciones</h1>
				<p>Aqui escribiremos las instrucciones del test.</p>
				<hr>
				<ul class="icon-list">
					<li><span>SI</span> Si me ha pasado.</li>
					<li><span>NO</span> No me ha pasado.</li>
				</ul>
				<div class="visible-xs">
					<hr>
					<button type="button" class="btn btn-danger btn-block" id="hide-ins">Ocultar</button>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-8 col-sm-12">
		<div class="module">
			<div class="module-cnt"><form action="viewdata.php" method="post" >
				<div class="q-header">Session 1 del Formulario<span class="glyphicon glyphicon-eye-open"></span></div>

				<div class="progress">
					<div class="progress-bar progress-bar-block" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo $blockpercent ?>%;">
						<span class="sr-only"><?php echo $blockpercent ?>% Complete</span>
					</div>
				</div>
				
				<?php 
					echo' <div class="q-cnt" data-test="'.$testid.'" data-user="'.$_SESSION["user_id"].'" data-token="'.$_SESSION["session_id"].'"  >';
					echo '<input class="q-tok" type="hidden" "data-token="'.$_SESSION["session_id"].'"/>'
				?>
				<div id="result"></div>
				<div class="line"></div>
				<ul class="q-list">	
				<?php
					$consulta = $db->query("SELECT question_text,test_index FROM tests_questions WHERE testId=$testid",false,false);

					foreach ($consulta as $pregunta) {
						$dataclass = "";
						if($row = $db->row(array('table'=>'user_answers','condition'=>'testID='.$testid.' AND userID="'.$_SESSION['user_id'].'" AND test_index='.$pregunta["test_index"]))){
							$dataclass = 'answered '.$row['response'];
						}else if($lastq = $db->query("SELECT response FROM user_answers WHERE testID=".$testid." AND userID='".$_SESSION['user_id']."'")){
							$dataclass = (count($lastq)+1 == $pregunta['test_index'] && count($lastq)+1 <= count($consulta)) ? "active" : "" ;
						}else if($pregunta['test_index']==1){
							$dataclass = 'active';
						}
						echo '	
						<li id="blq" data-val="'.$pregunta["test_index"].'" class="'.$dataclass.'">
							<span class="icon-status"><i></i></span>
								<div class="q-bubble">
									<p>'.$pregunta["question_text"].'</p>
									<div class="q-btn">';
									if($block['block_type']==1){
										echo '<button type="button" data-val="a" class="btn a alt">A</button>
										<button type="button" data-val="b" class="btn b alt">B</button>
										<button type="button" data-val="c" class="btn c alt">C</button>
										<button type="button" data-val="d" class="btn d alt">D</button>';
									}else if($block['block_type']==2){
										echo '<button type="button" data-val="a" class="btn a">A</button>
										<button type="button" data-val="b" class="btn b">B</button>
										<button type="button" data-val="c" class="btn c">C</button>
										<button type="button" data-val="d" class="btn d">D</button>
										<button type="button" data-val="d" class="btn e">E</button>';
									}else if($block['block_type']==3){
										echo '<button type="button" data-val="si" class="btn si">SI</button>
										<button type="button" data-val="no" class="btn no">NO</button>';
									}else if($block['block_type']==4){
										echo '<button type="button" data-val="v" class="btn v">V</button>
										<button type="button" data-val="f" class="btn f">F</button>';
									}
									echo '
									</div>
								</div>
							</li>
							';
						}
					?>
					</ul>
				</div>
				<div class="q-footer">Session Finalizada<span class="glyphicon glyphicon-flag"></span></div>
			  </form>
			</div>
		</div>
	</div>
</div>
<hr>
<?php
	echo get_footer();
} else {
	include 'login.php';
}
?>