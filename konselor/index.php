<?php 

include '../config/class.php';

// jika tidak ada session admin alias belum login sebagai admin

if (!isset($_SESSION['konselor'])) 
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
      <a class="navbar-brand" href="#">SISTEM INFORMASI FORM ONLINE SEKOLAH SUKMA BANGSA <?php echo strtoupper ($db_lokasi)?> </a>
    </div>
      </nav>
    <nav class="navbar-default navbar-side hidden-print">
      <div class="sidebar-collapse"> 
      <div class="user">
      <img src="../logo.jpg" width="40px" class="img-circle">
        <h3>Selamat Datang, Konselor!</h3>
        <p></p>
      </div>
        <ul class="nav" id="main-menu">
           <!-- <li><a href="index.php?halaman=guru"><i class="fa fa-camera"></i> Guru</a></li>
          <li><a href="index.php?halaman=pengguna"><i class="fa fa-camera"></i> Pengguna</a></li>
          <li><a href="index.php?halaman=kelas"><i class="fa fa-camera"></i> Kelas</a></li>
          <li><a href="index.php?halaman=mapel"><i class="fa fa-camera"></i> Mata Pelajaran</a></li>
          <li><a href="index.php?halaman=semester"><i class="fa fa-camera"></i> Semester</a></li>
          <li><a href="index.php?halaman=mapel1"><i class="fa fa-camera"></i> Mata Pelajaran Kolaborasi 1</a></li>
          <li><a href="index.php?halaman=mapel2"><i class="fa fa-camera"></i> Mata Pelajaran Kolaborasi 2</a></li>
          <li><a href="index.php?halaman=mapel3"><i class="fa fa-camera"></i> Mata Pelajaran Kolaborasi 3</a></li>
          <li><a href="index.php?halaman=mapel4"><i class="fa fa-camera"></i> Mata Pelajaran Kolaborasi 4</a></li> -->

          <!-- <li  class="tr-tree">
            <a href="#"><i class="fa fa-cube"></i> Mata Pelajaran <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu">
              <li><a href="index.php?halaman=mapel"> Pelajaran Inti</a></li>
              <li><a href="index.php?halaman=mapel1"> Pelajaran Kolaborasi 1</a></li>
              <li><a href="index.php?halaman=mapel2"> Pelajaran Kolaborasi 2</a></li>
              <li><a href="index.php?halaman=mapel3"> Pelajaran Kolaborasi 3</a></li>
              <li><a href="index.php?halaman=mapel4"> Pelajaran Kolaborasi 4</a></li> -->
              <!-- <li><a href="index.php?halaman=periode"> Periode</a></li> -->
              <!-- <li><a href="index.php?halaman=lokasi"> Lokasi</a></li> -->
            <!-- </ul>
          </li> -->

          <!-- <li  class="tr-tree">
            <a href="#"><i class="fa fa-cube"></i> Tambah Data Kegiatan <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu"> -->
           <!--    <li><a href="index.php?halaman=tambah_class_project"><i class="fa fa-diamond"></i> Tambah Data Class Project</a></li>
             <li><a href="index.php?halaman=tambah_guest"><i class="fa fa-binoculars"></i> Tambah Data Guest Teacher</a></li>
              <li><a href="index.php?halaman=tambah_visit"><i class="fa fa-binoculars"></i> Tambah Data School Visit</a></li> -->
              <li><a href="index.php?halaman=home"><i class="fa fa-home"></i> Home</a></li>
              <li><a href="index.php?halaman=tambah_visit_home"><i class="fa fa-home"></i> Tambah Data Home Visit</a></li>
              
            <!-- </ul>
          </li>
           -->
