<?php 

include  '../config/class.php';

// jika tidak ada session user dan level user harus staf

if (!isset($_SESSION['pengguna']) OR $_SESSION['pengguna']['nama_jenjang'] !== "SMA") 
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
      <nav class="navbar navbar-default">
        <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".sidebar-collapse" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">SISTEM INFORMASI FORM ONLINE</a>
    </div>
      </nav>
    <nav class="navbar-default navbar-side">
      <div class="sidebar-collapse"> 
      <div class="user">
        <img src="../assets/img/sukma.jpg" class="img-circle">
        <h3>Selamat Datang</h3>
        <p></p>
      </div>
        <ul class="nav" id="main-menu">
          <li><a href="index.php?halaman=tambah_class_project"><i class="fa fa-file-text-o"></i> Pengguna</a></li>
          <li><a href="index.php?halaman=tambah_class_project"><i class="fa fa-file-text-o"></i> Tambah Data Class Project</a></li>
          <li><a href="index.php?halaman=semua_laporan"><i class="fa fa-file-text-o"></i> Tampil Data Guest Teacher</a></li>
            <li><a href="index.php?halaman=tampil_class_project"><i class="fa fa-file-text-o"></i> Tampil Data Class Project</a></li>
            <li><a href="index.php?halaman=laporan"><i class="fa fa-file-text-o"></i> Tampil Data Guest Teacher</a></li>
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
        elseif ($_GET['halaman']=='tambah_class_project') 
        {
          include 'project/tambah_class_project.php';
        }
        elseif ($_GET['halaman']=='tampil_class_project') 
        {
          include 'project/tampil_class_project.php';
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