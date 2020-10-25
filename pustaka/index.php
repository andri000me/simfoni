<?php 

include '../config/class.php';

// jika tidak ada session admin alias belum login sebagai admin

if (!isset($_SESSION['pustaka'])) 
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
        <h3>Halo, Admin Pustaka!</h3>
        <p></p>
      </div>
        </div>
        <ul class="nav" id="main-menu">

       

        <li><a href="index.php?halaman=home"><i class="fa fa-home"></i> Home</a></li>
           <li><a href="index.php?halaman=tambah_pustaka"><i class="fa fa-plus"></i> Tambah Data Kegiatan</a></li>
            <li><a href="index.php?halaman=tampil_pustaka"><i class="fa fa-table"></i> Tampil Semua Data Kegiatan</a></li>
          
          
           <li  class="tr-tree">
              <a href="#"><i class="fa fa-table"></i> Tampil Data Kegiatan Per Level <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu">   
               <li><a href="index.php?halaman=cek_tampil_pustaka_sd"><i class="fa fa-binoculars"></i> SD</a></li>      
               <li><a href="index.php?halaman=cek_tampil_pustaka_smp"><i class="fa fa-binoculars"></i> SMP</a></li>      
               <li><a href="index.php?halaman=cek_tampil_pustaka_sma"><i class="fa fa-binoculars"></i> SMA</a></li>      
            </ul>
          </li>


         

          
         
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
        
       
        elseif ($_GET['halaman']=='tambah_pustaka') 
        {
          include 'pustaka/tambah_pustaka.php';
        }
          elseif ($_GET['halaman']=='tampil_pustaka') 
        {
          include 'pustaka/tampil_pustaka.php';
        }
        elseif ($_GET['halaman']=='home') 
        {
          include 'home/home.php';
        }
          elseif ($_GET['halaman']=='edit_pustaka') 
        {
          include 'pustaka/edit_pustaka.php';
        }
          elseif ($_GET['halaman']=='hapus_pustaka') 
        {
          include 'pustaka/hapus_pustaka.php';
        }
         elseif ($_GET['halaman']=='upload_laporan_pustaka') 
        {
          include 'pustaka/upload_laporan_pustaka.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_pustaka_sd') 
        {
          include 'pustaka/cek_tampil_pustaka_sd.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_pustaka_sd') 
        {
          include 'pustaka/tampil_periode_pustaka_sd.php';
        }
         elseif ($_GET['halaman']=='cek_tampil_pustaka_smp') 
        {
          include 'pustaka/cek_tampil_pustaka_smp.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_pustaka_smp') 
        {
          include 'pustaka/tampil_periode_pustaka_smp.php';
        }
         elseif ($_GET['halaman']=='cek_tampil_pustaka_sma') 
        {
          include 'pustaka/cek_tampil_pustaka_sma.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_pustaka_sma') 
        {
          include 'pustaka/tampil_periode_pustaka_sma.php';
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