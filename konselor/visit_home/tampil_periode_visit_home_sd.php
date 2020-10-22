<?php 
$id_semester = $_GET['id_semester'];

//$data_periode = $project->ambil_periode_project_admin($id_semester);
$semua_visit_home = $visit_home->tampil_visit_home_periode_sd($id_semester);





?>

<div class="row">
	<div class="col-md-6">
		<h3>Data School Visit SD </h3>
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
	<title>Data School Visit SD</title>
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
					<th>Jenjang & Semester</th>
					<th>Koordinator Pelaksana </th>
					<th>Tanggal kunjungan</th>
					<th>Nama Siswa </th>
					<th>Nama Ayah & Ibu</th>
					<!-- <th>Alamat Siswa</th>					 -->
					<th>Tujuan Kunjungan</th>
					<th>Hasil Wawancara & Observasi</th>
					<th>Tindak Lanjut Kunjungan</th>	
					<th class="hidden-print">Opsi</th>
					
					
				</tr>
			</thead>
				
			<tbody>
				<?php foreach ($semua_visit_home as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td><?php echo $value['nama_jenjang']; ?> <br> <br> <?php echo $value['nama_semester']; ?></td>
			<td><?php echo $value['nama_guru']; ?>  </td>
			<td><?php echo tanggal_indo($value['waktu_1']) ?></td>
			<td><?php echo $value['id_siswa']; ?> <br> <br> Kelas: 
				<?php echo $value['nama_kelas']; ?> 
			
			</td>
			
			<td><?php echo $value['ortu']; ?> 		</td>
			
			<td><?php echo $value['tujuan_visit_home']; ?></td>
			<td><?php echo $value['hasil_visit_home']; ?></td>
			<td><?php echo $value['lanjutan_visit_home']; ?></td>			
			<td class="hidden-print"> 

				<?php echo $value['laporan'] ?> <br> <br>
			<!-- <?php //echo $value['proposal'] ?> <br> -->
				<a href="index.php?halaman=upload_laporan_visit_home&id_visit_home=<?php echo $value['id_visit_home']; ?>" class="" >Upload File</a> <br>
				<!-- <a href="index.php?halaman=upload_proposal_visit_home&id_visit_home=<?php //echo $value['id_visit_home']; ?>" class="" >Upload Proposal</a> <br>	 -->
				<a href="../laporan/visit_home/<?php echo $value['laporan'] ?>" class="" >Download File</a>	 <br>

					

				<a href="index.php?halaman=edit_visit_home&id_visit_home=<?php echo $value['id_visit_home']; ?>" class="" >Ubah Data</a> <br> <br>
				<a href="index.php?halaman=hapus_visit_home&id_visit_home=<?php echo $value['id_visit_home']; ?>" class="" onclick="return confirm('hapus data home visit <?php echo $value["tujuan_visit_home"]; ?>') " >Hapus Data</a> 
				
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