<div class="row">
	<div class="col-md-6">
		<h1>DATA PENGGUNA</h1>
	</div>
	<div class="col-md-6">
		<div class="tambah-user">
		<a href="index.php?halaman=tambah_pengguna" class="btn btn-primary">Tambah</a>
			
		</div>
	</div>


</div>
<hr>

<?php 
	// $user adalah objek user dari class.php
	// tampil_user adalah fungsi pada class user dari class.php
	// objek user menjalankan fungsi tampil user
	$data_pengguna = $pengguna->tampil_pengguna();
// 	echo "<pre>";
// print_r($data_pengguna);
// echo "</pre>";
?>
<!-- melihat isi array data user -->
<!-- <pre><?php //print_r($data_user); ?></pre>  -->

<table class="table table-hover table-striped" id="data-table" >
	<thead>
		<tr>
			<th>No</th>			
			<th>Nama Pengguna</th>	
			<th>Jenjang</th>		
			<th>Username</th> 
			
			<th>Opsi</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data_pengguna as $key => $value): ?>
			
		<tr>
			<td><?php echo $key+1; ?></td>
			<td><?php echo $value['nama_guru']; ?></td>			
			<td><?php echo $value['nama_jenjang']; ?></td>			
			<td><?php echo $value['username_pengguna'] ?></td>
			
			<td>
				<a href="index.php?halaman=ubah_password_pengguna&id_pengguna=<?php echo $value['id_pengguna'] ;?>" class="btn btn-info">Ubah Password</a>
				<a href="index.php?halaman=edit_pengguna&id_pengguna=<?php echo $value['id_pengguna'] ;?>" class="btn btn-warning">Edit</a>
				<a href="index.php?halaman=hapus_pengguna&id_pengguna=<?php echo $value['id_pengguna']; ?>" class="btn btn-danger" onclick="return confirm('hapus data <?php echo $value["nama_guru"]; ?> ?')">Hapus</a>
			</td>
		</tr>
		<?php endforeach ?>
	</tbody>
</table>