<?php 
$id_periodeguest = $_GET['id_periodeguest'];
$data_periodeguest = $periodeguest->ambil_periodeguest($id_periodeguest);


$data_periodeguest_periode = $periodeguest->tampil_periodeguest($id_periodeguest);


  
// include_once "../config/class.php";

// $semua_jenjang = $jenjang->tampil_jenjang();


//$semua_guest = $guest->tampil_guest_admin();
//$semua_mapel1 = $mapel1->tampil_mapel1_admin();
 
// $semua_mapel2 = $mapel2->tampil_mapel2();
// $semua_mapel3 = $mapel3->tampil_mapel3();
// $semua_mapel4 = $mapel4->tampil_mapel4();

	/*echo "<pre>";
	print_r($semua_guest);
	echo "</pre>";
*/
	echo "<pre>";
	 print_r($data_periodeguest_periode);
	 echo "</pre>";

	$semua_periode_guest = $periodeguest->tampil_periode_guest_admin();
	 $data_semester = $semester->tampil_semester_admin();
	$data_jenjang = $jenjang->tampil_jenjang_admin();

	// echo "<pre>";
	// print_r($semua_mapel);
	// echo "</pre>";

?>


<!DOCTYPE html>
<html>
<head>
	<title>Data Guest Teacher</title>
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
					<th>Jenjang & Semester</th>
					
					<th>Kelas & Mata Pelajaran</th>	
					<th>Materi Pelajaran</th>	
					<th>Koordinator Pelaksana</th>
					<th>Nama Guest Teacher</th>
					<th>Tujuan dan Manfaat</th>
					<th>Waktu Pelaksanaan</th>
					<th>Perkiraan Biaya (Rp)</th>
					<th class="hidden-print">Laporan</th>
					<!-- <th class="hidden-print">Proposal</th> -->
					<th class="hidden-print">Opsi</th>
					
				</tr>
			</thead>
				
			<tbody>
				<?php foreach ($semua_periode_guest as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td><?php echo $value['nama_jenjang']; ?> <br> <?php echo $value['nama_semester']; ?></td>
			<td><?php echo $value['nama_kelas']; ?> <br> <?php echo $value['nama_kelas2'] ?> <br> <?php echo $value['nama_kelas3'] ?> <br> <?php echo $value['nama_kelas4'] ?> <br> <?php echo $value['nama_mapel1']; ?></td>
			<td><?php echo $value['tema_guest']; ?></td>
			<td><?php echo $value['nama_guru'] ;?>  </td>
			<td><?php echo $value['nama_guest'] ;?>  </td>
			<td><?php echo $value['hasil_guest'] ?></td>
			<td><?php echo tanggal_indo($value['waktu_1']) ?> s/d <?php echo tanggal_indo($value['waktu_2']) ?></td>
			<td><?php echo $value['biaya_guest'] ?></td>
			<td class="hidden-print"><?php echo $value['laporan'] ?> <br> <br>
				<a href="index.php?halaman=upload_laporan_guest&id_guest=<?php echo $value['id_guest']; ?>" class="" >Upload Laporan</a> <br>
				<a href="../laporan/guest_teacher/<?php echo $value['laporan'] ?>" class="" >Download Laporan</a>	
				<br>	

			</td>
			<!-- <td class="hidden-print"><?php //echo $value['proposal'] ?> <br>
				<a href="index.php?halaman=upload_proposal_guest&id_guest=<?php //echo $value['id_guest']; ?>" class="" >Upload</a> <br>	


				
				<a href="../laporan/proposal/<?php //echo $value['proposal'] ?>" class="" >Download</a>	
			</td>
 -->
			<td class="hidden-print"> 
				<a href="index.php?halaman=edit_guest&id_guest=<?php echo $value['id_guest']; ?>" class="" >Ubah Data</a> <br> <br>
				<a href="index.php?halaman=hapus_guest&id_guest=<?php echo $value['id_guest']; ?>" class="" onclick="return confirm('hapus data tema guest teacher <?php echo $value["tema_guest"]; ?>') " >Hapus Data</a> 
				
				
						
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
