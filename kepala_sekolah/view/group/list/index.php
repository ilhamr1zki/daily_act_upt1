<?php  
	
	$timeOut        = $_SESSION['expire'];
    
  	$timeRunningOut = time() + 5;

  	$diMenu = "listgroup";

	$timeIsOut = 0;
	$sesi      = 0;

	if ($timeRunningOut == $timeOut || $timeRunningOut > $timeOut) {

		$_SESSION['form_success'] = "session_time_out";

	    $timeIsOut = 1;
	    error_reporting(1);

	} else {

		$getDataBagian  = $_SESSION['c_kepsek'];

  		$no = 1;

	}

?>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/2.0.8/css/dataTables.dataTables.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/datetime/1.5.2/css/dataTables.dateTime.min.css">

	<div class="box box-info">
	  	<div class="box-body table-responsive">

		    <table id="example" class="display nowrap" style="width:100%">
		        <thead>
		            <tr style="background-color: lightyellow;">
		                <th style="text-align: center; border: 1px solid black;" width="5%">NO</th>
			          	<th style="text-align: center; border: 1px solid black;"> GROUP </th>
			          	<th style="text-align: center; border: 1px solid black;"> WALAS </th>
		            </tr>
		        </thead>
		        <tbody>
		            
		        </tbody>
		    </table>

	  	</div>
	</div>

<!-- <script src="https://cdn.datatables.net/2.0.8/js/dataTables.js"></script> -->
<script src="view/daily/query/dataTables1.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.2/moment.min.js"></script> -->
<script src="view/daily/query/moment.min.js"></script>
<!-- <script src="https://cdn.datatables.net/datetime/1.5.2/js/dataTables.dateTime.min.js"></script> -->
<script src="view/daily/query/dateTime.min.js"></script>

<script type="text/javascript">

	let newIcon = document.getElementById("addIcon");
  	newIcon.classList.remove("fa");
  	newIcon.classList.add("fa-solid");
  	newIcon.classList.add("fa-list");

  	let getTitleList1 = document.getElementById('isiList2').innerHTML;

	$("#approve_in_page").click(function() {

      	$.ajax({
	        url  : `<?= $basekepsek; ?>data`,
	        type : "POST",
	        data : {
	          daily_id  : $("#id_daily_waiiting_in_page").val()
	        },
	        success:function(data) {

	          console.log(JSON.parse(data).status_approve);

	          Swal.fire({
	            title : "Approve",
	            icon  : "success",
	            timer : 1000
	          });

	          $("#not_approve_in_page").hide();
	          $("#approve_in_page").hide();
	          $("#close_not_yet_appr_in_page").click();

	        }

      	})

    })

	$(document).ready(function() {

		$("#listgroup").click();
	    $("#menulistgroup").css({
	        "background-color" : "#ccc",
	        "color" : "black"
	    });

	    $("#isiMenu").css({
	      "margin-left" : "5px"
	    });

	})

	document.getElementById('isiMenu').innerHTML = `<span style="font-weight: bold;"> LIST GROUP </span>`

</script>