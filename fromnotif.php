<?php  
  
  require 'php/config.php'; 

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

  // echo $_GET['roomkey'];
  $rolekepsek   = password_verify("kepsek", $_GET['role']);
  $roleguru     = password_verify("guru", $_GET['role']);
  $roleotm      = password_verify("otm", $_GET['role']);
  $roomkeys     = htmlspecialchars($_GET['roomkey']);
  $stdorgroup   = htmlspecialchars($_GET['stdorgroup']);

  $kepsek_std   = 0;
  $kepsek_group = 0;

  $guru_std     = 0;
  $guru_group   = 0;

  $otm_std      = 0;
  $otm_group    = 0;

  // Kepsek Daily Personal
  if ($rolekepsek == 1 && $stdorgroup == 0) {
    $kepsek_std = 1;
  } 

  // Kepsek Daily Group
  else if ($rolekepsek == 1 && $stdorgroup == 1) {
    $kepsek_group = 1;
  } 

  // Guru Daily Personal
  else if ($roleguru == 1 && $stdorgroup == 0) {
    $guru_std = 1;
  } 

  // Guru Daily Group
  else if ($roleguru == 1 && $stdorgroup == 1) {
    $guru_group = 1;

    // Cari Daily Group
    $queryFindNameGroup = mysqli_query($con, "
      SELECT 
      group_siswa_approved.id AS id_group,
      group_kelas.nama_group_kelas AS nama_group 
      FROM group_siswa_approved
      LEFT JOIN group_kelas
      ON group_siswa_approved.group_kelas_id = group_kelas.id
      WHERE group_siswa_approved.id IN (
        SELECT daily_id FROM ruang_pesan WHERE room_key = '$roomkeys'
      )
    ");

    $getNameGroup = mysqli_fetch_assoc($queryFindNameGroup)['nama_group'];

    // Cari Daily Id Group
    $queryFindIdGroup = mysqli_query($con, "
      SELECT 
      group_kelas.id AS id_group
      FROM group_siswa_approved
      LEFT JOIN group_kelas
      ON group_siswa_approved.group_kelas_id = group_kelas.id
      WHERE group_siswa_approved.id IN (
        SELECT daily_id FROM ruang_pesan WHERE room_key = '$roomkeys'
      )
    ");

    $getIdGroup = mysqli_fetch_assoc($queryFindIdGroup)['id_group'];

    // Cari Foto Daily Group 
    $queryFindImageDailyGroup = mysqli_query($con, "
      SELECT 
      group_siswa_approved.image AS foto_daily
      FROM group_siswa_approved
      LEFT JOIN group_kelas
      ON group_siswa_approved.group_kelas_id = group_kelas.id
      WHERE group_siswa_approved.id IN (
        SELECT daily_id FROM ruang_pesan WHERE room_key = '$roomkeys'
      )
    ");

    $getImageUploadDailyGroup = mysqli_fetch_assoc($queryFindImageDailyGroup)['foto_daily'];

    // Cari Tanggal Daily Group
    $queryFindDateDailyGroup = mysqli_query($con, "
      SELECT 
      group_siswa_approved.tanggal_disetujui_atau_tidak AS tgl_disetujui
      FROM group_siswa_approved
      LEFT JOIN group_kelas
      ON group_siswa_approved.group_kelas_id = group_kelas.id
      WHERE group_siswa_approved.id IN (
        SELECT daily_id FROM ruang_pesan WHERE room_key = '$roomkeys'
      )
    ");

    $getDateDailyGroup = mysqli_fetch_assoc($queryFindDateDailyGroup)['tgl_disetujui'];

    // Cari Judul Daily Group
    $queryFindTitleDailyGroup = mysqli_query($con, "
      SELECT 
      group_siswa_approved.title_daily AS judul_daily
      FROM group_siswa_approved
      LEFT JOIN group_kelas
      ON group_siswa_approved.group_kelas_id = group_kelas.id
      WHERE group_siswa_approved.id IN (
        SELECT daily_id FROM ruang_pesan WHERE room_key = '$roomkeys'
      )
    ");

    $getTitleDailyGroup = mysqli_fetch_assoc($queryFindTitleDailyGroup)['judul_daily'];

    // Cari Isi Daily Group
    $queryFindContentDailyGroup = mysqli_query($con, "
      SELECT 
      group_siswa_approved.isi_daily AS isi_daily 
      FROM group_siswa_approved
      LEFT JOIN group_kelas
      ON group_siswa_approved.group_kelas_id = group_kelas.id
      WHERE group_siswa_approved.id IN (
        SELECT daily_id FROM ruang_pesan WHERE room_key = '$roomkeys'
      )
    ");

    $getContentDailyGroup = mysqli_fetch_assoc($queryFindContentDailyGroup)['isi_daily'];
    // echo $getContentDailyGroup;exit;

  } 

  // OTM Daily Personal
  else if ($roleotm == 1 && $stdorgroup == 0) {
    $otm_std = 1;
  } 

  // OTM Daily Group
  else if ($roleotm == 1 && $stdorgroup == 1) {
    $otm_group = 1;
  }

  // Cari Nama Guru Pembuat Daily
  $queryFindNameTeacher = mysqli_query($con, "
    SELECT nama FROM guru WHERE nip IN (
      SELECT created_by FROM ruang_pesan WHERE room_key = '$roomkeys'
    )
  ");

  $getNameTeacher = mysqli_fetch_assoc($queryFindNameTeacher)['nama'];

  // echo $getNameTeacher;exit;

  echo "Sedang Mengambil Data ...";

?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title> AIIS - Daily Activity </title>
  <link rel="shortcut icon" href="imgstatis/favicon.jpg">
</head>
<body>

  <?php if ($guru_group == 1): ?>

    <form action="<?= $basegu; ?>lookactivity/<?= $roomkeys; ?>" method="post" style="display: none;">
      <input type="hidden" id="hg_frompage_lookdaily" name="frompage_lookdaily" value="homepage">
      <input type="hidden" id="hg_roomkey_lookdaily" name="roomkey_lookdaily" value="<?= $roomkeys; ?>">
      <input type="hidden" id="hg_nama_guru_lookdaily" name="guru_lookdaily" value="<?= $getNameTeacher; ?>">
      <input type="hidden" id="hg_nama_siswa_lookdaily" name="nama_siswa_or_groupkelas_lookdaily" value="<?= $getNameGroup; ?>">
      <input type="hidden" id="hg_nis_siswa_lookdaily" name="nis_or_idgroup_lookdaily" value="<?= $getIdGroup; ?>">
      <input type="hidden" id="hg_foto_upload_lookdaily" name="foto_upload_lookdaily" value="<?= $getImageUploadDailyGroup; ?>">
      <input type="hidden" id="hg_tgl_posting_lookdaily" name="tgl_posting_lookdaily" value="<?= format_tgl_indo($getDateDailyGroup); ?>">
      <input type="hidden" id="hg_tglori_posting_lookdaily" name="tglori_posting_lookdaily" value="<?= $getDateDailyGroup; ?>">
      <input type="hidden" id="hg_jdl_posting_lookdaily" name="jdl_posting_lookdaily" value="<?= $getTitleDailyGroup; ?>">
      <input type="hidden" id="hg_isi_posting_lookdaily" name="isi_posting_lookdaily" value="<?= $getContentDailyGroup; ?>">
      <button type="submit" id="btn_activity"></button>
    </form>

  <?php elseif($stdorgroup == 0): ?>
    
  <?php endif ?>
  

</body>
</html>

<script src="jquery.js"> </script>

<script type="text/javascript">

  $(document).ready(function() {

    setTimeout(() => {
      $("#btn_activity").click();
    }, 1500)

  });

</script>