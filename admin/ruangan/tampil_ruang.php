<div class="row">
	<div class="col-md-6">
	<h2><b><i class="fa fa-check"></i> DATA PERSETUJUAN RUANGAN</a></li></b></h2>	
	
	</div>
	</div>
 <?php  
// include_once "../config/class.php";

// $semua_jenjang = $jenjang->tampil_jenjang();


$semua_peminjaman = $peminjaman->tampil_peminjaman_pjruangan();
$data_guru = $guru->tampil_guru_pjruangan();
	$data_jenjang = $jenjang->tampil_jenjang_pjruangan();
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
	
		<table class="table table-hover table-striped" id="data-table">
			
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

				<a href="index.php?halaman=edit_ruang&id_peminjaman=<?php echo $value['id_peminjaman']; ?>" class="" ><div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div></a> <br> <br> 
				<a href="index.php?halaman=hapus_ruang&id_peminjaman=<?php echo $value['id_peminjaman']; ?>" class="" onclick="return confirm('hapus pengajuan pemakaian dari <?php echo $value["nama_guru"]; ?>') " ><div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div></a> <br>
				
				
						
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