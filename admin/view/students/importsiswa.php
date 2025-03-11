<?php  
	
	$timeOut        = $_SESSION['expire'];
    
    $timeRunningOut = time() + 5;

    $timeIsOut 		= 0;

    $dataSiswa   		= mysqli_query($con, "SELECT * FROM siswa");
    $countDataSiswa  	= mysqli_num_rows($dataSiswa);
    $c_klp 				= "";
    $dataKsg   			= [];
    $dataNIS  			= [];
    $dataNoHP 			= [];

    $jenjangSekolah 	= "";
    $calonNamaSiswa 	= "";
    $panggilanClnSiswa 	= "";
    $nisnCalonSiswa 	= "";
    $asalSklhClnSiswa 	= "";
    $jkClnSiswa 		= "";
    $tmptLhrClnSiswa	= "";
    $tglLhrClnSiswa 	= "";
    $nama_ayah 			= "";
    $tempat_lahir_ayah  = "";
    $tanggal_lahir_ayah = "";
    $pendAy 			= "";
    $pekerjaan_ayah 	= "";
    $domisiliAyah 		= "";
    $hpAyah 			= "";
    $nama_ibu 			= "";
    $tempat_lahir_ibu 	= "";
    $tanggal_lahir_ibu  = "";
    $pendIbu 			= "";
    $pekerjaan_ibu  	= "";
    $domisili_ibu 		= "";
    $hpIbu 				= "";
    $nisCalonSiswa 		= "";
    $tanggalDibuat 		= "";
    $fatherBirth 		= "";
    $motherBirth 		= "";
    $c_kelas 			= "";
    $kode 				= "";
    $getYear 			= "";
    $isYear 			= "";
    $yearPlusOne 		= "";

    error_reporting(1);

    function tgl_indo($date){  
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
	    $result = $tanggal ." ". $bulan ." ". $tahun;       
	    return($result);  
  	}

    if ($timeRunningOut == $timeOut || $timeRunningOut > $timeOut) {

	    $_SESSION['form_success'] = "session_time_out";

	    $timeIsOut = 1;
	    error_reporting(1);

  	} else {

  		if (isset($_POST['upload_data'])) {

  			// $jenjang_pendidikan = $_POST['j_pendidikan'];

  			require('spreadsheet-reader-master/php-excel-reader/excel_reader2.php');
			require('spreadsheet-reader-master/SpreadsheetReader.php');

			// Validasi apakah type file ber type xlsx, xls
			$namaFile 			= $_FILES['isi_file']['name'];
			$ekstensiFileValid 	= ['xlsx', 'xls'];
			$ekstensiFile 		= explode('.', $namaFile);
			$ekstensiFile 		= strtolower(end($ekstensiFile) );
			$checkForm          = 0; 

			if ($ekstensiFile == '') {
				$checkForm = 1;
			}

			if ($checkForm == 1) {

				$_SESSION['form_success'] = "empty_form";

			} else {

				if( !in_array($ekstensiFile, $ekstensiFileValid) ) {
					// echo "Type File Invalid. Yang Anda Masukan File Ber Type " . $ekstensiFile;
					$_SESSION['form_success'] = "type_fail";
					// return true;
				} else {

					//upload data excel kedalam folder uploads
					$target_dir = "uploads/".basename($_FILES['isi_file']['name']);
					
					move_uploaded_file($_FILES['isi_file']['tmp_name'],$target_dir);

					$Reader = new SpreadsheetReader($target_dir);

					foreach ($Reader as $Key => $Row) {
						// import data excel mulai baris ke-2 (karena ada header pada baris 1)
						// echo "Nomer KEY : " . $Key . "<br>";
						if ($Key < 1) continue;

						// echo "<br> Isinya : " . mysqli_real_escape_string($con,htmlspecialchars($Row[1]));exit;
						$jenjangSekolah 	= mysqli_real_escape_string($con,htmlspecialchars($Row[0]));
						$calonNamaSiswa 	= mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[1])));
						$panggilanClnSiswa	= mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[2])));
						$nisnCalonSiswa 	= mysqli_real_escape_string($con, htmlspecialchars($Row[3]));
						$asalSklhClnSiswa 	= mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[4])));
						$jkClnSiswa 		= mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[5])));

						if ($jkClnSiswa == "LAKI-LAKI") {
							$jkClnSiswa = "L";
						} else {
							$jkClnSiswa = "P";
						}

						$tmptLhrClnSiswa 	= mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[6])));
						$tglLhrClnSiswa 	= htmlspecialchars($Row[7]);
						$anak_ke 			= mysqli_real_escape_string($con, htmlspecialchars($Row[8]));
						$dariBrpSdr 		= mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[9])));
						$kkAdikDiAiis 		= mysqli_real_escape_string($con, htmlspecialchars($Row[10]));
						$tngktKelaskkAdik 	= mysqli_real_escape_string($con, htmlspecialchars($Row[11]));
						$nama_kk_atau_adik 	= mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[12])));
						$riwayat_penyakit 	= mysqli_real_escape_string($con, htmlspecialchars($Row[13]));
						$bacaan_tahsin 		= mysqli_real_escape_string($con, htmlspecialchars($Row[14]));
						$jumlah_juz_dihafal = htmlspecialchars($Row[15]);
						$juz_dihafal 		= mysqli_real_escape_string($con, htmlspecialchars($Row[16]));
						$hafalan_surat  	= mysqli_real_escape_string($con, htmlspecialchars($Row[17]));
						$berjalanPdUsia 	= mysqli_real_escape_string($con, htmlspecialchars($Row[18]));
						$bicaraPdUsia 		= mysqli_real_escape_string($con, htmlspecialchars($Row[19]));
						$pernahTrapi 		= mysqli_real_escape_string($con, htmlspecialchars($Row[20]));
						$jenisTerapi 		= mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[21])));
						$alasanTrapi 		= mysqli_real_escape_string($con, htmlspecialchars($Row[22]));
						$durasiTerapi 		= mysqli_real_escape_string($con, htmlspecialchars($Row[23]));
						$wktAwAkhirTrapi    = mysqli_real_escape_string($con, htmlspecialchars($Row[24]));
						$masihTerapi        = mysqli_real_escape_string($con, htmlspecialchars($Row[25]));
						$lmbtPerkembangan   = mysqli_real_escape_string($con, htmlspecialchars($Row[26]));
						$trbSolat 			= mysqli_real_escape_string($con, htmlspecialchars($Row[27]));
						$tahsinOrtua        = mysqli_real_escape_string($con, htmlspecialchars($Row[28]));
						$tahfidzOrtua 		= mysqli_real_escape_string($con, htmlspecialchars($Row[29]));
						$peranOrtua 		= mysqli_real_escape_string($con, htmlspecialchars($Row[30]));
						$terbiasaGadget 	= mysqli_real_escape_string($con, htmlspecialchars($Row[31]));
						$brpLamaGadget      = mysqli_real_escape_string($con, htmlspecialchars($Row[32]));
						$nama_ayah 			= mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[33])));
						$tempat_lahir_ayah 	= mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[34])));
						$tanggal_lahir_ayah = htmlspecialchars($Row[35]);
						$agama_ayah 		= mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[36])));
						$pendAy 			= mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[37])));
						$pekerjaan_ayah     = mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[38])));
						$domisiliAyah 		= mysqli_real_escape_string($con, htmlspecialchars($Row[39]));
						$hpAyah      		= htmlspecialchars($Row[40]);
						$nama_ibu 			= mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[41])));
						$tempat_lahir_ibu   = mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[42])));
						$tanggal_lahir_ibu  = htmlspecialchars($Row[43]);
						$agama_ibu          = mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[44])));
						$pendIbu 			= mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[45])));
						$pekerjaan_ibu      = mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[46])));
						$domisili_ibu 		= mysqli_real_escape_string($con, htmlspecialchars($Row[47]));
						$hpIbu 				= htmlspecialchars($Row[48]);
						$pendapatanOrtu     = mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[49])));
						$rencana_mutasi     = mysqli_real_escape_string($con, strtoupper(htmlspecialchars($Row[50])));
						$file_pdf_akte      = mysqli_real_escape_string($con, htmlspecialchars($Row[51]));
						$file_pdf_kk   		= mysqli_real_escape_string($con, htmlspecialchars($Row[52]));
						$ktp_ayah			= mysqli_real_escape_string($con, htmlspecialchars($Row[53]));
						$ktp_ibu 			= mysqli_real_escape_string($con, htmlspecialchars($Row[54]));
						$sertif_tahsin 		= mysqli_real_escape_string($con, htmlspecialchars($Row[55]));
						$sertif_tahfidz 	= mysqli_real_escape_string($con, htmlspecialchars($Row[56]));
						$nominalInfaq 		= mysqli_real_escape_string($con, htmlspecialchars($Row[57]));
						$nominalTerbilang 	= mysqli_real_escape_string($con, htmlspecialchars($Row[58]));
						$tanggalDibuat 		= htmlspecialchars($Row[59]);
						$nisCalonSiswa  	= htmlspecialchars($Row[60]);

						// echo $peranOrtua;exit;

						$getYear 		= strtotime($tanggalDibuat);
						$isYear 		= date("Y", $getYear);
						$yearPlusOne 	= $isYear + 1;

						$tempat_lahir_ayah = strtolower($tempat_lahir_ayah);
						$tempat_lahir_ayah = ucwords($tempat_lahir_ayah);

						$tempat_lahir_ibu = strtolower($tempat_lahir_ibu);
						$tempat_lahir_ibu = ucwords($tempat_lahir_ibu);

						$fatherBirth 	= $tempat_lahir_ayah . ", " . tgl_indo($tanggal_lahir_ayah);
						$fatherBirth 	= mysqli_real_escape_string($con, htmlspecialchars($fatherBirth));

						$motherBirth 	= $tempat_lahir_ibu . ", " . tgl_indo($tanggal_lahir_ibu);
						$motherBirth 	= mysqli_real_escape_string($con, htmlspecialchars($motherBirth));

						$combinedNumber = $hpAyah . ' / ' . $hpIbu;
						$combinedNumber = mysqli_real_escape_string($con, htmlspecialchars($combinedNumber));

						$dataNIS[] 		= $nisCalonSiswa;
						$dataNoHP[] 	= $hpIbu;

						$generate_password = random(5);

						if ($countDataSiswa != 0) {

							$queryFindData = mysqli_query($con, "SELECT * FROM siswa WHERE nama = '$Row[1]' AND tanggal_lahir = '$tglLhrClnSiswa' AND nis = '$nisCalonSiswa' ");
							$cariData = mysqli_fetch_array($queryFindData)['nama'];
							$sameData = mysqli_num_rows($queryFindData);
							// echo $jenjangSekolah . " " . $Row[1];exit;

							if ($sameData != 1) {

								$is_sd = "/SD/i";
								$is_tk = "KB";

								$getFirstWord = substr($jenjangSekolah, 0, 1);
								// echo $getFirstWord;exit;

								// $findWordSD 	= preg_match($is_sd, $jenjangSekolah);
								$findWordSD 	= 1;

								// echo "Sini " . $findWordSD;exit;
								$isKB 			= $findWordSD;

								if ($findWordSD == 1) {
									// echo "KE SINI";exit;

									$kode   = "SD";
							        $kode2  = "SD";
							        $c_klp   = 1;

							        $c_kelas = $getFirstWord . $kode;

						      	} else if ($findWordSD == 0) {
									
									$kode   = "TK";
							        $kode2  = "PTK";
							        $c_klp	= "KB";

							        $c_kelas = $isKB;							        

						      	}

						      	// echo $getFirstWord . " & " . $kode2;exit;

						      	$seqc_sis=mysqli_fetch_array(mysqli_query($con,"SELECT (nourut + 1) as nourut FROM penomoranmas where kode='$kode2' limit 1 "));
						      	$nomorurut = $seqc_sis['nourut'] ?? 0;

						      	$invID = str_pad($nomorurut, 4, '0', STR_PAD_LEFT);

						      	$kodseq = $kode."".$invID;

						      	$queryInsertSiswa = mysqli_query($con, "
							        INSERT INTO siswa
							        set 
							        c_siswa         = '$kodseq', 
							        c_kelas         = '$jenjangSekolah',
							        nisn            = '$nisnCalonSiswa',
							        nama            = '$calonNamaSiswa',
							        jk              = '$jkClnSiswa',
							        tempat_lahir    = '$tmptLhrClnSiswa',
							        tanggal_lahir   = '$tglLhrClnSiswa', 
							        tahun_join      = '$yearPlusOne', 
							        panggilan       = '$panggilanClnSiswa', 
							        c_klp           = '$c_klp', 
							        berat_badan     = NULL,
							        tinggi_badan    = NULL, 
							        ukuran_baju     = NULL, 
							        alamat          = '$domisiliAyah', 
							        telp            = NULL, 
							        hp              = '$combinedNumber',
							        email           = NULL, 
							        nama_ayah       = '$nama_ayah', 
							        pendidikan_ayah = '$pendAy', 
							        pekerjaan_ayah  = '$pekerjaan_ayah',
							        ttl_ayah        = '$fatherBirth', 
							        nama_ibu        = '$nama_ibu', 
							        pendidikan_ibu  = '$pendIbu', 
							        pekerjaan_ibu   = '$pekerjaan_ibu',
							        ttl_ibu         = '$motherBirth', 
							        nis             = '$nisCalonSiswa' 
						      	");

						      	$generatePassword = random(5);

						      	$queryInsertAksesOTM = mysqli_query($con, "
						      		INSERT INTO akses_otm
						      		SET
						      		nis_siswa 	= '$nisCalonSiswa',
						      		password 	= '$generate_password',
						      		no_hp 		= '$hpIbu'
						      	");

						      	if ($queryInsertSiswa && $queryInsertAksesOTM) {
						      		$dataSiswaKeseluruhan = mysqli_query($con, "SELECT * FROM siswa");
							        $penomoran=mysqli_query($con,"UPDATE penomoranmas set nourut='$nomorurut' where kode='$kode2' ");
							        $_SESSION['import_success'] = 'berhasil';
							        // $total = $dataSiswaKeseluruhan - $countDataSiswa;
							        $dataKsg[] 	= $nama_ayah;
							        $total 		= count($dataKsg);

						      	} else {

							        $_SESSION['import_success'] = 'gagal';
							        $dataSiswaKeseluruhan = mysqli_query($con, "SELECT * FROM siswa");

						      	}

							} else {

								$_SESSION['import_success'] = 'duplikat';

							}

						} else if ($countDataSiswa == 0) {

							$queryFindData = mysqli_query($con, "SELECT * FROM siswa WHERE nama = '$Row[1]' AND tanggal_lahir = '$tglLhrClnSiswa' AND nis = '$nisCalonSiswa' ");
							$cariData = mysqli_fetch_array($queryFindData)['nama'];
							$sameData = mysqli_num_rows($queryFindData);

							$is_sd = "/SD/i";
							$is_tk = "KB";

							$getFirstWord = substr($jenjangSekolah, 0, 1);
							// echo $getFirstWord;exit;

							$findWordSD 	= preg_match($is_sd, $jenjangSekolah);

							// echo "Sini " . $findWordSD;exit;
							$isKB 			= $findWordSD;

							if ($findWordSD == 1) {
								// echo "KE SINI";exit;

								$kode   = "SD";
						        $kode2  = "SD";
						        $c_klp   = 1;

						        $c_kelas = $getFirstWord . $kode;

					      	} else if ($findWordSD == 0) {
								
								$kode   = "TK";
						        $kode2  = "PTK";
						        $c_klp	= "KB";

						        $c_kelas = $isKB;							        

					      	}

					      	$seqc_sis=mysqli_fetch_array(mysqli_query($con,"SELECT (nourut + 1) as nourut FROM penomoranmas where kode='$kode2' limit 1 "));
					      	$nomorurut = $seqc_sis['nourut'] ?? 0;

					      	$invID = str_pad($nomorurut, 4, '0', STR_PAD_LEFT);

					      	$kodseq = $kode."".$invID;

					      	$queryInsertSiswa = mysqli_query($con, "
						        INSERT INTO siswa
						        set 
						        c_siswa         = '$kodseq', 
						        c_kelas         = '$c_kelas',
						        nisn            = '$nisnCalonSiswa',
						        nama            = '$calonNamaSiswa',
						        jk              = '$jkClnSiswa',
						        tempat_lahir    = '$tmptLhrClnSiswa',
						        tanggal_lahir   = '$tglLhrClnSiswa', 
						        tahun_join      = '$yearPlusOne', 
						        panggilan       = '$panggilanClnSiswa', 
						        c_klp           = '$c_klp', 
						        berat_badan     = NULL,
						        tinggi_badan    = NULL, 
						        ukuran_baju     = NULL, 
						        alamat          = '$domisiliAyah', 
						        telp            = NULL, 
						        hp              = '$combinedNumber',
						        email           = NULL, 
						        nama_ayah       = '$nama_ayah', 
						        pendidikan_ayah = '$pendAy', 
						        pekerjaan_ayah  = '$pekerjaan_ayah',
						        ttl_ayah        = '$fatherBirth', 
						        nama_ibu        = '$nama_ibu', 
						        pendidikan_ibu  = '$pendIbu', 
						        pekerjaan_ibu   = '$pekerjaan_ibu',
						        ttl_ibu         = '$motherBirth', 
						        nis             = '$nisCalonSiswa' 
					      	");

					      	if ($queryInsertSiswa) {
					      		$dataSiswaKeseluruhan = mysqli_query($con, "SELECT * FROM siswa");
						        $penomoran=mysqli_query($con,"UPDATE penomoranmas set nourut='$nomorurut'  where kode='$kode2' ");
						        $_SESSION['import_success'] = 'berhasil';
						        // $total = $dataSiswaKeseluruhan - $countDataSiswa;
						        $dataKsg[] = $nama_ayah;
						        $dataNIS[] 	= $nisCalonSiswa;
						        $total = count($dataKsg);

					      	} else {

						        $_SESSION['import_success'] = 'gagal';
						        $dataSiswaKeseluruhan = mysqli_query($con, "SELECT * FROM siswa");

					      	}

						}

					}

				}

			}

		}

  	}

