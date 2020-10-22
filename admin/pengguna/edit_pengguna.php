<?php  
	
	$id_pengguna = $_GET['id_pengguna'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

	$detail_pengguna = $pengguna->ambil_pengguna($id_pengguna);
	$data_pengguna = $pengguna->tampil_pengguna();


// echo "<pre>";
// print_r($detail_pengguna);
// echo "</pre>";
	// $data_guru = $guru->tampil_guru();
	$data_jenjang = $jenjang->tampil_jenjang_admin();
	// $data_mapel = $mapel->tampil_mapel();

// 	echo "<pre>";
// print_r($data_level);
// echo "</pre>";



?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Pengguna</title>
</head>
<body>
	<h1>Edit Pengguna</h1>
	<hr>
	
	<form method="POST">


		
		<div class="form-group">
			<label>Nama Pengguna</label>
			<select class="form-control" name="id_guru">
				<option value="">Pilih Pengguna</option>
				
				<?php foreach ($data_pengguna as $key => $value): ?>
					<option value="<?php echo $value['id_guru']; ?>" <?php if($value['id_guru']==$detail_pengguna['id_guru']) {echo "selected";} ?>> <?php echo $value['nama_guru'] ?></option>
					
				<?php endforeach ?>

			</select>
		</div>


		
		<div class="form-group">
			<label>Jenjang</label>
			<select class="form-control" name="id_jenjang">
				<option value="">Pilih Jenjang</option>
				
				<?php foreach ($data_jenjang as $key => $value): ?>
					<option value="<?php echo $value['id_jenjang']; ?>" <?php if($value['id_jenjang']==$detail_pengguna['id_jenjang']) {echo "selected";} ?>> <?php echo $value['nama_jenjang'] ?></option>
					
				<?php endforeach ?>

			</select>
		</div>

		
		<div class="form-group">
			<label>Username Pengguna</label>
			<input type="text" name="username_pengguna" class="form-control" value="<?php echo $detail_pengguna['username_pengguna']; ?>">
		</div>
		
		<button class="btn btn-primary" name="ubah">Ubah</button>

		<?php
			//jika ada tombol ubah

			if (isset($_POST['ubah']))
			{
				// obyek user mengakses fungsi ubah user berdasarkan id user dari url
				 $pengguna->ubah_pengguna($_POST['id_jenjang'], $_POST['id_guru'], $_POST['username_pengguna'], $_GET['id_pengguna']);

				echo "<script>alert('Data berhasil diubah');</script>";
				echo "<script>location='index.php?halaman=pengguna';</script>";
			  
			  	
			} 
			    
		?>
	</form>

</body>
</html>