<h1>Data Class Project</h1>
<hr>
 <?php  
include_once "../config/class.php";

$semua_level = $level->tampil_level();
$semua_project = $project->tampil_project();
$semua_mapel = $mapel->tampil_mapel();


	// echo "<pre>";
	// print_r($semua_project);
	// echo "</pre>";

	// // echo "<pre>";
	// // print_r($semua_level);
	// // echo "</pre>";

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
	

		<table class="table table-bordered">
			<thead>
				<tr>
					<th>No</th>
					<th>Level</th>
					<th>Judul Class Project</th>
					<th>Waktu Pelaksanaan</th>
					<th>Mata Pelajaran Kolaborasi 1</th>
					<th>Mata Pelajaran Kolaborasi 2</th>
					<th>Mata Pelajaran Kolaborasi 3</th>
					<th>Mata Pelajaran Kolaborasi 4</th>
					<th>Hasil Akhir</th>
					<th>Perkiraan Biaya</th>
					<th>Opsi</th>
				</tr>
			</thead>
				
			<tbody>
				<?php foreach ($semua_project as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td><?php echo $value['level'];?></td>
			<td><?php echo $value['judul_project']; ?></td>
			<td><?php echo tanggal_indo ($value['waktu_1']) ;?> <b>s/d</b> <?php echo tanggal_indo($value['waktu_2']); ?></td>
			<td><?php echo $value['id_mapel1'] ?></td>
			<td><?php echo $value['id_mapel2'] ?></td>
			<td><?php echo $value['id_mapel3'] ?></td>
			<td><?php echo $value['id_mapel4'] ?></td>
			<td><?php echo $value['hasil_akhir'] ?></td>
			<td><?php echo $value['biaya'] ?></td>



			<td>
				<a href="" class="btn btn-warning">Ubah</a>
				<a href="" class="btn btn-danger" onclick="">Hapus</a>
			</td>
		</tr>
		<?php endforeach ?>
					
			</tbody>
		</table>

	
</body>
</html>