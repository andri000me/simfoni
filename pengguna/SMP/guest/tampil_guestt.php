<div class="row">
	<div class="col-md-6">
		<h3>Data Guest Teacher SMP</h3>
		<h3>Sukma Bangsa Bireuen</h3>
	</div>
	<div class="col-md-6">
		<div class="tambah-user hidden-print">
		<a href="index.php?halaman=tambah_guest" class="btn btn-primary">Tambah Data Guest Teacher</a>
			
		</div>
	</div>


</div>
 <?php  
// include_once "../config/class.php";

// $semua_jenjang = $jenjang->tampil_jenjang();


$semua_guest = $guest->tampil_guest();
$semua_mapel1 = $mapel1->tampil_mapel1();
$semua_kelas = $kelas->tampil_kelas();
$semua_kelas2 = $kelas2->tampil_kelas2();
$semua_kelas3 = $kelas3->tampil_kelas3();
$semua_kelas4 = $kelas4->tampil_kelas4();
 
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
	<title>Data Guest Teacher SMP</title>
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">
</head>
<body>
	
<!-- <form action="upload_laporan_guest.php" method="POST" enctype="multipart/form-data">	 -->

<div class="row">
	<div class="col-md-12">
	
		<table class="table table-bordered">
			
			<thead>
				<tr>
					<th>No</th>
					<!-- <th>Jenjang</th> -->
					<th>Semester</th>
					<th>Kelas</th>
					<th>Mata Pelajaran</th>	
					<th>Materi Pelajaran</th>	
					<th>Koordinator Pelaksana Guest Teacher</th>
					<th>Nama Guest Teacher</th>
					<th>Tujuan dan Manfaat</th>
					<th>Waktu Pelaksanaan</th>
					<th>Perkiraan Biaya (Rp)</th>
					<th class="hidden-print">Laporan</th>
					<th class="hidden-print">Proposal</th>
					<th class="hidden-print">Opsi</th>
					<!-- <th>Upload Laporan</th> -->
					
				</tr>
			</thead>
				
			<tbody>
				<?php foreach ($semua_guest as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<!-- <td><?php echo $value['nama_jenjang']; ?></td> -->
			<td><?php echo $value['nama_semester']; ?></td>
			<td><?php echo $value['nama_kelas']; ?> <br> <?php echo $value['nama_kelas2'] ?> <br> <?php echo $value['nama_kelas3'] ?> <br> <?php echo $value['nama_kelas4'] ?> </td>
			<td><?php echo $value['nama_mapel1']; ?></td>
			<td><?php echo $value['tema_guest']; ?></td>
			<td><?php echo $value['nama_guru'] ;?>  </td>
			<td><?php echo $value['nama_guest'] ;?>  </td>
			<td><?php echo $value['hasil_guest'] ?></td>
			<td><?php echo tanggal_indo($value['waktu_1']) ?> s/d <?php echo tanggal_indo($value['waktu_2']) ?></td>
			<td><?php echo $value['biaya_guest'] ?></td>
			<td class="hidden-print"><?php echo $value['laporan'] ?> <br>
				<a href="index.php?halaman=upload_laporan_guest&id_guest=<?php echo $value['id_guest']; ?>" class="" >Upload</a> <br>
				<a href="../../laporan/guest_teacher/<?php echo $value['laporan'] ?>" class="" >Download</a>		

			</td>
			<td class="hidden-print"><?php echo $value['proposal'] ?> <br>
				<a href="index.php?halaman=upload_proposal_guest&id_guest=<?php echo $value['id_guest']; ?>" class="" >Upload</a> <br>	


				
				<a href="../../laporan/proposal/<?php echo $value['proposal'] ?>" class="" >Download</a>	
			</td>

			<td class="hidden-print"> <br>
				<a href="index.php?halaman=edit_guest&id_guest=<?php echo $value['id_guest']; ?>" class="" >Ubah</a> <br>
				<a href="index.php?halaman=hapus_guest&id_guest=<?php echo $value['id_guest']; ?>" class="" onclick="return confirm('hapus data tema guest teacher <?php echo $value["tema_guest"]; ?>') " >Hapus</a> 
				
				
						
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