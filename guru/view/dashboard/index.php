<?php 

	$timeOut        = $_SESSION['expire'];
	// echo $_SESSION['nip_guru'] . "<br>";
    
  	$timeRunningOut = time() + 5;

  	$timeIsOut = 0;

  	$tampungDataNis = [];
  	$tampungDataPw 	= [];

  	function format_tgl_indo($date){  
	    $tanggal_indo = date_create($date);
	    date_timezone_set($tanggal_indo,timezone_open("Asia/Jakarta"));
	    $array_bulan = array(1=>'Januari','Februari','Maret', 'April', 'Mei', 'Juni','Juli','Agustus','September','Oktober', 'November','Desember');
	    $date = strtotime($date);
	    $tanggal = date ('d', $date);
	    $bulan = $array_bulan[date('n',$date)];
	    $tahun = date('Y',$date); 

	    $H     = date_format($tanggal_indo, "H");
	    $i     = date_format($tanggal_indo, "i");
	    $s     = date_format($tanggal_indo, "s");
	    // $jamIndo = date("h:i:s", $date);
	    $jamIndo = date_format($tanggal_indo, "H:i:s");
	    // echo $jamIndo;
	    $result = $tanggal ." ". $bulan ." ". $tahun . " " . $jamIndo;       
	    return($result);  
	}

  	// echo "Waktu Habis : " . $timeOut . " Waktu Berjalan : " . $timeRunningOut;

  	if ($timeRunningOut == $timeOut || $timeRunningOut > $timeOut) {

	    $_SESSION['form_success'] = "session_time_out";

	    $timeIsOut = 1;
	    error_reporting(1);

	} else {

		date_default_timezone_set("Asia/Jakarta");
	  	$arrTgl               = [];
		  
	  	$tglSkrngAwal         = date("Y-m-d") . " 00:00:00";
	  	$tglSkrngAkhir        = date("Y-m-d") . " 23:59:59";

	  	$queryGetDataAppr = mysqli_query($con, "
	 		SELECT 
	 		guru.nama as nama_guru,
	 		siswa.nama as nama_siswa,
	 		reason.is_reason as isi_alasan,
	 		ruang_pesan.room_key as room_key,
	 		daily_siswa_approved.nis_siswa as nis_siswa,
	 		daily_siswa_approved.title_daily as judul_daily,
	 		daily_siswa_approved.isi_daily as isi_daily,
	 		daily_siswa_approved.tanggal_dibuat as tanggal_dibuat,
	 		daily_siswa_approved.tanggal_disetujui_atau_tidak as tanggal_disetujui_atau_tidak,
	 		daily_siswa_approved.status_approve as status_approve,
	 		daily_siswa_approved.image as foto_upload
	 		FROM daily_siswa_approved
	 		LEFT JOIN guru
	 		ON daily_siswa_approved.from_nip = guru.nip
	 		LEFT JOIN siswa
	 		ON daily_siswa_approved.nis_siswa = siswa.nis
	 		LEFT JOIN reason
	 		ON daily_siswa_approved.id = reason.daily_siswa_id
	 		LEFT JOIN ruang_pesan
	 		ON daily_siswa_approved.id = ruang_pesan.daily_id
	 		WHERE 
	 		daily_siswa_approved.tanggal_dibuat >= '$tglSkrngAwal' AND daily_siswa_approved.tanggal_dibuat <= '$tglSkrngAkhir'
	 		AND daily_siswa_approved.from_nip = '$_SESSION[nip_guru]'
	 		ORDER BY daily_siswa_approved.tanggal_dibuat DESC
	 	");

	 	$updateDataAppr = mysqli_query($con, "
	 		SELECT * FROM ruang_pesan 
	 		WHERE
	 		room_session = 1 
	 		AND
	 		created_date_room <= '$tglSkrngAwal'
	 	");

	 	$hitungDataRoomSession1 = mysqli_num_rows($updateDataAppr);

	 	if ($hitungDataRoomSession1 != 0) {

	 		foreach ($updateDataAppr as $dt) {
		 		$updateCloseChatSession = mysqli_query($con, "
		 			UPDATE ruang_pesan 
		 			SET 
		 			room_session = 0
		 			WHERE room_key = '$dt[room_key]'
		 		");
		 	}

	 	}

	}

?>

<div class="box box-info">

	<div class="box-header with-border">
      <h3 class="box-title" id="boxTitle"> <i class="glyphicon glyphicon-th-large"></i> <span style="margin-left: 10px; font-weight: bold;"> DASHBOARD </span> </h3>
    </div>

    <center> 
    	<h4 id="judul_daily">
    		<strong> <u> TODAY'S DAILY ACTIVITIES </u> </strong> 
    	</h4> 
    </center>

  	<div class="box-body table-responsive">

	    <table id="hightlight_list_siswa" style="text-align: center;" class="table table-bordered table-hover">
	      	<thead>
		        <tr style="background-color: lightyellow; font-weight: bold;">
		          <th style="text-align: center; border: 1px solid black;" width="5%">NO</th>
		          <th style="text-align: center; border: 1px solid black;"> SISWA </th>
		          <th style="text-align: center; border: 1px solid black;">JUDUL DAILY</th>
		          <th style="text-align: center; border: 1px solid black;">TANGGAL DIBUAT</th>
		          <th style="text-align: center; border: 1px solid black;">STATUS</th>
		          <!-- <th style="text-align: center;"> DAILY </th> -->
		        </tr>
	      	</thead>

	      <?php $no = 1; ?>

      		<tbody>
	      	<?php foreach ($queryGetDataAppr as $appr): ?>
	      	    
	      		<?php if ($appr['status_approve'] == 1): ?>

	      			<tr style="text-align: center; background-color: limegreen; color: white; font-weight: bold;" id="tr_dashboard" onclick="showData(
		      			`<?= $appr['room_key']; ?>`,
		      			`<?= $appr['status_approve']; ?>` ,
		      			`<?= $appr['nama_guru']; ?>`, 
		      			`<?= $appr['tanggal_disetujui_atau_tidak']; ?>`,
		      			`<?= format_tgl_indo($appr['tanggal_dibuat']); ?>`,
		      			`<?= format_tgl_indo($appr['tanggal_disetujui_atau_tidak']); ?>`,
		      			`<?= $appr['foto_upload']; ?>`,
		      			`<?= $appr['nis_siswa']; ?>`,
		      			`<?= strtoupper($appr['nama_siswa']); ?>`,
		      			`<?= $appr['judul_daily']; ?>`,
		      			`<?= $appr['isi_daily']; ?>`
	      			)">
			        	<td> <?= $no++; ?> </td>
			        	<td> <?= strtoupper($appr['nama_siswa']); ?> </td>
			        	<td> <?= $appr['judul_daily']; ?> </td>
			        	<td> <?= format_tgl_indo($appr['tanggal_dibuat']); ?> </td>
			        	<?php if ($appr['status_approve'] == 1): ?>
			        		<td> APPROVE <i style="color: gold;" class="glyphicon glyphicon-ok"></i> </td>
			        	<?php elseif($appr['status_approve'] == 0): ?>
			        		<td> WAITING <i class="glyphicon glyphicon-hourglass"></i> </td>
			        	<?php endif ?>
			        </tr>

	      		<?php elseif($appr['status_approve'] == 2): ?>
	      			
	      			<!-- Karena status approve == 2 artinya adalah tidak di approve maka tidak memiliki roomkey -->
	      			<tr style="text-align: center; background-color: red; color: yellow;" id="tr_dashboard" onclick="showData(
	      				`tidak_ada_room_key`,
		      			`<?= $appr['status_approve']; ?>`,
		      			`<?= $appr['nama_guru']; ?>`,
		      			`<?= $appr['tanggal_disetujui_atau_tidak']; ?>`,
		      			`<?= format_tgl_indo($appr['tanggal_dibuat']); ?>`,
		      			`<?= format_tgl_indo($appr['tanggal_disetujui_atau_tidak']); ?>`,
		      			`<?= $appr['foto_upload']; ?>`,
		      			`<?= $appr['nis_siswa']; ?>`,
		      			`<?= strtoupper($appr['nama_siswa']); ?>`,
		      			`<?= $appr['judul_daily']; ?>`,
		      			`<?= $appr['isi_daily']; ?>`,
		      			`<?= $appr['isi_alasan']; ?>`
	      			)">
			        	<td> <?= $no++; ?> </td>
			        	<td> <?= strtoupper($appr['nama_siswa']); ?> </td>
			        	<td> <?= $appr['judul_daily']; ?> </td>
			        	<td> <?= format_tgl_indo($appr['tanggal_dibuat']); ?> </td>
	        			<td> NOT APPROVE <i style="color: yellow;" class="glyphicon glyphicon-remove"></i> </td>
			        </tr>

	      		<?php elseif($appr['status_approve'] == 0): ?>
	      			
	      			<!-- Karena status approve == 0 artinya adalah menunggu persetujuan di approve maka tidak memiliki roomkey -->
	      			<tr style="text-align: center; background-color: aqua;" id="tr_dashboard" onclick="showData(
	      				`tidak_ada_room_key`,
		      			`<?= $appr['status_approve']; ?>` ,
		      			`<?= $appr['nama_guru']; ?>`,
		      			`<?= $appr['tanggal_disetujui_atau_tidak']; ?>`, 
		      			`<?= format_tgl_indo($appr['tanggal_dibuat']); ?>`,
		      			`<?= format_tgl_indo($appr['tanggal_disetujui_atau_tidak']); ?>`,
		      			`<?= $appr['foto_upload']; ?>`,
		      			`<?= $appr['nis_siswa']; ?>`,
		      			`<?= strtoupper($appr['nama_siswa']); ?>`,
		      			`<?= $appr['judul_daily']; ?>`,
		      			`<?= $appr['isi_daily']; ?>`
	      			)">
			        	<td> <?= $no++; ?> </td>
			        	<td> <?= strtoupper($appr['nama_siswa']); ?> </td>
			        	<td> <?= $appr['judul_daily']; ?> </td>
			        	<td> <?= format_tgl_indo($appr['tanggal_dibuat']); ?> </td>
			        	<?php if ($appr['status_approve'] == 1): ?>
			        		<td> APPROVE <i class="glyphicon glyphicon-ok"></i> </td>
			        	<?php elseif($appr['status_approve'] == 0): ?>
			        		<td> WAITING <i class="glyphicon glyphicon-hourglass"></i> </td>
			        	<?php endif ?>
			        </tr>

	      		<?php endif ?>

	      	<?php endforeach ?>
	      	</tbody>


	    </table>
  	</div>

