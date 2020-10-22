<div class="row">
	<div class="col-md-6">
		<h1>DATA MATA PELAJARAN</h1>
	</div>
	<div class="col-md-6">
		<div class="tambah-user">
		<a href="index.php?halaman=tambah_mapel" class="btn btn-primary">Tambah</a>
			
		</div>
	</div>


</div>
<hr>
 <?php  
// include_once "../config/class.php";

// $semua_jenjang = $jenjang->tampil_jenjang();


// $semua_kelas = $kelas->tampil_kelas_admin();
$semua_jenjang = $jenjang->tampil_jenjang_admin();

$semua_mapel = $mapel->tampil_mapel();
 
// $semua_mapel2 = $mapel2->tampil_mapel2();
// $semua_mapel3 = $mapel3->tampil_mapel3();
// $semua_mapel4 = $mapel4->tampil_mapel4();

	/*echo "<pre>";
	print_r($semua_mapel);
	echo "</pre>";

	// // // echo "<pre>";*/
	// // // print_r($semua_jenjang);
	// // // echo "</pre>";

	// echo "<pre>";
	// print_r($semua_mapel);
	// echo "</pre>";

?>




<table class="table table-bordered" id="data-table" >
	<thead>
		<tr>
			<th>No</th>
			<th>Mata Pelajaran</th>
			<th>Jenjang</th>
			<th>Opsi</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($semua_mapel as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td><?php echo $value['nama_mapel']; ?></td>	
			<td><?php echo $value['nama_jenjang'] ?></td>		
			
			
			<td>
				<a href="index.php?halaman=edit_mapel&id_mapel=<?php echo $value['id_mapel'] ?>" class="btn btn-warning">Edit</a>
				<a href="index.php?halaman=hapus_mapel&id_mapel=<?php echo $value['id_mapel']; ?>" class="btn btn-danger" onclick="return confirm('hapus data <?php echo $value["nama_mapel"]; ?> ?')">Hapus</a>
			</td>
		</tr>
		<?php endforeach ?>
	</tbody>
</table>