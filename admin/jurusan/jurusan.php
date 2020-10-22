<div class="row">
	<div class="col-md-6">
		<h1>Data Jurusan</h1>
	</div>
	<div class="col-md-6">
		<div class="tambah-user">
		<a href="index.php?halaman=tambah_jurusan" class="btn btn-primary">Tambah</a>
			
		</div>
	</div>


</div>
<hr>
 <?php  
// include_once "../config/class.php";

// $semua_jenjang = $jenjang->tampil_jenjang();


$semua_jurusan = $jurusan->tampil_jurusan_admin();
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

/*	 echo "<pre>";
	 print_r($semua_jurusan);
	 echo "</pre>";
*/
?>




<table class="table table-bordered" id="data-table" >
	<thead>
		<tr>
			<th>No</th>
			<th>Nama jurusan</th> 
			<th>Opsi</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($semua_jurusan as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td><?php echo $value['nama_jurusan']; ?></td>	
			
			
			
			<td>
				<a href="index.php?halaman=edit_jurusan&id_jurusan=<?php echo $value['id_jurusan'] ?>" class="btn btn-warning">Edit</a>
				<a href="index.php?halaman=hapus_jurusan&id_jurusan=<?php echo $value['id_jurusan']; ?>" class="btn btn-danger" onclick="return confirm('hapus data <?php echo $value["nama_jurusan"]; ?> ?')">Hapus</a>
			</td>
		</tr>
		<?php endforeach ?>
	</tbody>
</table>