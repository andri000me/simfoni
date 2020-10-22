<?php 

include  '../../config/class.php';

// jika tidak ada session user dan level user harus staf

if (!isset($_SESSION['pengguna']) OR $_SESSION['pengguna']['nama_jenjang'] !== "SMP") 
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
    <link rel="icon" href="../../ssb.png" type="image/png">
    <!-- Bootstrap -->
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../assets/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/sendiri.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/admin.css">
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
      <a class="navbar-brand" href="#">SISTEM INFORMASI FORM ONLINE SEKOLAH SUKMA BANGSA <?php echo strtoupper ($db_lokasi)?> </a>
    </div>
    </div>
      </nav>
    <nav class="navbar-default navbar-side hidden-print">
      <div class="sidebar-collapse"> 
      <div class="user">
      <img src="../../logo.jpg" width="40px" class="img-circle">
        <h3>Selamat Datang, SDK!</h3>
        <p></p>
      </div>
        <ul class="nav" id="main-menu">
        <li><a href="index.php?halaman=home"><i class="fa fa-home"></i> Home</a></li>
           <li><a href="index.php?halaman=tampil_ruang"><i class="fa fa-binoculars"></i> Pemakaian ruangan</a></li>


           <li  class="tr-tree">
            <a href="#"><i class="fa fa-cube"></i> Tambah Data Kegiatan <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu"> 
             <li><a href="index.php?halaman=tambah_class_project"><i class="fa fa-binoculars"></i> Class Project</a></li>
             <li><a href="index.php?halaman=tambah_guest"><i class="fa fa-binoculars"></i> Data Guest Teacher</a></li>
              <li><a href="index.php?halaman=tambah_visit"><i class="fa fa-binoculars"></i> Data School Visit</a></li>

            </ul>
          </li>

        

          <li  class="tr-tree">
            <a href="#"><i class="fa fa-cube">
              
            </i> Tampil Semua Data Kegiatan <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu"> 
              <li><a href="index.php?halaman=tampil_class_project"><i class="fa fa-database"></i> Class Project</a></li>
             <li><a href="index.php?halaman=tampil_guest"><i class="fa fa-database"></i> Guest Teacher</a></li>
              <li><a href="index.php?halaman=tampil_visit"><i class="fa fa-database"></i>School Visit</a>
              </li>     

           </ul>
          </li>

           
          <li  class="tr-tree">
            <a href="#"><i class="fa fa-cube">  </i> Tampil Kegiatan Per Semester <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu">
                <li><a href="index.php?halaman=cek_tampil_periode_class_project"><i class="fa fa-database"></i> Class Project</a></li>
               <li><a href="index.php?halaman=cek_tampil_periode_guest"><i class="fa fa-database"></i>  Guest Teacher</a></li>
               <li><a href="index.php?halaman=cek_tampil_periode_visit"><i class="fa fa-database"></i>  School Visit</a></li>
           </ul>
          </li>

            <li><a href="index.php?halaman=download"><i class="fa fa-download"></i> Download Template</a></li>
            <li><a href="../../template/Panduan Aplikasi Simfoni.pdf"><i class="fa fa-download"></i> Panduan Aplikasi</a></li>
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
        elseif ($_GET['halaman']=='tambah_guest') 
        {
          include 'guest/tambah_guest.php';
        }
        elseif ($_GET['halaman']=='home') 
        {
          include 'home/home.php';
        }
        elseif ($_GET['halaman']=='tambah_visit') 
        {
          include 'visit/tambah_visit.php';
        }
        elseif ($_GET['halaman']=='tampil_class_project') 
        {
          include 'project/tampil_class_project.php';
        }
        elseif ($_GET['halaman']=='tampil_guest') 
        {
          include 'guest/tampil_guest.php';
        }
        elseif ($_GET['halaman']=='tampil_visit') 
        {
          include 'visit/tampil_visit.php';
        }
        elseif ($_GET['halaman']=='edit_class_project') 
        {
          include 'project/edit_class_project.php';
        }
         elseif ($_GET['halaman']=='edit_guest') 
        {
          include 'guest/edit_guest.php';
        }
        elseif ($_GET['halaman']=='edit_visit') 
        {
          include 'visit/edit_visit.php';
        }
        elseif ($_GET['halaman']=='hapus_class_project') 
        {
          include 'project/hapus_class_project.php';
        }
        elseif ($_GET['halaman']=='hapus_guest') 
        {
          include 'guest/hapus_guest.php';
        }
        elseif ($_GET['halaman']=='hapus_visit') 
        {
          include 'visit/hapus_visit.php';
        }
        elseif ($_GET['halaman']=='upload_laporan_class_project') 
        {
          include 'project/upload_laporan_class_project.php';
        }
        elseif ($_GET['halaman']=='upload_proposal_class_project') 
        {
          include 'project/upload_proposal_class_project.php';
        }
        elseif ($_GET['halaman']=='upload_laporan_guest') 
        {
          include 'guest/upload_laporan_guest.php';
        }
        elseif ($_GET['halaman']=='upload_proposal_guest') 
        {
          include 'guest/upload_proposal_guest.php';
        }
        elseif ($_GET['halaman']=='upload_laporan_visit') 
        {
          include 'visit/upload_laporan_visit.php';
        }
        elseif ($_GET['halaman']=='upload_proposal_visit') 
        {
          include 'visit/upload_proposal_visit.php';
        }
        elseif ($_GET['halaman']=='download_laporan_class_project') 
        {
          include 'project/download_laporan_class_project.php';
        }
        elseif ($_GET['halaman']=='download_proposal_class_project') 
        {
          include 'project/download_proposal_class_project.php';
        }
        elseif ($_GET['halaman']=='download_laporan_guest') 
        {
          include 'guest/download_laporan_guest.php';
        }
        elseif ($_GET['halaman']=='kelas') 
        {
          include 'kelas/kelas.php';
        }
        elseif ($_GET['halaman']=='edit_kelas') 
        {
          include 'kelas/edit_kelas.php';
        }
        elseif ($_GET['halaman']=='tambah_kelas') 
        {
          include 'kelas/tambah_kelas.php';
        }
        elseif ($_GET['halaman']=='hapus_kelas') 
        {
          include 'kelas/hapus_kelas.php';
        }
        elseif ($_GET['halaman']=='mapel') 
        {
          include 'mapel/mapel.php';
        }
        elseif ($_GET['halaman']=='edit_mapel') 
        {
          include 'mapel/edit_mapel.php';
        }
        elseif ($_GET['halaman']=='tambah_mapel') 
        {
          include 'mapel/tambah_mapel.php';
        }
        elseif ($_GET['halaman']=='hapus_mapel') 
        {
          include 'mapel/hapus_mapel.php';
        }
        elseif ($_GET['halaman']=='tampil_pilih_guest') 
        {
          include 'guest/tampil_pilih_guest.php';
        }
        elseif ($_GET['halaman']=='download') 
        {
          include 'download/download.php';
        }
          elseif ($_GET['halaman']=='tampil_periode_guest') 
        {
          include 'guest/tampil_periode_guest.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_guest') 
        {
          include 'guest/cek_tampil_periode_guest.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_class_project') 
        {
          include 'project/tampil_periode_class_project.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_class_project') 
        {
          include 'project/cek_tampil_periode_class_project.php';
        }elseif ($_GET['halaman']=='tampil_periode_visit') 
        {
          include 'visit/tampil_periode_visit.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_visit') 
        {
          include 'visit/cek_tampil_periode_visit.php';
        }

          elseif ($_GET['halaman']=='tambah_ruang') 
        {
          include 'ruangan/tambah_ruang.php';
        }
          elseif ($_GET['halaman']=='tampil_ruang') 
        {
          include 'ruangan/tampil_ruang.php';
        }
          elseif ($_GET['halaman']=='edit_ruang') 
        {
          include 'ruangan/edit_ruang.php';
        }
          elseif ($_GET['halaman']=='hapus_ruang') 
        {
          include 'ruangan/hapus_ruang.php';
        }
           elseif ($_GET['halaman']=='tampil_jadwal') 
        {
          include 'ruangan/tampil_jadwal.php';
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