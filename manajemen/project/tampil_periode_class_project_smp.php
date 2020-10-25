<?php 
$id_semester = $_GET['id_semester'];

//$data_periode = $project->ambil_periode_project_admin($id_semester);
$semua_project = $project->tampil_class_project_periode_smp($id_semester);





?>

<div class="row">
	<div class="col-md-6">
		<h3>Data Class Project SMP </h3>
		<h3>Sekolah Sukma Bangsa <?php echo  ($db_lokasi)?></h3>
	</div>
	<div class="col-md-6">
		<div class="tambah-user hidden-print">
		<a href="index.php?halaman=cek_tampil_periode_class_project_smp" class="btn btn-primary">Pilih Semester</a>
			
		</div>
	</div>


</div>



<!DOCTYPE html>
<html>
<head>
	<title>Data Class Project SMP</title>
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">
</head>
<body>
	
<!-- <form action="upload_laporan_project.php" method="POST" enctype="multipart/form-data">	 -->

<div class="row">
	<div class="col-md-12">
	
		<table class="table table-hover table-striped" id="data-table">
			
			<thead>
				<tr>
					<th>No</th>
					<th>Semester</th>
					<th>Kelas</th>
					<th>Koordinator Pelaksana</th>
					<th>Tema Class Project</th>
					<th>Mata Pelajaran</th>	
					<th>Waktu Pelaksanaan</th>				
					<th>Hasil Produk</th>
					<th> Biaya (Rp)</th>
					<th class="hidden-print">Laporan</th>
					<!-- <th class="hidden-print">Proposal</th> -->
					<!-- <th class="hidden-print">Opsi</th> -->
					
				</tr>
			</thead>
				
			<tbody>
				<?php foreach ($semua_project as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td><?php echo $value['nama_semester']; ?> </td>
			
			<td><?php echo $value['nama_kelas']; ?> <br> <?php echo $value['nama_kelas2'] ?> <br> <?php echo $value['nama_kelas3'] ?> <br> <?php echo $value['nama_kelas4'] ?> </td>
			<td><?php echo $value['nama_guru']; ?></td>
			<td><?php echo $value['tema_project']; ?></td>
			<td><?php echo $value['nama_mapel1'] ;?> <br> <?php echo $value['nama_mapel2'] ;?> <br> <?php echo $value['nama_mapel3'] ;?> <br> <?php echo $value['nama_mapel4'] ;?> </td>
			<td><?php echo tanggal_indo($value['waktu_1']) ?> s/d <?php echo tanggal_indo($value['waktu_2']) ?></td>
			<td><?php echo $value['hasil_project'] ?></td>
			<td><?php echo $value['biaya_project'] ?></td>
			<td class="hidden-print"><?php echo $value['laporan'] ?>  <br> <br>
			<!--	<a href="index.php?halaman=upload_laporan_class_project&id_project=<?php // echo $value['id_project']; ?>" class="" >Upload Laporan</a> 	<br>  -->


				<a href="../laporan/class_project/<?php echo $value['laporan'] ?>" class="" >Download Laporan</a> <br>
				
			</td>
			<!-- <td class="hidden-print"><?php //echo $value['proposal'] ?>  <br>
				<a href="index.php?halaman=upload_proposal_class_project&id_project=<?php //echo $value['id_project']; ?>" class="" >Upload</a> 	<br>


				<a href="../laporan/proposal/<?php // echo $value['proposal'] ?>" class="" >Download</a>
				
			</td>
 -->
		

			
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