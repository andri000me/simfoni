<?php 

include  '../config/class.php';

// jika tidak ada session user dan level user harus staf

if (!isset($_SESSION['waka'])) 
{
  echo "<script>alert('Anda harus login terlebih dahulu')</script>";
  echo "<script>location='../index.php'</script>";
  exit();
}


?>


<!-- <pre><?php //print_r($_SESSION)?></pre> -->

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SIMFONI</title>
    <link rel="icon" href="../ssb.png" type="image/png">
    <!-- Bootstrap -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../assets/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/sendiri.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/admin.css">
  </head>
  <body>
    <div id="wrapper">
      <nav class="navbar navbar-default hidden-print">
        <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".sidebar-collapse" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><img src="../logo.jpg" width="40px" class="img-circle" style="display:inline-block;"> SISTEM INFORMASI MANAJEMEN FORM ONLINE SEKOLAH SUKMA BANGSA <?php echo strtoupper ($db_lokasi)?></img></a>
    </div>
      </nav>
    <nav class="navbar-default navbar-side hidden-print">
      <div class="sidebar-collapse"> 
      <div class="user">
      <img src="../assets/img/user.png" width="40px" class="img-circle">
        <h3>Halo, Wakasek!</h3>
        <p></p>
      </div>
        <ul class="nav" id="main-menu">

         
        <li><a href="index.php?halaman=home"><i class="fa fa-home"></i> Home</a></li>
           <li><a href="index.php?halaman=tambah_lomba"><i class="fa fa-plus"></i> Tambah Data Lomba</a></li>
           <li><a href="index.php?halaman=tambah_lulusan"><i class="fa fa-graduation-cap"></i> Tambah Data Lulusan</a></li>
           <li><a href="index.php?halaman=lomba"><i class="fa fa-table"></i> Tampil Semua Data Lomba</a></li>
            <li><a href="index.php?halaman=lulusan"><i class="fa fa-table"></i> Tampil Semua Data Lulusan</a></li>
            <li><a href="index.php?halaman=cek_tampil_periode_lulusan"><i class="fa fa-table"></i> Tampil Data Lulusan Per Tahun</a></li>

           <li  class="tr-tree">
              <a href="#"><i class="fa fa-table"></i> Tampil Data Lomba Per Level <i class="pull-right fa fa-angle-right"></i></a>
               <ul class="tr-tree-menu">   
               <li><a href="index.php?halaman=cek_tampil_periode_lomba_sd"><i class="fa fa-database"></i> SD </a></li>
             <li><a href="index.php?halaman=cek_tampil_periode_lomba_smp"><i class="fa fa-database"></i> SMP </a></li>
              <li><a href="index.php?halaman=cek_tampil_periode_lomba_sma"><i class="fa fa-database"></i> SMA </a></li>    
            </ul>
          </li>

<!--
            <li  class="tr-tree">
            <a href="#"><i class="fa fa-cube"></i> Tampil Data Lomba Per Level <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu"> 
             <li><a href="index.php?halaman=lomba"><i class="fa fa-database"></i> Tampil Semua Data Lomba</a></li>
            <li><a href="index.php?halaman=cek_tampil_periode_lomba"><i class="fa fa-database"></i> Tampil Per Tahun Data Lomba </a></li>

            </ul>
          </li>

           <li  class="tr-tree">
            <a href="#"><i class="fa fa-cube"></i> Tampil Data Lulusan <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu"> 
             <li><a href="index.php?halaman=lulusan"><i class="fa fa-database"></i> Tampil Semua Data Lulusan</a></li>
           <li><a href="index.php?halaman=cek_tampil_periode_lulusan"><i class="fa fa-database"></i> Tampil Per Tahun Data Lulusan</a></li>

            </ul>
          </li>
           -->
           <li><a href="../template/Panduan Aplikasi Simfoni.pdf"><i class="fa fa-download"></i> Panduan Aplikasi</a></li>
          
            <li><a href="index.php?halaman=logout" onclick="return confirm('Yakin keluar dari aplikasi ini')"><i class="fa fa-sign-out"></i> Logout</a></li>
            </ul>
          </li>
           
        </ul>
      </div>
    </nav>
    <div id="page-wrapper">
      <div id="page-inner">
        <!-- percabangan halaman -->
        
        <!-- percabangan halaman -->
        <?php 
          // jika tidak ada parameter di halaman url
        if (!isset($_GET['halaman']))
        {
          include 'home.php';
        }
         elseif ($_GET['halaman']=='lulusan')
        {
          include 'lulusan/lulusan.php';
        }
        elseif ($_GET['halaman']=='home')
        {
          include 'home/home.php';
        }
        elseif ($_GET['halaman']=='tambah_lulusan')
        {
          include 'lulusan/tambah_lulusan.php';
        }
        elseif ($_GET['halaman']=='edit_lulusan')
        {
          include 'lulusan/edit_lulusan.php';
        }
        elseif ($_GET['halaman']=='hapus_lulusan')
        {
          include 'lulusan/hapus_lulusan.php';
        }
        elseif ($_GET['halaman']=='cetak_lulusan')
        {
          include 'lulusan/cetak_lulusan.php';
        }

        elseif ($_GET['halaman']=='lomba')
        {
          include 'lomba/lomba.php';
        }
        elseif ($_GET['halaman']=='tambah_lomba')
        {
          include 'lomba/tambah_lomba.php';
        }
        elseif ($_GET['halaman']=='edit_lomba')
        {
          include 'lomba/edit_lomba.php';
        }
        elseif ($_GET['halaman']=='hapus_lomba')
        {
          include 'lomba/hapus_lomba.php';
        }
        elseif ($_GET['halaman']=='cetak_lomba')
        {
          include 'lomba/cetak_lomba.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_lomba')
        {
          include 'lomba/cek_tampil_periode_lomba.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_lomba')
        {
          include 'lomba/tampil_periode_lomba.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_lulusan')
        {
          include 'lulusan/cek_tampil_periode_lulusan.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_lulusan')
        {
          include 'lulusan/tampil_periode_lulusan.php';
        }
          elseif ($_GET['halaman']=='cek_tampil_periode_lomba_sd')
        {
          include 'lomba/cek_tampil_periode_lomba_sd.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_lomba_sd')
        {
          include 'lomba/tampil_periode_lomba_sd.php';
        }  
        elseif ($_GET['halaman']=='cek_tampil_periode_lomba_smp')
        {
          include 'lomba/cek_tampil_periode_lomba_smp.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_lomba_smp')
        {
          include 'lomba/tampil_periode_lomba_smp.php';
        }
          elseif ($_GET['halaman']=='cek_tampil_periode_lomba_sma')
        {
          include 'lomba/cek_tampil_periode_lomba_sma.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_lomba_sma')
        {
          include 'lomba/tampil_periode_lomba_sma.php';
        }



        
        elseif ($_GET['halaman']=='logout') 
        {
        
        
          // keluar session
          session_destroy();
          echo "<script>location='../index.php' </script>";
        }
        ?>

        
      </div>
    </div>
  </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../assets/js/jquery-3.3.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
    <script>
      $(document).ready(function() {
          $('#data-table').DataTable();
      } );
    </script>

    <script src="../assets/ckeditor/ckeditor.js"></script>
    <script>
      CKEDITOR.replace("theeditor");
    </script>
    <script src="../assets/js/sendiri.js"></script>
  </body>
</html>