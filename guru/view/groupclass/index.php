<?php  

	$timeOut        = $_SESSION['expire'];
    
    $timeRunningOut = time() + 5;

    $timeIsOut 		= 0;
    $isNoParam 		= 0;
    $no 			= 1;
    $arrDataSiswa 	= [];
    $arrDataPw 		= [];
    $jumlah_data    = 0;

	if ($timeRunningOut == $timeOut || $timeRunningOut > $timeOut) {

		$_SESSION['form_success'] = "session_time_out";

	    $timeIsOut = 1;
	    error_reporting(1);

  	} else {

  		// echo $_GET['q'];
		if ($_GET['q'] == false) {
			$isNoParam  = 1; 
		}

		$findIdGroupKelas = mysqli_query($con, "
	        SELECT id FROM group_kelas
	        WHERE nama_group_kelas = '$_GET[q]'
      	");

      	$getidGroupKelas = mysqli_fetch_array($findIdGroupKelas)['id'];

		$queryGetAllDataStudentByGroup = mysqli_query($con, "

			SELECT * FROM siswa
			WHERE group_kelas = '$getidGroupKelas'
			GROUP BY nis ASC

		");

		if (isset($_POST['update_siswa'])) {

			$nis 		= htmlspecialchars($_POST['nis']);
			$nama 		= mysqli_real_escape_string($con, htmlspecialchars($_POST['nama_siswa']));
			$nohpotm	= htmlspecialchars($_POST['nohpotm']);

			$queryUpdateNamaSiswa = mysqli_query($con, "
				UPDATE siswa 
				SET
				nama 	= '$nama',
				hp 		= '$nohpotm'
				WHERE nis = '$nis'
			");

			if ($queryUpdateNamaSiswa) {

				$queryUpdateAksesOTM = mysqli_query($con, "
					UPDATE akses_otm
					SET 
					no_hp = '$nohpotm'
					WHERE nis_siswa = '$nis'
				");

				if ($queryUpdateAksesOTM) {

					$_SESSION['update_nama_siswa'] = 'berhasil';

					$findIdGroupKelas = mysqli_query($con, "
				        SELECT id FROM group_kelas
				        WHERE nama_group_kelas = '$_GET[q]'
			      	");

			      	$getidGroupKelas = mysqli_fetch_array($findIdGroupKelas)['id'];

					$queryGetAllDataStudentByGroup = mysqli_query($con, "

						SELECT * FROM siswa
						WHERE group_kelas = '$getidGroupKelas'
						GROUP BY nis ASC

					");

				} else {

					$_SESSION['update_nama_siswa'] = 'gagal_akses_otm';

					$findIdGroupKelas = mysqli_query($con, "
				        SELECT id FROM group_kelas
				        WHERE nama_group_kelas = '$_GET[q]'
			      	");

			      	$getidGroupKelas = mysqli_fetch_array($findIdGroupKelas)['id'];

					$queryGetAllDataStudentByGroup = mysqli_query($con, "

						SELECT * FROM siswa
						WHERE group_kelas = '$getidGroupKelas'
						GROUP BY nis ASC

					");

				}

			} else {
				
				$_SESSION['update_nama_siswa'] = 'gagal';

				$queryGetAllDataStudentByGroup = mysqli_query($con, "

					SELECT * FROM siswa
					WHERE group_kelas = '$_GET[q]'
					GROUP BY nis ASC

				");

			}

		}

		if (isset($_POST['out_group'])) {

			$nis_siswa = htmlspecialchars($_POST['nis_siswa']);
			
			// find group kelas by nis
			$queryGetGroupKelas = mysqli_query($con, "
				SELECT group_kelas FROM siswa
				WHERE nis = '$nis_siswa'
			");

			$id_group_kelas = mysqli_fetch_array($queryGetGroupKelas)['group_kelas'];

			$findIdGroupKelasForOut = mysqli_query($con, "
				SELECT nama_group_kelas FROM group_kelas
				WHERE id = '$id_group_kelas'
			");

			$group_kelas 	 = mysqli_fetch_array($findIdGroupKelasForOut)['nama_group_kelas'];

			$queryUpdateGroupSiswa = mysqli_query($con, "
				UPDATE siswa 
				SET 
				group_kelas = NULL
				WHERE nis = '$nis_siswa'
			");

			if ($queryUpdateGroupSiswa) {
				$g_kelas = $group_kelas;
				$_SESSION['update_group_siswa'] = 'berhasil';

				$findIdGroupKelas = mysqli_query($con, "
		        SELECT id FROM group_kelas
		        WHERE nama_group_kelas = '$_GET[q]'
		      ");

		      $getidGroupKelas = mysqli_fetch_array($findIdGroupKelas)['id'];

				$queryGetAllDataStudentByGroup = mysqli_query($con, "

					SELECT * FROM siswa
					WHERE group_kelas = '$getidGroupKelas'
					GROUP BY nis ASC

				");

			} else {

				$g_kelas = $group_kelas;
				$_SESSION['update_group_siswa'] = 'gagal';

				$queryGetAllDataStudentByGroup = mysqli_query($con, "

					SELECT * FROM siswa
					WHERE group_kelas = '$_GET[q]'
					GROUP BY nis ASC

				");

			}

		}	

		if (isset($_POST['sv_add_std'])) {

			$groupKls       = mysqli_real_escape_string($con, htmlspecialchars($_POST['nm_group_kelas']));

	      	// Cari ID group kelas
	      	$findIdGroupKelas = mysqli_query($con, "
		        SELECT id FROM group_kelas
		        WHERE nama_group_kelas = '$groupKls'
	      	");

	      	$getidGroupKelas = mysqli_fetch_array($findIdGroupKelas)['id'];

	      	if (empty($_POST['states'])) {
		        $_SESSION['upt_dt']       = "gagal";
	      	} else {
	        	// echo "Ada Isian Array";exit;
		        $tampungData[]  = $_POST['states'];

		        // var_dump($tampungData[0]);exit;

		        for ($i=0; $i < count($tampungData[0]); $i++) { 

		          $execUpt = mysqli_query($con, '
		            UPDATE siswa
		            SET 
		            group_kelas = "'. $getidGroupKelas .'"'. '
		            WHERE nis = "' . $tampungData[0][$i] . '"
		          ');

		          if ($execUpt) {
		            $jumlah_data + 1;
		          }

		        }

		        if ($jumlah_data <= count($tampungData[0])) {
		          $jml_berhasil   = count($tampungData[0]);
		          $nama_group     = $groupKls;

		          $findIdGroupKelas = mysqli_query($con, "
			        SELECT id FROM group_kelas
			        WHERE nama_group_kelas = '$_GET[q]'
		      	");

		      	$getidGroupKelas = mysqli_fetch_array($findIdGroupKelas)['id'];

				$queryGetAllDataStudentByGroup = mysqli_query($con, "

					SELECT * FROM siswa
					WHERE group_kelas = '$getidGroupKelas'
					GROUP BY nis ASC

				");

		          $_SESSION['upt_dt']       = "berhasil";
		        }

	      	}

		}

		// $queryGetAllDataSiswa = mysqli_query($con, "
		// 	SELECT nis FROM siswa 
		// 	WHERE c_kelas <> 'TKBLULUS'
		// 	ORDER BY nis ASC
		// ");

		// foreach ($queryGetAllDataSiswa as $data) {
		// 	$arrDataSiswa[] = $data['nis'];
		// 	$arrDataPw[]	= random(5);
		// }

		// for ($i=0; $i < count($arrDataSiswa); $i++) { 
			
		// 	$insertAkesOtm = mysqli_query($con, "
	    //         INSERT INTO akses_otm
	    //         SET 
	    //         nis_siswa = '$arrDataSiswa[$i]',
	    //         password  = '$arrDataPw[$i]'
	    //     ");

		// }

		// exit;

  	}

?>

<?php if(isset($_SESSION['update_nama_siswa']) && $_SESSION['update_nama_siswa'] == 'berhasil'){?>
  <div style="display: none;" class="alert alert-warning alert-dismissable"> <span style="color: white;"> BERHASIL UPDATE DATA SISWA </span>
     <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
     <?php 
        unset($_SESSION['update_nama_siswa']);
    ?>
  </div>
<?php } ?>

<?php if(isset($_SESSION['upt_dt']) && $_SESSION['upt_dt'] == 'gagal'){?>
  <div style="display: none;" class="alert alert-danger alert-dismissable"> <span style="color: yellow;"> GAGAL MENAMBAHKAN SISWA KE DALAM GROUP KELAS </span>
     <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
     <?php 
        unset($_SESSION['upt_dt']);
    ?>
  </div>
<?php } ?>

<?php if(isset($_SESSION['upt_dt']) && $_SESSION['upt_dt'] == 'berhasil'){?>
  <div style="display: none;" class="alert alert-warning alert-dismissable"> <span style="color: white;"> <?= $jml_berhasil; ?> SISWA BERHASIL DI TAMBAHKAN KE DALAM GROUP KELAS <?= $nama_group; ?> </span>
     <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
     <?php 
        unset($_SESSION['upt_dt']);
    ?>
  </div>
<?php } ?>

<?php if(isset($_SESSION['update_group_siswa']) && $_SESSION['update_group_siswa'] == 'berhasil'){?>
  <div style="display: none;" class="alert alert-warning alert-dismissable"> <span style="color: white;"> BERHASIL UPDATE DATA GROUP KELAS <?= $g_kelas; ?> </span>
     <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
     <?php 
        unset($_SESSION['update_group_siswa']);
    ?>
  </div>
<?php } ?>

<?php if(isset($_SESSION['update_nama_siswa']) && $_SESSION['update_nama_siswa'] == 'gagal_akses_otm'){?>
  <div style="display: none;" class="alert alert-danger alert-dismissable"> <span style="color: yellow;"> GAGAL UPDATE DATA SISWA </span>
     <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
     <?php 
        unset($_SESSION['update_nama_siswa']);
    ?>
  </div>
<?php } ?>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/2.0.8/css/dataTables.dataTables.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/datetime/1.5.2/css/dataTables.dateTime.min.css">

<div class="box box-info">

	<br>
	<div class="form-group">
		<label class="col-md-1 control-label" id="lbl_walas"> WALAS </label>
		<div class="col-md-3">
			<input type="" value="<?= str_replace([" S.Pd.I", "  S.Pd", ",", "Lc.", " S.Sos", "  S.Ag", "  A.Md", "  S.Si", "  M.Pd", "  S.Psi."], "", $_SESSION['nama_guru']); ?>" name="" readonly class="form-control">
		</div>
	</div>

	<br>

  	<center> 
	    <h4 id="judul_daily">
	      <strong> LIST STUDENT CLASS <?= $_GET['q'] ?> </strong> 
	    </h4> 
  	</center>

  	<div class="box-body table-responsive">

  		<div class="form-group" id="div_btn">
	    	<a href="<?= $basegu; ?>addtogroupclass/<?= $_GET['q'] ?>" class="btn btn-sm btn-success"> TAMBAH ANGGOTA </a>
  		</div>

	    <br><br>

	    <table id="groupclass" class="display nowrap" style="width:100%">

	      	<thead>
		        <tr style="background-color: lightyellow; font-weight: bold;">
		          <th style="text-align: center; border: 1px solid black;" width="5%">NO</th>
		          <th style="text-align: center; border: 1px solid black;"> NIS </th>
		          <th style="text-align: center; border: 1px solid black; width: 560px;"> NAMA </th>
		          <th style="text-align: center; border: 1px solid black; width: 500px;"> ACTION </th>
		          <!-- <th style="text-align: center;"> DAILY </th> -->
		          <!-- Terdapat Administrasi Pembiayaan Yang Perlu Di Selesaikan -->
		        </tr>
	      	</thead>

	      	<tbody>
	        
	      		<?php foreach ($queryGetAllDataStudentByGroup as $data): ?>
	      			
	      			<tr>
	      				<td style="text-align: center !important;"> <?= $no++; ?> </td>
	      				<td style="text-align: center !important;"> <?= $data['nis']; ?> </td>
	      				<td style="text-align: center !important;"> <?= $data['nama']; ?> </td>
	      				<td style="text-align: center !important;"> 
	      					<button class="btn btn-sm btn-primary" onclick="editModal(`<?= $data['nama']; ?>`, `<?= $data['nis']; ?>`, `<?= $data['hp']; ?>`)"> <i class="glyphicon glyphicon-pencil"></i> EDIT </button> |
	      					<button class="btn btn-sm btn-danger" data-target="#hapus<?= $data['nis']; ?>" data-toggle="modal"> <i class="glyphicon glyphicon-ban-circle"></i> KELUARKAN SISWA DARI GROUP KELAS </button>
	      				</td>
	      			</tr>

	      			<div id="hapus<?php echo $data['nis']; ?>" class="modal" tabindex="-2" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			            <div class="modal-dialog">
			              	<div class="modal-content">
				                <div class="modal-header bg-red">
				                  	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				                  	<h4 class="modal-title" id="myModalLabel"> <i class="glyphicon glyphicon-trash"></i> Konfirmasi Mengeluarkan Siswa Dari Group Kelas </h4>
				                </div>
				                <div class="modal-body">
				                  	<h4> <b> Anda Yakin Ingin Mengeluarkan Siswa <?= strtoupper($data['nama']); ?> dari Group Kelas <?= $_GET['q']; ?> ? </b> </h4>
				                </div>
			                	<div class="modal-footer">
				                	<form method="POST">
				                    	<input type="hidden" name="nis_siswa" value="<?= $data['nis']; ?>">
				                    	<button class="btn btn-success" type="submit" name="out_group"> <i class="glyphicon glyphicon-ok"></i> Iya, Yakin </a> </button>
				                  	</form>
		                  			<button class="btn btn-danger" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i> Batal </button>
			                	</div>
			              	</div>
			            </div>
		          	</div>

	      		<?php endforeach ?>

	      	</tbody>

	    </table>
	    <br>

  	</div>

</div>

<div id="modalsiswa" class="modal" data-bs-backdrop="static" data-bs-keyboard="false">
  	<div class="modal-dialog modal-md">
	    <div class="modal-content">
	      	<div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> × </button>
		        <h4 class="modal-title" id="myModalLabel"> <i class="glyphicon glyphicon-list-alt"></i> Data Siswa </h4>
	      	</div>

	      	<form method="post">
		        <div class="modal-body">
		        	<div class="row">
		        		<div class="col-sm-4">
		          		<label> NIS </label>
		        		</div>
		          	<div class="col-sm-4" style="top: -4px;">
		          		<input type="text" readonly name="nis" id="nis" class="form-control" value="ajdnajsdn">
		          	</div>
		        	</div>
		          <br>
		          <div class="row">
		            <div class="col-sm-4">
		              <label> NAMA </label>
		            </div>
		            <div class="col-sm-8" style="top: -4px;">
		              <input type="text" name="nama_siswa" id="nama_siswa" class="form-control" value="ajdnajsdn">
		            </div>
		          </div>
		          <br>
		          <div class="row">
		            <div class="col-sm-4">
		              <label> NO HP/WA ORANG TUA </label>
		            </div>
		            <div class="col-sm-4" style="top: -4px;">
		              <input type="text" pattern="[0-9]*" inputmode="numeric" onkeypress="return onlyNumberKey(event)" maxlength="13" class="form-control" name="nohpotm" id="nohpotm">
		            </div>
		          </div>
		        </div>
		        <div class="modal-footer">
		          	<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="closeModal()">Close</button>
		          	<button type="submit" name="update_siswa" class="btn btn-success">Save changes</button>
		        </div>
	      	</form>

	    </div>
  	</div>    
</div>

<script src="<?= $basegu; ?>view/daily/query/dataTables1.js"></script>
<script type="text/javascript">
	
	$(document).ready( function () {

		var table = new DataTable('#groupclass');

		$("#isgroupclass").click();
        $("#is_groupclass").css({
            "background-color" : "#ccc",
            "color" : "black"
        });

        let newIcon = document.getElementById("addIcon");
	    newIcon.classList.remove("fa");
	    newIcon.classList.add("glyphicon");
	    newIcon.classList.add("glyphicon-list-alt");

	    let getTitleList2 = document.getElementById('g_kls').innerHTML;

	    $("#isiMenu").css({
	      "margin-left" : "5px",
	      "font-weight" : "bold",
	      "text-transform": "uppercase"
	    });

	    document.getElementById('isiMenu').innerHTML = 'GROUP CLASS ' + `<?= $_GET['q']; ?>`

	});

	function editModal(nama, nis, nohpotm) {

	    $("#nama_siswa").val(nama);
	    $("#nis").val(nis);
	    $("#nohpotm").val(nohpotm);
	    $('#modalsiswa').modal("show");

  	}

  	function closeModal() {
    	$("#modalsiswa").modal('hide');
  	}

  	function onlyNumberKey(evt) {

        // Only ASCII character in that range allowed
        let ASCIICode = (evt.which) ? evt.which : evt.keyCode
        if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57))
            return false;
        return true;
    }

</script>
