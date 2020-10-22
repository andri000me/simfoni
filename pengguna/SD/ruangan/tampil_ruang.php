<div class="row">
	<div class="col-md-6">
		<h3>Data Pemakaian Ruangan</h3>
		<h3>Sekolah Sukma Bangsa <?php echo  ($db_lokasi)?></h3>
	</div>
	<div class="col-md-6">
		<div class="tambah-user hidden-print">
			<a href="index.php?halaman=tampil_jadwal" class="btn btn-primary">Lihat Jadwal Tetap Penggunaan Ruang</a>
		<a href="index.php?halaman=tambah_ruang" class="btn btn-primary">Tambah Data Pemakaian Ruangan</a>
			
		</div>
	</div>


</div>
 <?php  
// include_once "../config/class.php";

// $semua_jenjang = $jenjang->tampil_jenjang();


$semua_peminjaman = $peminjaman->tampil_peminjaman_admin();
$data_guru = $guru->tampil_guru();
	$data_jenjang = $jenjang->tampil_jenjang();
	$data_ruang = $ruang->tampil_ruang();
	$data_status = $status->tampil_status();
	$data_status_final = $status_final->tampil_status_final();

 
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
					<!-- <th>Jenjang</th> -->
					<th>Nama Pengguna</th>
					<th>Level</th>	
					<th>Nama Ruang</th>	
					<th>Tanggal Pemakaian</th>
					<th>Jam Pemakaian</th>
					<th>Keperluan</th>
					<th>Status Pengajuan</th>					
					<th>Status Persetujuan</th>
					<th>Keterangan</th>
					<th class="hidden-print">Opsi</th>
					<!-- <th class="hidden-print">Proposal</th> -->
				<!--	<th class="hidden-print">Opsi</th> -->
					<!-- <th>Upload Laporan</th> -->
					
				</tr>
			</thead>
				
			<tbody>
				<?php foreach ($semua_peminjaman as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td><?php echo $value['nama_guru'] ;?>  </td>
			<td><?php echo $value['nama_jenjang']; ?></td> 
			<td><?php echo $value['nama_ruang']; ?></td> 
			<td><?php echo tanggal_indo($value['waktu_1']) ?> </td>
			<td> <?php echo ($value['jam']) ?></td>
			<td><?php echo $value['keperluan']; ?></td> 
			<td><?php echo $value['nama_status']; ?></td> 
			<td><?php echo $value['nama_status_final']; ?></td> 
			<td><?php echo $value['keterangan']; ?></td> 
			
			
			<td class="hidden-print">

				<a href="index.php?halaman=edit_ruang&id_peminjaman=<?php echo $value['id_peminjaman']; ?>" class="" >Ubah Data</a> <br> 
			<!--	<a href="index.php?halaman=hapus_ruang&id_peminjaman=<?php //echo $value['id_peminjaman']; ?>" class="" onclick="return confirm('hapus data Pemakaian ruang  <?php //echo $value["nama_ruang"]; ?>') " >Hapus Data</a> <br> -->

			<!-- </td>


			</td>  -->

			<!--<td class="hidden-print">  -->
				
				
				
				<!-- <a href="../../laporan/proposal/<?php //echo $value['proposal'] ?>" class="" >Download Proposal</a>	 -->
				
						
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
<a href="" onclick="print()" class="btn btn-success hidden-print"><i class="fa fa-print"></i> Cetak Laporan</a>
</div>
</div>
		
	
<!-- </form> -->
	
</body>
</html>