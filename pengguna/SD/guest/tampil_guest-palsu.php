<?php 

/*$detail_guest = $guest->ambil_guest($id_guest);*/
	/*$ambil_semester = $semester->ambil_semester($id_semester);*/
$data_semester = $semester->tampil_semester_admin();
 ?>

<div class="row">
	<div class="col-md-6">
		<h3>Data Guest Teacher SD</h3>
		<h3>Sukma Bangsa Bireuen</h3>
	</div>
	<div class="col-md-6">
		<div class="tambah-user hidden-print">
		<a href="index.php?halaman=tambah_guest" class="btn btn-primary">Tambah Data Guest Teacher</a>
			
		</div>
<form method="POST">
		<div class="form-group">
				<label>Semester</label>
				<select class="form-control" name="id_semester">
					<option value="">Pilih Semester</option>
				<?php foreach ($data_semester as $key => $value): ?>
					<option value="<?php echo $value['id_semester'] ?>" > <?php echo $value['nama_semester'] ?> </option>					
				<?php endforeach ?>					
				</select>
			</div>
	</div>
	<button class="btn btn-primary" name="proses">Proses</button>
			</form>

	<?php 
			if (isset($_POST['proses']))
			{
				$id_semester = $semester->ambil_semester($_POST['id_semester']);


				if ($id_semester == 'id_semester') 
				{
					echo "<script>alert('semester tidak ada data') </script>";
					echo "<script>location='index.php?halaman=tampil_guest' </script>";

				} else {
					echo "<script>location='index.php?halaman=tampil_pilih_guest&id_semester=$id_semester' </script>";
				}
				
			}
		?>

</div>
 <?php  
// include_once "../config/class.php";

// $semua_jenjang = $jenjang->tampil_jenjang();


$semua_guest = $guest->tampil_guest();
$semua_mapel1 = $mapel1->tampil_mapel1();
 
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
	<title>Data Guest Teacher SD</title>
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
					<th>Perkiraan Biaya</th>
					<th>Laporan</th>
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
			<td><?php echo $value['nama_kelas']; ?></td>
			<td><?php echo $value['nama_mapel1']; ?></td>
			<td><?php echo $value['tema_guest']; ?></td>
			<td><?php echo $value['nama_guru'] ;?>  </td>
			<td><?php echo $value['nama_guest'] ;?>  </td>
			<td><?php echo $value['hasil_guest'] ?></td>
			<td><?php echo tanggal_indo($value['waktu_1']) ?> s/d <?php echo tanggal_indo($value['waktu_2']) ?></td>
			<td><?php echo $value['biaya_guest'] ?></td>
			<td><?php echo $value['laporan'] ?></td>

			<td class="hidden-print">
				<a href="index.php?halaman=edit_guest&id_guest=<?php echo $value['id_guest']; ?>" class="" >Ubah</a> <br>
				<a href="index.php?halaman=hapus_guest&id_guest=<?php echo $value['id_guest']; ?>" class="" onclick="return confirm('hapus data tema guest teacher <?php echo $value["tema_guest"]; ?>') " >Hapus</a> <br>
				<a href="index.php?halaman=upload_laporan_guest&id_guest=<?php echo $value['id_guest']; ?>" class="" >Upload Laporan</a> <br>	


				<a href="../../laporan/guest_teacher/<?php echo $value['laporan'] ?>" class="" >Download Laporan</a>	
						
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