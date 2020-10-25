

<div class="row">
	<div class="col-md-6">
		<h3>Jadwal Tetap Pemakaian Ruangan</h3>
		<h3>Sekolah Sukma Bangsa <?php echo  ($db_lokasi)?></h3>
	</div>
	
	<div class="col-md-6">
		<div class="tambah-user">
		<a href="index.php?halaman=tambah_jadwal" class="btn btn-primary">Tambah Data Jadwal tetap Ruangan</a>
		
		</div>
	</div>



</div>
<hr>
 <?php  
// include_once "../config/class.php";

// $semua_jenjang = $jenjang->tampil_jenjang();


$semua_jadwal = $jadwal->tampil_jadwal();
$data_hari = $hari->tampil_hari();
	
	$data_ruang = $ruang->tampil_ruang();
	
	$data_jenjang = $jenjang->tampil_jenjang_pjruangan();


 
// $semua_mapel2 = $mapel2->tampil_mapel2();
// $semua_mapel3 = $mapel3->tampil_mapel3();
// $semua_mapel4 = $mapel4->tampil_mapel4();

	/*echo "<pre>";
	print_r($semua_guest);
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
	<title>Data Guest Teacher SMA</title>
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">
</head>
<body>
	
<!-- <form action="upload_laporan_guest.php" method="POST" enctype="multipart/form-data">	 -->

<div class="row">
	<div class="col-md-12">
	
		<table class="table table-bordered" id="data-table">
			
			<thead>
				<tr>
					<th>No</th>
					<th>Level</th>	
					<th>Hari</th>	
					<th>Nama Ruang</th>
					<th>Jam Pemakaian</th>
					<th>Keperluan</th>
					
					<th class="hidden-print">Opsi</th>
					<!-- <th class="hidden-print">Proposal</th> -->
				<!--	<th class="hidden-print">Opsi</th> -->
					<!-- <th>Upload Laporan</th> -->
					
				</tr>
			</thead>
				
			<tbody>
				<?php foreach ($semua_jadwal as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td><?php echo $value['nama_jenjang']; ?></td> 
			<td><?php echo $value['hari']; ?></td> 
			<td><?php echo ($value['nama_ruang']) ?></td>
			<td><?php echo $value['id_jam']; ?></td> 
			<td><?php echo $value['keperluan']; ?></td> 
			
			
			<td class="hidden-print">

				<a href="index.php?halaman=edit_jadwal&id_jadwal=<?php echo $value['id_jadwal']; ?>" class="" >Ubah Data</a> <br> 
				<a href="index.php?halaman=hapus_jadwal&id_jadwal=<?php echo $value['id_jadwal']; ?>" class="" onclick="return confirm('hapus jadwal penggunaan  <?php echo $value["nama_ruang"]; ?>') " >Hapus Data</a> <br>
				
				
						
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