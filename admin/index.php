<?php 

include '../config/class.php';

// jika tidak ada session admin alias belum login sebagai admin

if (!isset($_SESSION['admin'])) 
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
    <link rel="icon" href="ssb.png" type="image/png">

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
        <h3>Halo, Admin!</h3>
        <p></p>
      </div>
      <ul class="nav" id="main-menu">
        <li><a href="index.php?halaman=home"><i class="fa fa-home"></i> Home</a></li>
        <ul class="nav" id="main-menu">
        <li><a href="index.php?halaman=dashboard"><i class="fa fa-tachometer"></i> Dashboard</a></li>

          <li  class="tr-tree">
            <a href="#"><i class="fa fa-database">  </i> Database <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu"> 
               <li><a href="index.php?halaman=guru"><i class="fa fa-circle"></i> Kepegawaian</a></li>
           <li><a href="index.php?halaman=siswa"><i class="fa fa-circle"></i> Siswa</a></li>
          <li><a href="index.php?halaman=pengguna"><i class="fa fa-circle"></i> Pengguna</a></li>
          <li><a href="index.php?halaman=kelas"><i class="fa fa-circle"></i> Kelas</a></li>          
          <li><a href="index.php?halaman=ruang"><i class="fa fa-circle"></i> Ruang</a></li>
          <li><a href="index.php?halaman=mapel"><i class="fa fa-circle"></i> Mata Pelajaran</a></li>
          <li><a href="index.php?halaman=semester"><i class="fa fa-circle"></i> Semester</a></li>
           <li><a href="index.php?halaman=tp"><i class="fa fa-circle"></i>  Tahun Pelajaran</a></li>
          <li><a href="index.php?halaman=jk"><i class="fa fa-circle"></i>  Jenis Kelamin</a></li>
          <li><a href="index.php?halaman=statuspt"><i class="fa fa-circle"></i>  Status PT</a></li>
          <li><a href="index.php?halaman=jurusan"><i class="fa fa-circle"></i>  Jurusan</a></li>
          <li><a href="index.php?halaman=lomba"><i class="fa fa-circle"></i> Data Lomba dan Prestasi</a></li>
          <li><a href="index.php?halaman=lulusan"><i class="fa fa-circle"></i> Data Lulusan PT</a></li>
           </ul>
          </li>

          <li  class="tr-tree">
            <a href="#"><i class="fa fa-book"></i> Mata Pelajaran <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu">
              <li><a href="index.php?halaman=mapel1"><i class="fa fa-circle"></i> Mata Pelajaran Kolaborasi 1</a></li>
              <li><a href="index.php?halaman=mapel2"><i class="fa fa-circle"></i> Mata Pelajaran Kolaborasi 2</a></li>
              <li><a href="index.php?halaman=mapel3"><i class="fa fa-circle"></i> Mata Pelajaran Kolaborasi 3</a></li>
              <li><a href="index.php?halaman=mapel4"><i class="fa fa-circle"></i> Mata Pelajaran Kolaborasi 4</a></li>
            </ul>
          </li>

          <li><a href="index.php?halaman=tampil_ruang"><i class="fa fa-check"></i> Persetujuan Pengajuan Ruangan</a></li>


          <li  class="tr-tree">
            <a href="#"><i class="fa fa-table"></i> Tambah Data Kegiatan <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu"> 
             <li><a href="index.php?halaman=tambah_class_project"><i class="fa fa-plus"></i> Tambah Data Class Project</a></li>
             <li><a href="index.php?halaman=tambah_guest"><i class="fa fa-plus"></i> Tambah Data Guest Teacher</a></li>
              <li><a href="index.php?halaman=tambah_visit"><i class="fa fa-plus"></i> Tambah Data School Visit</a></li>
              <li><a href="index.php?halaman=tambah_visit_home"><i class="fa fa-plus"></i> Tambah Data Home Visit</a></li>
            </ul>
          </li>
       
          <li  class="tr-tree">
            <a href="#"><i class="fa fa-table">
              
            </i> Tampil Semua Data Kegiatan <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu"> 
              <li><a href="index.php?halaman=tampil_class_project">
                <i class="fa fa-circle"></i> Tampil Data Class Project</a></li>
             <li><a href="index.php?halaman=tampil_guest"><i class="fa fa-circle"></i> Tampil Data Guest Teacher</a></li>
              <li><a href="index.php?halaman=tampil_visit"><i class="fa fa-circle"></i> Tampil Data School Visit</a>
              </li> <li><a href="index.php?halaman=tampil_visit_home"><i class="fa fa-circle"></i> Tampil Data Home Visit</a></li>
              
               

           </ul>
          </li>

         
          <li  class="tr-tree">
            <a href="#"><i class="fa fa-table"></i> Tampil Data Kegiatan SD <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu"> 
             <li><a href="index.php?halaman=cek_tampil_periode_class_project_sd"><i class="fa fa-circle"></i> Class Project</a></li>
             <li><a href="index.php?halaman=cek_tampil_periode_guest_sd"><i class="fa fa-circle"></i> Guest Teacher</a></li>
              <li><a href="index.php?halaman=cek_tampil_periode_visit_sd"><i class="fa fa-circle"></i> School Visit</a></li>
              <li><a href="index.php?halaman=cek_tampil_periode_visit_home_sd"><i class="fa fa-circle"></i> Home Visit</a></li>
            </ul>
          </li>

           <li  class="tr-tree">
            <a href="#"><i class="fa fa-table"></i> Tampil Data Kegiatan SMP <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu"> 
             <li><a href="index.php?halaman=cek_tampil_periode_class_project_smp"><i class="fa fa-circle"></i> Class Project</a></li>
             <li><a href="index.php?halaman=cek_tampil_periode_guest_smp"><i class="fa fa-circle"></i> Guest Teacher </a></li>
               <li><a href="index.php?halaman=cek_tampil_periode_visit_smp"><i class="fa fa-circle"></i> School Visit</a></li>
            <li><a href="index.php?halaman=cek_tampil_periode_visit_home_smp"><i class="fa fa-circle"></i> Home Visit</a></li>              

            </ul>
          </li>

           <li  class="tr-tree">
            <a href="#"><i class="fa fa-table"></i> Tampil Data Kegiatan SMA <i class="pull-right fa fa-angle-right"></i></a>
            <ul class="tr-tree-menu"> <li><a href="index.php?halaman=cek_tampil_periode_class_project_sma"><i class="fa fa-circle"></i> Class Project</a></li>           
            
              <li><a href="index.php?halaman=cek_tampil_periode_guest_sma"><i class="fa fa-circle"></i> Guest Teacher</a></li>
              <li><a href="index.php?halaman=cek_tampil_periode_visit_sma"><i class="fa fa-circle"></i> School Visit</a></li>
              <li><a href="index.php?halaman=cek_tampil_periode_visit_home_sma"><i class="fa fa-circle"></i> Home Visit</a></li>
            </ul>
          </li>


           <li><a href="index.php?halaman=download"><i class="fa fa-download"></i> Download Template</a></li>
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
        elseif ($_GET['halaman']=='pengguna') 
        {
          include 'pengguna/pengguna.php';
        }
        elseif ($_GET['halaman']=='ubah_password_pengguna') 
        {
          include 'pengguna/ubah_password_pengguna.php';
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
        elseif ($_GET['halaman']=='hapus_pengguna') 
        {
          include 'pengguna/hapus_pengguna.php';
        }
        elseif ($_GET['halaman']=='hapus_pengguna') 
        {
          include 'pengguna/hapus_pengguna.php';
        }
        elseif ($_GET['halaman']=='hapus_lomba') 
        {
          include 'lomba/hapus_lomba.php';
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


        elseif ($_GET['halaman']=='siswa') 
        {
          include 'siswa/siswa.php';
        }
        elseif ($_GET['halaman']=='hapus_siswa') 
        {
          include 'siswa/hapus_siswa.php';
        }
        elseif ($_GET['halaman']=='edit_siswa') 
        {
          include 'siswa/edit_siswa.php';
        }
        elseif ($_GET['halaman']=='tambah_siswa') 
        {
          include 'siswa/tambah_siswa.php';
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
        elseif ($_GET['halaman']=='dashboard') 
        {
          include 'dashboard/dashboard.php';
        }
        elseif ($_GET['halaman']=='home') 
        {
          include 'home/home.php';
        }
         elseif ($_GET['halaman']=='tampil_periode_guest') 
        {
          include 'guest/tampil_periode_guest.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_guest') 
        {
          include 'guest/cek_tampil_periode_guest.php';
        }

        elseif ($_GET['halaman']=='tampil_periode_class_project_sd') 
        {
          include 'project/tampil_periode_class_project_sd.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_class_project_sd') 
        {
          include 'project/cek_tampil_periode_class_project_sd.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_class_project_smp') 
        {
          include 'project/tampil_periode_class_project_smp.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_class_project_smp') 
        {
          include 'project/cek_tampil_periode_class_project_smp.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_class_project_sma') 
        {
          include 'project/tampil_periode_class_project_sma.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_class_project_sma') 
        {
          include 'project/cek_tampil_periode_class_project_sma.php';
        }
         elseif ($_GET['halaman']=='tampil_periode_guest_sd') 
        {
          include 'guest/tampil_periode_guest_sd.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_guest_sd') 
        {
          include 'guest/cek_tampil_periode_guest_sd.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_guest_smp') 
        {
          include 'guest/tampil_periode_guest_smp.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_guest_smp') 
        {
          include 'guest/cek_tampil_periode_guest_smp.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_guest_sma') 
        {
          include 'guest/tampil_periode_guest_sma.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_guest_sma') 
        {
          include 'guest/cek_tampil_periode_guest_sma.php';
        }


        elseif ($_GET['halaman']=='tampil_periode_visit_sd') 
        {
          include 'visit/tampil_periode_visit_sd.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_visit_sd') 
        {
          include 'visit/cek_tampil_periode_visit_sd.php';
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

        elseif ($_GET['halaman']=='tampil_periode_visit_smp') 
        {
          include 'visit/tampil_periode_visit_smp.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_visit_smp') 
        {
          include 'visit/cek_tampil_periode_visit_smp.php';
        }
        elseif ($_GET['halaman']=='tampil_periode_visit_sma') 
        {
          include 'visit/tampil_periode_visit_sma.php';
        }
        elseif ($_GET['halaman']=='cek_tampil_periode_visit_sma') 
        {
          include 'visit/cek_tampil_periode_visit_sma.php';
        }

         elseif ($_GET['halaman']=='lulusan') 
        {
          include 'lulusan/lulusan.php';
        }
        elseif ($_GET['halaman']=='hapus_lulusan') 
        {
          include 'lulusan/hapus_lulusan.php';
        }
        elseif ($_GET['halaman']=='edit_lulusan') 
        {
          include 'lulusan/edit_lulusan.php';
        }
        elseif ($_GET['halaman']=='tambah_lulusan') 
        {
          include 'lulusan/tambah_lulusan.php';
        }

        elseif ($_GET['halaman']=='lomba') 
        {
          include 'lomba/lomba.php';
        }
        elseif ($_GET['halaman']=='hapus_lomba') 
        {
          include 'lomba/hapus_lomba.php';
        }
        elseif ($_GET['halaman']=='edit_lomba') 
        {
          include 'lomba/edit_lomba.php';
        }
        elseif ($_GET['halaman']=='tambah_lomba') 
        {
          include 'lomba/tambah_lomba.php';
        }
       


           elseif ($_GET['halaman']=='ruang') 
        {
          include 'ruang/ruang.php';
        }
        elseif ($_GET['halaman']=='edit_ruang') 
        {
          include 'ruang/edit_ruang.php';
        }
        elseif ($_GET['halaman']=='tambah_ruang') 
        {
          include 'ruang/tambah_ruang.php';
        }
        elseif ($_GET['halaman']=='hapus_ruang') 
        {
          include 'ruang/hapus_ruang.php';
        }


         elseif ($_GET['halaman']=='jurusan') 
        {
          include 'jurusan/jurusan.php';
        }
        elseif ($_GET['halaman']=='edit_jurusan') 
        {
          include 'jurusan/edit_jurusan.php';
        }
        elseif ($_GET['halaman']=='tambah_jurusan') 
        {
          include 'jurusan/tambah_jurusan.php';
        }
        elseif ($_GET['halaman']=='hapus_jurusan') 
        {
          include 'jurusan/hapus_jurusan.php';
        }

        elseif ($_GET['halaman']=='tp') 
        {
          include 'tp/tp.php';
        }
        elseif ($_GET['halaman']=='edit_tp') 
        {
          include 'tp/edit_tp.php';
        }
        elseif ($_GET['halaman']=='tambah_tp') 
        {
          include 'tp/tambah_tp.php';
        }
        elseif ($_GET['halaman']=='hapus_tp') 
        {
          include 'tp/hapus_tp.php';
        }
       
       elseif ($_GET['halaman']=='jk') 
        {
          include 'jk/jk.php';
        }
        elseif ($_GET['halaman']=='edit_jk') 
        {
          include 'jk/edit_jk.php';
        }
        elseif ($_GET['halaman']=='tambah_jk') 
        {
          include 'jk/tambah_jk.php';
        }
        elseif ($_GET['halaman']=='hapus_jk') 
        {
          include 'jk/hapus_jk.php';
        }

        elseif ($_GET['halaman']=='statuspt') 
        {
          include 'statuspt/statuspt.php';
        }
        elseif ($_GET['halaman']=='edit_statuspt') 
        {
          include 'statuspt/edit_statuspt.php';
        }
        elseif ($_GET['halaman']=='tambah_statuspt') 
        {
          include 'statuspt/tambah_statuspt.php';
        }
        elseif ($_GET['halaman']=='hapus_statuspt') 
        {
          include 'statuspt/hapus_statuspt.php';
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
    <!-- <script src="../assets/js/jquery-3.3.1.min.js"></script> -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.4/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.4/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.4/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.4/js/buttons.print.min.js"></script>
    <script>
      $(document).ready(function() {
          $('#data-table').DataTable({
        dom: 'Bfrtip',
        buttons: [
           {extend: 'excel',text: ' Simpan Ke File Excel',className: 'btn btn-primary', exportOptions: {
    columns: ':not(:last-child)'} }
           
        ]
    } 
          );
      } );
    </script>

    <script src="../assets/ckeditor/ckeditor.js"></script>
    <script>
      CKEDITOR.replace("theeditor");
    </script>
    <script src="../assets/js/sendiri.js"></script>
  </body>
</html>