<!-- 
          <li  class="tr-tree">
            <a href="#"><i class="fa fa-cube"></i> Tampil Data Kegiatan <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu"> -->
              <!-- <li><a href="index.php?halaman=tampil_class_project"><i class="fa fa-list-ul"></i> Tampil Data Class Project</a></li>
             <li><a href="index.php?halaman=tampil_guest"><i class="fa fa-database"></i> Tampil Data Guest Teacher</a></li>
              <li><a href="index.php?halaman=tampil_visit"><i class="fa fa-database"></i> Tampil Data School Visit</a></li>  -->
              <li><a href="index.php?halaman=tampil_visit_home"><i class="fa fa-table"></i> Tampil Semua Data Home Visit</a></li>
              <li  class="tr-tree">
            <a href="#"><i class="fa fa-user"></i> Supervisi <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu"> 
             <li><a href="index.php?halaman=tambah_supervisi"><i class="fa fa-plus"></i> Input Data</a></li>
             <li><a href="index.php?halaman=tampil_supervisi"><i class="fa fa-table"></i> Tampil Data</a></li>
           </ul>
          </li>

              <li  class="tr-tree">
            <a href="#"><i class="fa fa-cube">  </i> Tampil Data Per Semester <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu">
                <li><a href="index.php?halaman=cek_tampil_periode_visit_home_sd"><i class="fa fa-database"></i> SD</a></li>
               <li><a href="index.php?halaman=cek_tampil_periode_visit_home_smp"><i class="fa fa-database"></i>  SMP</a></li>
               <li><a href="index.php?halaman=cek_tampil_periode_visit_home_sma"><i class="fa fa-database"></i>  SMA</a></li>
           </ul>
          </li>
          <li><a href="index.php?halaman=download"><i class="fa fa-download"></i> Download Template</a></li>
          <li><a href="../template/Panduan Aplikasi Simfoni.pdf"><i class="fa fa-download"></i> Panduan Aplikasi</a></li>
               <!-- <li><a href="index.php?halaman=download"><i class="fa fa-database"></i>Download Template</a></li>
 -->
           <!--  </ul>
          </li>
        	 -->
            
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
        elseif ($_GET['halaman']=='pengguna') 
        {
          include 'pengguna/pengguna.php';
        }
        elseif ($_GET['halaman']=='home') 
        {
          include 'home/home.php';
        }
        elseif ($_GET['halaman']=='ubah_password_pengguna') 
        {
          include 'pengguna/ubah_password_pengguna.php';
        }
        elseif ($_GET['halaman']=='hapus_pengguna') 
        {
          include 'pengguna/hapus_pengguna.php';
        }
        elseif ($_GET['halaman']=='edit_pengguna') 
        {
          include 'pengguna/edit_pengguna.php';
        }
        elseif ($_GET['halaman']=='tambah_pengguna') 
        {
          include 'pengguna/tambah_pengguna.php';
        }

        elseif ($_GET['halaman']=='guru') 
        {
          include 'guru/guru.php';
        }
        elseif ($_GET['halaman']=='ubah_password_guru') 
        {
          include 'guru/ubah_password_guru.php';
        }
        elseif ($_GET['halaman']=='hapus_guru') 
        {
          include 'guru/hapus_guru.php';
        }
        elseif ($_GET['halaman']=='edit_guru') 
        {
          include 'guru/edit_guru.php';
        }
        elseif ($_GET['halaman']=='tambah_guru') 
        {
          include 'guru/tambah_guru.php';
        }

        elseif ($_GET['halaman']=='tambah_class_project') 
        {
          include 'project/tambah_class_project.php';
        }
        elseif ($_GET['halaman']=='tambah_guest') 
        {
          include 'guest/tambah_guest.php';
        }
        elseif ($_GET['halaman']=='tambah_visit') 
        {
          include 'visit/tambah_visit.php';
        }elseif ($_GET['halaman']=='tambah_visit_home') 
        {
          include 'visit_home/tambah_visit_home.php';
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
        }elseif ($_GET['halaman']=='tampil_visit_home') 
        {
          include 'visit_home/tampil_visit_home.php';
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
        }elseif ($_GET['halaman']=='edit_visit_home') 
        {
          include 'visit_home/edit_visit_home.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_visit_home_sd') 
        {
          include 'visit_home/tampil_periode_visit_home_sd.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_visit_home_sd') 
        {
          include 'visit_home/cek_tampil_periode_visit_home_sd.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_visit_home_smp') 
        {
          include 'visit_home/tampil_periode_visit_home_smp.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_visit_home_smp') 
        {
          include 'visit_home/cek_tampil_periode_visit_home_smp.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_visit_home_sma') 
        {
          include 'visit_home/tampil_periode_visit_home_sma.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_visit_home_sma') 
        {
          include 'visit_home/cek_tampil_periode_visit_home_sma.php';
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
        }elseif ($_GET['halaman']=='hapus_visit_home') 
        {
          include 'visit_home/hapus_visit_home.php';
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
        }elseif ($_GET['halaman']=='upload_laporan_visit_home') 
        {
          include 'visit_home/upload_laporan_visit_home.php';
        }
        elseif ($_GET['halaman']=='upload_proposal_visit') 
        {
          include 'visit/upload_proposal_visit.php';
        }elseif ($_GET['halaman']=='upload_proposal_visit-home') 
        {
          include 'visit-home/upload_proposal_visit-home.php';
        }
        elseif ($_GET['halaman']=='download_laporan_class_project') 
        {
          include 'project/download_laporan_class_project.php';
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

        elseif ($_GET['halaman']=='semester') 
        {
          include 'semester/semester.php';
        }
        elseif ($_GET['halaman']=='edit_semester') 
        {
          include 'semester/edit_semester.php';
        }
        elseif ($_GET['halaman']=='tambah_semester') 
        {
          include 'semester/tambah_semester.php';
        }
        elseif ($_GET['halaman']=='hapus_semester') 
        {
          include 'semester/hapus_semester.php';
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

        elseif ($_GET['halaman']=='mapel1') 
        {
          include 'mapel1/mapel1.php';
        }
        elseif ($_GET['halaman']=='edit_mapel1') 
        {
          include 'mapel1/edit_mapel1.php';
        }
        elseif ($_GET['halaman']=='tambah_mapel1') 
        {
          include 'mapel1/tambah_mapel1.php';
        }
        elseif ($_GET['halaman']=='hapus_mapel1') 
        {
          include 'mapel1/hapus_mapel1.php';
        }

        elseif ($_GET['halaman']=='mapel2') 
        {
          include 'mapel2/mapel2.php';
        }
        elseif ($_GET['halaman']=='edit_mapel2') 
        {
          include 'mapel2/edit_mapel2.php';
        }
        elseif ($_GET['halaman']=='tambah_mapel2') 
        {
          include 'mapel2/tambah_mapel2.php';
        }
        elseif ($_GET['halaman']=='hapus_mapel2') 
        {
          include 'mapel2/hapus_mapel2.php';
        }

        elseif ($_GET['halaman']=='mapel3') 
        {
          include 'mapel3/mapel3.php';
        }
        elseif ($_GET['halaman']=='edit_mapel3') 
        {
          include 'mapel3/edit_mapel3.php';
        }
        elseif ($_GET['halaman']=='tambah_mapel3') 
        {
          include 'mapel3/tambah_mapel3.php';
        }
        elseif ($_GET['halaman']=='hapus_mapel3') 
        {
          include 'mapel3/hapus_mapel3.php';
        }

        elseif ($_GET['halaman']=='mapel4') 
        {
          include 'mapel4/mapel4.php';
        }
        elseif ($_GET['halaman']=='edit_mapel4') 
        {
          include 'mapel4/edit_mapel4.php';
        }
        elseif ($_GET['halaman']=='tambah_mapel4') 
        {
          include 'mapel4/tambah_mapel4.php';
        }
        elseif ($_GET['halaman']=='hapus_mapel4') 
        {
          include 'mapel4/hapus_mapel4.php';
        }
        elseif ($_GET['halaman']=='download') 
        {
          include 'download/download.php';
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