<div class="row">
	<div class="col-md-6">
		<h1>DATA KELAS</h1>
	</div>
	<div class="col-md-6">
		<div class="tambah-user">
		<a href="index.php?halaman=tambah_kelas" class="btn btn-primary">Tambah</a>
			
		</div>
	</div>


</div>
<hr>
 <?php  
// include_once "../config/class.php";

// $semua_jenjang = $jenjang->tampil_jenjang();


$semua_kelas = $kelas->tampil_kelas_admin();
$semua_kelas2 = $kelas->tampil_kelas_admin2();
// $semua_jenjang = $jenjang->tampil_jenjang_admin();

// $semua_mapel = $mapel->tampil_mapel();
 
// $semua_mapel2 = $mapel2->tampil_mapel2();
// $semua_mapel3 = $mapel3->tampil_mapel3();
// $semua_mapel4 = $mapel4->tampil_mapel4();

	/*echo "<pre>";
	print_r($semua_kelas);
	echo "</pre>";
*/
	// // // echo "<pre>";
	// // // print_r($semua_jenjang);
	// // // echo "</pre>";

	// echo "<pre>";
	// print_r($semua_mapel);
	// echo "</pre>";

?>




<table class="table table-hover table-striped" id="data-table" >
	<thead>
		<tr>
			<th>No</th>
			<th>Nama Kelas</th> 
			<th>Jenjang</th>
			<th>Status</th>
			<th>Opsi</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($semua_kelas2 as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td><?php echo $value['nama_kelas']; ?></td>	
			<td><?php echo $value['nama_jenjang'] ?></td>	
			<td><?php echo $value['status'] ?></td>		
			
			
			<td>
				<a href="index.php?halaman=edit_kelas&id_kelas=<?php echo $value['id_kelas'] ?>" class="btn btn-warning">Edit</a>
				<a href="index.php?halaman=hapus_kelas&id_kelas=<?php echo $value['id_kelas']; ?>" class="btn btn-danger" onclick="return confirm('hapus data <?php echo $value["nama_kelas"]; ?> ?')">Hapus</a>
			</td>
		</tr>
		<?php endforeach ?>
	</tbody>
</table>