</div>

<script type="text/javascript">

	function showData(roomKey, stat, from, dateOri, datePosted, dateAppr, imgUpload, nis, siswa, title, main, reason = 'ksg') {

		if (stat == 0) {
			// alert('Belum Di Approve');

			$("#modal-hightlight-wt-appr").modal('show');
			let dataHgRoomKey   = roomKey;
          	let dataHgSender    = from;
          	let dataHgSiswa 	= siswa;
          	let dataHgTglUpload = datePosted;
          	let dataHgImage     = imgUpload;
          	let dataHgJudul     = title;
          	let dataHgDaily     = main;

          	let hgImage     = document.querySelector("img[id='hightlight_foto_upload_wt_appr']");

          	$("#hightlight_save_reason").hide();
          	$(".hightlight_reason").hide();
          	$("#hightlight_cancel_not_approve").hide();
          	$("#hightlight_pengirim").val(dataHgSender);
          	$("#hightlight_siswa_daily").val(dataHgSiswa);
          	$("#hightlight_tanggal_upload").val(dataHgTglUpload);
          	$("#hightlight_title_daily").val(dataHgJudul);
          	$("#highlight_id_daily_waiiting").val(dataHgRoomKey);
          	hgImage.setAttribute("src", `../image_uploads/${dataHgImage}`);
          	$("#hightlight_main_daily").html(dataHgDaily);

		} else if (stat == 1) {
			// alert("Sudah Di Approve");
			$("#modal-hightlight-appr").modal('show');
			let dataHgRoomKey   = $(this).data('daily_id');
	      	let dataHgSender    = from;
	      	let dataHgTglAppr 	= dateAppr;
	      	let dataHgTglUpload = datePosted;
	      	let dataHgImage     = imgUpload;
	      	// alert(dataHgImage)
	      	let dataHgJudul     = $(this).data('judul');
	      	let dataHgDaily     = $(this).data('isian');

	      	let hgImage     = document.querySelector("img[id='hg_foto_upload_appr']");

	      	$("#hg_save_reason").hide();
	      	$(".hg_reason").hide();
	      	$("#hg_roomkey_lookdaily").val(roomKey);
	      	$("#hg_cancel_not_approve").hide();
	      	$("#hg_pengirim_appr").val(dataHgSender);
	      	$("#hg_tanggal_upload_appr").val(dataHgTglUpload);
	      	$("#hg_title_daily_appr").val(dataHgJudul);
	      	$("#highlight_id_daily_waiiting").val(dataHgRoomKey);

	      	// Isi Input Pada Modal
	      	$("#hg_date_appr").val(dataHgTglAppr);
	      	$("#nama_siswa_lookdaily").val(siswa);
	      	$("#nama_guru_lookdaily").val(from);
	      	$("#hg_siswa_daily_appr").val(siswa);
	      	$("#hg_title_daily_appr").val(title);
	      	$("#hg_main_daily_appr").html(main);

	      	$("#hg_nama_guru_lookdaily").val(from);
	      	$("#hg_nis_siswa_lookdaily").val(nis);
	      	$("#hg_nama_siswa_lookdaily").val(siswa);
	      	$("#hg_jdl_posting_lookdaily").val(title);
	      	$("#hg_foto_upload_lookdaily").val(imgUpload);
	      	$("#hg_tgl_posting_lookdaily").val(dateAppr);
	      	$("#hg_tglori_posting_lookdaily").val(dateOri);

	      	hgImage.setAttribute("src", `../image_uploads/${dataHgImage}`);
	      	$("#hg_main_daily_appr").html(dataHgDaily);
	      	$("#hg_isi_posting_lookdaily").val(main);

	      	// $('#hg_lookdaily_appr').click(function(){
			//    $('#form_hg_appr').attr('action', `<?= $basegu; ?>lookactivity/${roomKey}`);
			// });

		} else if (stat == 2) {

			$("#modal-hightlight-noappr").modal('show');
			$("#hg_date_not_approved").val(dateAppr);
			$("#hg_pengirim_notappr").val(from);
			$("#hg_tanggal_upload_notappr").val(datePosted);
			$("#hg_siswa_daily_notappr").val(siswa);
			$("#hg_title_daily_notappr").val(title);

			let hgImage     = document.querySelector("img[id='hg_foto_upload_notappr']");
			hgImage.setAttribute("src", `../image_uploads/${imgUpload}`);

			$("#hg_main_daily_notappr").html(main);

			if (reason != 'ksg') {
				if(reason == 'no_comment') {
	                $("#hg_div_default_reason").hide();
              	} else if (reason != 'no_comment') {
	                $("#hg_div_default_reason").show();
	                $("#hg_reason_notappr").text(reason); 
              	}
			}

		}

  	}
		
	$(document).ready(function(){

		$("#dashboard").css({
	      "background-color" : "#ccc",
	      "color" : "black"
	  	});

	})

</script>