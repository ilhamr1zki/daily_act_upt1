<?php  
	
	require '../php/config.php'; 
	
	$arr = [];

	if (isset($_POST['is_out'])) {
		if ($_POST['is_out'] == true) {
			$_SESSION['expire'] = 0;
			// unset($_SESSION['expire']);
			$arr['is_val'] = true;
		}

		echo json_encode($arr);

	} else {

		$arr['is_val'] = false;
		header("Location: $basead");

	}

?>