?>

<div class="row">
    
    <div class="col-xs-12 col-md-12 col-lg-12">

        <?php if(isset($_SESSION['form_success']) && $_SESSION['form_success'] == 'type_fail'){?>
          <div style="display: none;" class="alert alert-danger alert-dismissable"> Silahkan Masukan file bertipe xls, atau xlsx
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
             <?php unset($_SESSION['form_success']); ?>
          </div>
        <?php } ?>

        <?php if(isset($_SESSION['import_success']) && $_SESSION['import_success'] == 'berhasil'){?>
          <div style="display: none;" class="alert alert-warning alert-dismissable"> <?php echo $total . " DATA BERHASIL DI IMPORT !"; ?>
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
             <?php unset($_SESSION['import_success']); ?>
          </div>
        <?php } ?>

        <?php if(isset($_SESSION['import_success']) && $_SESSION['import_success'] == 'gagal'){?>
          <div style="display: none;" class="alert alert-danger alert-dismissable"> <?php echo "GAGAL IMPORT DATA !"; ?>
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
             <?php unset($_SESSION['import_success']); ?>
          </div>
        <?php } ?>

        <?php if(isset($_SESSION['import_success']) && $_SESSION['import_success'] == 'duplikat'){?>
          <div style="display: none;" class="alert alert-danger alert-dismissable"> <?php echo "GAGAL IMPORT DATA, KARENA ADA DATA YANG DUPLIKAT !"; ?>
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
             <?php unset($_SESSION['import_success']); ?>
          </div>
        <?php } ?>

        <?php if(isset($_SESSION['form_success']) && $_SESSION['form_success'] == 'type_fail'){?>
          <div style="display: none;" class="alert alert-danger alert-dismissable"> Silahkan Masukan file bertipe xls, atau xlsx
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
             <?php unset($_SESSION['form_success']); ?>
          </div>
        <?php } ?>

        <?php if(isset($_SESSION['form_success']) && $_SESSION['form_success'] == 'empty_form'){?>
          <div style="display: none;" class="alert alert-danger alert-dismissable"> Tidak Ada File Yang Di Upload
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
             <?php unset($_SESSION['form_success']); ?>
          </div>
        <?php } ?>

        <?php if(isset($_SESSION['form_success']) && $_SESSION['form_success'] == 'size_too_big'){?>
          <div style="display: none;" class="alert alert-danger alert-dismissable"> Ukuran File Terlalu Besar
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
             <?php unset($_SESSION['form_success']); ?>
          </div>
        <?php } ?>

    </div>

