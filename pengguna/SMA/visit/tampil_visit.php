<div class="row">
	<div class="col-md-6">
		<h3>Data School Visit SMA</h3>
		<h3>Sekolah Sukma Bangsa <?php echo  ($db_lokasi)?> </a></h3>		
	</div>
	<div class="col-md-6">
		<div class="tambah-user hidden-print">
		<a href="index.php?halaman=tambah_visit" class="btn btn-primary">Tambah Data School Visit</a>
			
		</div>
	</div>


</div>
 <?php  
// include_once "../config/class.php";

// $semua_jenjang = $jenjang->tampil_jenjang();


$semua_visit = $visit->tampil_visit();
$semua_mapel = $mapel->tampil_mapel();
$semua_kelas2 = $kelas2->tampil_kelas2();
$semua_kelas3 = $kelas3->tampil_kelas3();
$semua_kelas4 = $kelas4->tampil_kelas4();
 
// $semua_mapel2 = $mapel2->tampil_mapel2();
// $semua_mapel3 = $mapel3->tampil_mapel3();
// $semua_mapel4 = $mapel4->tampil_mapel4();

	/*echo "<pre>";
	print_r($semua_visit);
	echo "</pre>";
*/
	// // // echo "<pre>";
	// // // print_r($semua_jenjang);
	// // // echo "</pre>";

	// echo "<pre>";
	// print_r($semua_mapel);
	// echo "</pre>";

?>


<!DOCTYPE html>
<html>
<head>
	<title>Data School Visit SMA</title>
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">
</head>
<body>
	
<!-- <form action="upload_laporan_visit.php" method="POST" enctype="multipart/form-data">	 -->

<div class="row">
	<div class="col-md-12">
	
		<table class="table table-bordered" id="data-table">
			
			<thead>
				<tr>
					<th>No</th>
					<!-- <th>Jenjang</th> -->
					<th>Semester & Kelas</th>
					<th>Koordinator Pelaksana</th>
					<th>Mata Pelajaran</th>	
					<th>Materi School Visit</th>
					<th>Tujuan dan Manfaat</th>
					<th>Lokasi School Visit</th>
					<th>Waktu Pelaksanaan</th>				
					<th>Biaya (Rp)</th>
					<th class="hidden-print">Opsi</th>
					<!-- <th class="hidden-print">Proposal</th> -->
				<!--	<th class="hidden-print">Opsi</th> -->
					<!-- <th>Upload Laporan</th> -->
					
				</tr>
			</thead>
				
			<tbody>
				<?php foreach ($semua_visit as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<!-- <td><?php //echo $value['nama_jenjang']; ?></td> -->
			<td><?php echo $value['nama_semester']; ?> <br> <br> <?php echo $value['nama_kelas']; ?> <br> <?php echo $value['nama_kelas2'] ?> <br> <?php echo $value['nama_kelas3'] ?> <br> <?php echo $value['nama_kelas4'] ?> </td>
			<td><?php echo $value['nama_guru']; ?></td>
			<td><?php echo $value['nama_mapel1'] ;?> <br> <?php echo $value['nama_mapel2'] ;?> <br> <?php echo $value['nama_mapel3'] ;?> <br> <?php echo $value['nama_mapel4'] ;?> </td>
			<td><?php echo $value['tema_visit']; ?></td>
			<td><?php echo $value['hasil_visit']; ?></td>
			<td><?php echo $value['lokasi_visit'] ?></td>
			
			<td><?php echo tanggal_indo($value['waktu_1']) ?> s/d <?php echo tanggal_indo($value['waktu_2']) ?></td>
			<td><?php echo $value['biaya_visit'] ?></td>
			<td class="hidden-print"><?php echo $value['laporan'] ?> <br> <br> <!-- <?php // echo $value['proposal'] ?> <br> -->
				<a href="index.php?halaman=upload_laporan_visit&id_visit=<?php echo $value['id_visit']; ?>" class="" >Upload FIle</a> <br>	
				<!-- <a href="index.php?halaman=upload_proposal_visit&id_visit=<?php  // echo $value['id_visit']; ?>" class="" >Upload Proposal</a> <br>	
 -->
				<a href="../../laporan/school_visit/<?php echo $value['laporan'] ?>" class="" >Download File</a>	<br>
				<a href="index.php?halaman=edit_visit&id_visit=<?php echo $value['id_visit']; ?>" class="" >Ubah Data</a> <br>  <br>
				<a href="index.php?halaman=hapus_visit&id_visit=<?php echo $value['id_visit']; ?>" class="" onclick="return confirm('hapus data school visit <?php echo $value["tema_visit"]; ?>') " >Hapus Data</a> <br>
			</td>

			<!-- <td>

			</td> -->
			<!-- <td class="hidden-print">  -->
				
				<!-- <a href="../../laporan/proposal/<?php // echo $value['proposal'] ?>" class="" >Download Proposal</a>	
				 -->
						
			</td>

			
			<!-- <td>
				<input type="file" name="upload_file"> <br>
				<input type="submit" name="upload" value="Upload">

			</td> -->
			
		</tr>
		<?php endforeach ?>
					
			</tbody>
		</table>
			<div class="text-right">
</div>
</div>
		
	
<!-- </form> -->
	
</body>
</html>