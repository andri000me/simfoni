<?php 

include '../../config/class.php';

// jika tidak ada session user dan level user harus staf

if (!isset($_SESSION['user']) OR $_SESSION['user']['nama_level'] !== "staf") 
{
  echo "<script>alert('Anda harus login terlebih dahulu')</script>";
  echo "<script>location='../../index.php'</script>";
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
    <title>Aplikasi Pelaporan Dana Advance</title>
    <!-- Bootstrap -->
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../assets/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/sendiri.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/admin.css">
     <link rel="stylesheet" type="text/css" href="../../assets/css/user.css">
  
<!-- menghilangkan keterangan aplikasi diatas print -->
<style>

	@page {size: auto; margin:0mm;}

	.no-table
	{
		width: 20px;
	}

	.judul-table th, .no-table, .tgl-table
	{
		text-align: center;
	}

	.uang
	{
		text-align: right;
	}
	.tgl-thead
	{
		width: 150px;
	}
	.uraian-thead
	{
		width: 200px;
	}
	.tanda-tangan
	{
		width: 20%;
	}
	.font-print
	{
		font-size: 11px;
	}

  table { page-break-inside: auto;  }
  tr {page-break-inside: avoid; page-break-after: auto;}
  thead {display: table-header-group;}

</style>


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
      <a class="navbar-brand" href="#">Aplikasi Pelaporan Dana Advance</a>
    </div>
      </nav>
    <nav class="navbar-default navbar-side hidden-print">
      <div class="sidebar-collapse"> 
      <div class="user">
        <img src="../../assets/img/sukma.jpg" class="img-circle">
        <!-- <h3>Selamat Datang</h3> -->
        <p></p>
        <p> <?php waktu(); ?> <br><?php echo $_SESSION['user']['nama_user']; ?></p>
      </div>
        <ul class="nav" id="main-menu">
          <li><a href="index.php"><i class="fa fa-user-circle"></i> Profil</a></li>
          <li  class="tr-tree">
            <a href="#"><i class="fa fa-file-text-o"></i> Laporan <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu">
          <li><a href="index.php?halaman=tambah_laporan"><i class="fa fa-file-text-o"></i> Tambah Laporan</a></li>
              <li><a href="index.php?halaman=semua_laporan"><i class="fa fa-file-text-o"></i> Tampil Semua Laporan</a></li>
              <li><a href="index.php?halaman=laporan"><i class="fa fa-file-text-o"></i> Laporan Per Periode</a></li>
            </ul>
          </li>
      
          <li><a href="index.php?halaman=logout" onclick="return confirm('Yakin keluar dari aplikasi ini')"><i class="fa fa-sign-out"></i> Logout</a></li>
        </ul>
      </div>
    </nav>
    <div id="page-wrapper">
      <div id="page-inner">
        <!-- percabangan halaman -->
        <?php 
          // jika tidak ada parameter di halaman url
        if (!isset($_GET['halaman']))
        {
          include 'home.php';
        }
        elseif ($_GET['halaman']=='laporan') 
        {
        	include 'laporan/pilih_periode.php';
        }
        elseif ($_GET['halaman']=='tampil_laporan') 
        {
        	include 'laporan/tampil_laporan.php';
        }
        elseif ($_GET['halaman']=='tambah_laporan') 
        {
          include 'laporan/tambah_laporan.php';
        }
        elseif ($_GET['halaman']=='semua_laporan') 
        {
          include 'laporan/semua_laporan.php';
        }
        elseif ($_GET['halaman']=="uraian_proposal") 
        {
          include "proposal/uraian_proposal.php";
        }
        elseif ($_GET['halaman']=="tambah_uraian") 
        {
          include "proposal/tambah_uraian.php";
        }
        elseif ($_GET['halaman']=="tambah_proposal") 
        {
          include "proposal/tambah_proposal.php";
        }
        elseif ($_GET['halaman']=='detail_laporan') 
        {
        	include 'laporan/detail_laporan.php';
        }
        elseif ($_GET['halaman']=='logout') 
        {
          // keluar session
          session_destroy();
          echo "<script>location='../../index.php' </script>";
        }
        ?>


        
      </div>
    </div>
  </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../../assets/js/jquery-3.3.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../../assets/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
    <script>
      $(document).ready(function() {
          $('#data-table').DataTable();
      } );
    </script>

    <script src="../../assets/ckeditor/ckeditor.js"></script>
    <script>
      CKEDITOR.replace("theeditor");
    </script>
    <script src="../../assets/js/sendiri.js"></script>
  </body>
</html>