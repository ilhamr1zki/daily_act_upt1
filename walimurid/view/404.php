<?php  

  

?>

<div class="error-page">
  <h3 class="headline text-yellow"> 404</h3>
    <div class="error-content">
      <h3><i class="glyphicon glyphicon-ban-circle text-yellow"></i> Akses Ditolak</h3>
        <p>Maaf Halaman Tidak Bisa Ditampilkan, Terjadi Kesalahan</p>
      <?php if($_SESSION['c_otm']): ?>
          <a href="<?php echo $basewam; ?>" class="btn btn-flat btn-danger btn-block">Halaman Utama</a>
        <?php endif ?>
    </div>
        <!-- /.error-content -->
</div>
      <!-- /.error-page -->

      <script type="text/javascript">
        $("#content_head").hide()
      </script>