</div>

<div class="box box-info">

    <form action="<?= $basead; ?>importsiswa" enctype="multipart/form-data" method="post">
        <div class="box-body">

            <div class="row">

                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Import File Excel (xls)</label>
                        <input type="file" name="isi_file" accept="application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" class="form-control" id="id_siswa" />
                    </div>
                </div>

                <!-- <div class="col-sm-2">
                    <div class="form-group">
                        <label> Jenjang Pendidikan </label>
                        <select class="form-control" name="j_pendidikan" required>
                        	<option value=""> -- PILIH -- </option>
                        	<option value="tk"> KB/TK </option>
                        	<option value="sd"> SD </option>
                        </select>
                    </div>
                </div> -->

            </div> 

            <div class="row">
            	<div class="col-sm-4">
                    <input type="submit" name="upload_data" style="margin-top: 10px;" class="btn btn-sm btn-success" id="id_siswa" value="Import" />
            	</div>
            </div>
            
        </div>
    </form>

</div>

<script type="text/javascript">
	
	let newIcon = document.getElementById("addIcon");
    newIcon.classList.remove("fa");
    newIcon.classList.add("glyphicon");
    newIcon.classList.add("glyphicon-export");

	document.getElementById('isiMenu').innerHTML = `IMPORT DATA SISWA`

	$(document).ready( function () {
        $("#export_data").click();
        $("#import_baru").css({
            "background-color" : "#ccc",
            "color" : "black"
        });
    });

</script>