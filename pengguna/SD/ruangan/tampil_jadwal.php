<div class="row">
	<div class="col-md-6">
		<h3>Jadwal Tetap Pemakaian Ruangan</h3>
		<h3>Sekolah Sukma Bangsa <?php echo  ($db_lokasi)?></h3>
	</div>
	
	



</div>
 <?php  
// include_once "../config/class.php";

// $semua_jenjang = $jenjang->tampil_jenjang();


$semua_jadwal = $jadwal->tampil_jadwal();


?>


<!DOCTYPE html>
<html>
<head>
	<title>Data Pemakaian Ruangan</title>
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
					<th>Level</th>	
					<th>Hari</th>	
					<th>Nama Ruang</th>
					<th>Jam Pemakaian</th>
					<th>Keperluan</th>
					
					
					
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
		
			
		</tr>
		<?php endforeach ?>
					
			</tbody>
		</table>
			
</div>
		
	
<!-- </form> -->
	
</body>
</html>