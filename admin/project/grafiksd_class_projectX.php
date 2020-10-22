<div class="row">
	<div class="col-md-6">
		<h3>Grafik SD</h3>
		<h3>Sekolah Sukma Bangsa Bireuen</h3>
	</div>
	


</div>

 <?php  
// include_once "../config/class.php";

// $semua_jenjang = $jenjang->tampil_jenjang();


$semua_project = $project->grafiksd_project_admin();

//$semua_mapel = $mapel->tampil_mapel();
 
// $semua_mapel2 = $mapel2->tampil_mapel2();
// $semua_mapel3 = $mapel3->tampil_mapel3();
// $semua_mapel4 = $mapel4->tampil_mapel4();

	/*echo "<pre>";
	print_r($semua_project);
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
	<title>Data Class Project</title>
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">
</head>
<body>
	
<!-- <form action="upload_laporan_project.php" method="POST" enctype="multipart/form-data">	 -->

<div class="row">
	<div class="col-md-12">
	
		<table class="table table-bordered" id="data-table">
			
			<thead>
				<tr>
					<th>No</th>
					<th>ID</th>
					<th>Jenajng</th>
					<th>Semester</th>
					<th>Jumlah</th>
					
					
					
				</tr>
			</thead>
				
			<tbody>
				<?php foreach ($semua_project as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td><?php echo $value['id_project']; ?></td>
			<td><?php echo $value['nama_jenjang']; ?></td>
			<td><?php echo $value['nama_semester']; ?>  </td>
			<td><?php echo $value['jumlah']; ?></td>
			
			

			
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