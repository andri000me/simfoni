<?php  
	
	$id_kelas = $_GET['id_kelas'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

	$detail_kelas = $kelas->ambil_kelas($id_kelas);



// echo "<pre>";
// print_r($detail_pengguna);
// echo "</pre>";
	$data_kelas = $kelas->tampil_kelas_admin();
	$data_jenjang = $jenjang->tampil_jenjang_admin();
	

// 	echo "<pre>";
// print_r($data_level);
// echo "</pre>";



?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Kelas</title>
</head>
<body>
	<h1>Edit Kelas</h1>
	<hr>
	
	<form method="POST">


		
		<div class="form-group">
			<label>Nama Kelas</label>
			<input type="text" name="nama_kelas" class="form-control" value="<?php echo $detail_kelas['nama_kelas']; ?>">
		</div>

		
		<div class="form-group">
			<label>Jenjang</label>
			<select class="form-control" name="id_jenjang">
				<option value="">Pilih Jenjang</option>
				
				<?php foreach ($data_jenjang as $key => $value): ?>
					<option value="<?php echo $value['id_jenjang']; ?>" <?php if($value['id_jenjang']==$detail_kelas['id_jenjang']) {echo "selected";} ?>> <?php echo $value['nama_jenjang'] ?></option>
					
				<?php endforeach ?>

			</select>
		</div>

		<div class="form-group">
						<label>Status</label>
				<select class="form-control" name="status" value="">
					<option value="<?php echo $detail_kelas['status']; ?>" hidden><?php echo $detail_kelas['status']; ?></option>
					<option value="Aktif">Aktif</option>
					<option value="Tidak Aktif">Tidak Aktif</option>
				</select>
		</div>
		
		
		<button class="btn btn-primary" name="ubah">Ubah</button>

		<?php
			//jika ada tombol ubah

			if (isset($_POST['ubah']))
			{
				// obyek user mengakses fungsi ubah user berdasarkan id user dari url
				 $kelas->ubah_kelas($_POST['nama_kelas'], $_POST['id_jenjang'], $_GET['id_kelas'], $_POST['status']);

				echo "<script>alert('Data berhasil diubah');</script>";
				echo "<script>location='index.php?halaman=kelas';</script>";
			  
			  	
			} 
			    
		?>
	</form>

</body>
</html>