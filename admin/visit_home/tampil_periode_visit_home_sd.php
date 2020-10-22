<?php 
$id_semester = $_GET['id_semester'];

//$data_periode = $project->ambil_periode_project_admin($id_semester);
$semua_visit_home = $visit_home->tampil_visit_home_periode_sd($id_semester);





?>

<div class="row">
	<div class="col-md-6">
		<h3>Data Home Visit SD </h3>
		<h3>Sekolah Sukma Bangsa <?php echo  ($db_lokasi)?></h3>
	</div>
	<div class="col-md-6">
		<div class="tambah-user hidden-print">
		<a href="index.php?halaman=cek_tampil_periode_visit_home_sd" class="btn btn-primary">Pilih Semester</a>
			
		</div>
	</div>


</div>



<!DOCTYPE html>
<html>
<head>
	<title>Data Home Visit SD</title>
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">
</head>
<body>
	
<!-- <form action="upload_laporan_visit.php" method="POST" enctype="multipart/form-data">	 -->

<div class="row">
	<div class="col-md-12">
	
		<table class="table table-bordered" id="data-table">
			
			<table class="table table-bordered" id="data-table">
			
			<thead>
				<tr>
					<th>No</th>
					<th>Jenjang</th>
					<th>Koordinator Pelaksana</th>
					<th>Tanggal kunjungan</th>
					<th>Nama Siswa</th>
					<th>Nama Ayah & Ibu</th>
										
					<th>Tujuan Kunjungan</th>
					<th>Hasil Wawancara & Observasi</th>
					<th>Tindak Lanjut Kunjungan</th>	
					<th class="hidden-print">Laporan</th>					
					
				</tr>
			</thead>
				
			<tbody>
				<?php foreach ($semua_visit_home as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td> <?php echo $value['nama_semester']; ?></td>
			<td><?php echo $value['nama_guru']; ?>  </td>
			<td><?php echo tanggal_indo($value['waktu_1']) ?></td>
			<td><?php echo $value['id_siswa']; ?>
			</td>
			
			<td><?php echo $value['ortu']; ?>		</td>
			
			<td><?php echo $value['tujuan_visit_home']; ?></td>
			<td><?php echo $value['hasil_visit_home']; ?></td>
			<td><?php echo $value['lanjutan_visit_home']; ?></td>			
			
			<td class="hidden-print"><?php echo $value['laporan'] ?> <br> <br> 
				
				<a href="../laporan/visit_home/<?php echo $value['laporan'] ?>" class="" >Download Laporan</a>	
			</td>
			
		</tr>
		<?php endforeach ?>
					
			</tbody>
		</table>
			<div class="text-right">
<a href="" onclick="print()" class="btn btn-success hidden-print"><i class="fa fa-print"></i> Cetak</a>
</div>
</div>
		
	
<!-- </form> -->
	
</body>
</html>