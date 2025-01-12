<?php  

  $timeOut        = $_SESSION['expire'];
    
  $timeRunningOut = time() + 5;

  $timeIsOut = 0;
  $no        = 1;
  $diMenu    = "querydailysiswa";
  // echo $_SESSION['c_kepsek'];exit;

  $str            = $_SESSION['bag_siswa'];
  $patternSD      = "/SD/i";
  $checkDataSD    = preg_match($patternSD, $str);

  $str1           = $_SESSION['bag_siswa'];
  $patternTK      = "/PAUD/i";
  $checkDataPAUD  = preg_match($patternTK, $str1);

  function formatDateEnglish($date){  
    $tanggal_indo = date_create($date);
    date_timezone_set($tanggal_indo,timezone_open("Asia/Jakarta"));
    $array_bulan = array(1=>'January','February','March', 'April', 'May', 'June','July','August','September','October', 'November','Desember');
    $date = strtotime($date);
    $tanggal = date ('d', $date);
    $bulan = $array_bulan[date('n',$date)];
    $tahun = date('Y',$date); 
    $H     = date_format($tanggal_indo, "H");
    $i     = date_format($tanggal_indo, "i");
    $s     = date_format($tanggal_indo, "s");

    $jamIndo = $H.":".$i.":".$s;
    $result = $tanggal ." ". $bulan ." ". $tahun . " " . $jamIndo;       
    return($result);  
  }

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
      // exit;

  } else {

  	// Cari Id Group Kelas berdasarkan NIS
  	$queryFindIdGroup = mysqli_query($con, "
  		SELECT group_kelas FROM siswa WHERE nis = '$_SESSION[c_otm]'
  	");

  	$getIdGroup = mysqli_fetch_assoc($queryFindIdGroup)['group_kelas'];

  	// Cari Apakah Daily Group APproved dengan id Group Kelas yang telah di tentukan
  	$groupApproved = mysqli_query($con, "
  		SELECT 
  		group_siswa_approved.from_nip as from_nip,
  		group_siswa_approved.title_daily as judul_daily, 
  		group_siswa_approved.isi_daily as isi_daily,
  		group_siswa_approved.image as foto_upload,
  		group_siswa_approved.tanggal_disetujui_atau_tidak as tgl_posted,
  		guru.nama as nama_guru,
  		guru.nip as nip_guru,
  		group_kelas.nama_group_kelas as nama_group_kelas
  		from group_siswa_approved 
  		LEFT JOIN guru 
  		ON group_siswa_approved.from_nip = guru.nip
  		LEFT JOIN group_kelas
  		ON group_siswa_approved.group_kelas_id = group_kelas.id
  		WHERE 
  		group_siswa_approved.group_kelas_id = '$getIdGroup' 
  		AND group_siswa_approved.status_approve = 1
      ORDER BY tgl_posted DESC
  	");

    if ($checkDataSD == 1) {

      $dataGroupDaily = mysqli_query($con, "
        SELECT id, nama_group_kelas, walas
        FROM group_kelas
        WHERE nip IN (
          SELECT nip FROM guru WHERE c_jabatan LIKE '%SD%'
        )
        ORDER BY nama_group_kelas ASC
      ");

    } else if ($checkDataPAUD == 1) {

      $dataGroupDaily = mysqli_query($con, "
        SELECT id, nama_group_kelas, walas
        FROM group_kelas
        WHERE nip IN (
          SELECT nip FROM guru WHERE c_jabatan LIKE '%PAUD%'
        )
        ORDER BY nama_group_kelas ASC
      ");

    }

  }

?>

<div class="box box-info">

  <center> 
    <h4 id="judul_daily">
      <strong> LIST GROUP KELAS </strong> 
    </h4> 
  </center>

  <br>

  <div class="box-body table-responsive">
    <table id="list_group" style="text-align: center;" class="table table-bordered table-hover">

      <thead>
        <tr style="background-color: lightyellow; font-weight: bold;">
          <th style="text-align: center; border: 1px solid black;" width="5%">NO</th>
          <th style="text-align: center; border: 1px solid black;"> FROM TEACHER </th>
          <th style="text-align: center; border: 1px solid black;"> ACTIVITY TITLE </th>
          <th style="text-align: center; border: 1px solid black;"> DATE POSTED </th>
          <th style="text-align: center; border: 1px solid black;"> ACTION </th>
          <!-- Terdapat Administrasi Pembiayaan Yang Perlu Di Selesaikan -->
        </tr>
      </thead>

      <tbody>

        <?php foreach ($groupApproved as $data): ?>
          
          <tr>
            <td style="text-align: center;"> <?= $no++; ?> </td>
            <td style="text-align: center;"> <?= $data['nama_guru']; ?> </td>
            <td style="text-align: center;"> <?= $data['judul_daily'] ?> </td>
            <td style="text-align: center;"> <?= format_tgl_indo($data['tgl_posted']); ?> </td>
            <td style="text-align: center;"> 
              <form action="teachercreategroupdaily" method="post">
                <input type="hidden" name="id_group" value="<?= $getIdGroup; ?>">
                <input type="hidden" name="nama_group_kelas" value="<?= $data['nama_group_kelas']; ?>">
                <button class="btn btn-sm btn-primary" type="submit" name="send_data_group"> <i class="glyphicon glyphicon-eye-open"></i> DAILY </button> 
              </form>
            </td>

          </tr>

        <?php endforeach ?>
        
      </tbody>

    </table>
  </div>

</div>
   
<script type="text/javascript">

  let titleLists1   = document.getElementById('titleList1').innerHTML

  let newIcon = document.getElementById("addIcon");
  newIcon.classList.remove("fa");
  newIcon.classList.add("fa");
  newIcon.classList.add("fa-users");

  let getTitleList1 = document.getElementById('isiList2').innerHTML;

  $(document).ready(function() {

    $("#aList1").click();
    $("#isiList2").click();
    $("#query_data_group").css({
        "background-color" : "#ccc",
        "color" : "black"
    });

    $("#isiMenu").css({
      "margin-left" : "5px"
    });

  })  

  document.getElementById('isiMenu').innerHTML = `<span style="font-weight: bold;"> QUERY - </span>` + `<span style="font-weight: bold;"> GROUP CLASS </span>`

</script>