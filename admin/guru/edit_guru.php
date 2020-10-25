<?php  
	
	$id_guru = $_GET['id_guru'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

	$detail_guru = $guru->ambil_guru_admin($id_guru);



// echo "<pre>";
// print_r($detail_pengguna);
// echo "</pre>";
	$data_guru = $guru->tampil_guru_admin();
	$data_jenjang = $jenjang->tampil_jenjang_admin();
	// $data_mapel = $mapel->tampil_mapel();

// 	echo "<pre>";
// print_r($data_level);
// echo "</pre>";



?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Data Guru</title>
</head>
<body>
	<h1>Edit Guru</h1>
	<hr>
	
	<form method="POST">


		
		<div class="form-group">
			<label>Nama Guru</label>
			<input type="text" name="nama_guru" class="form-control" value="<?php echo $detail_guru['nama_guru']; ?>">
		</div>

		<div class="form-group">
			<label>NIP Guru</label>
			<input type="text" name="nip_guru" class="form-control" value="<?php echo $detail_guru['nip_guru']; ?>">
		</div>

		<div class="form-group">
			<label>Jenjang</label>
			<select class="form-control" name="id_jenjang">
				<option value="">Pilih Jenjang</option>
				
				<?php foreach ($data_jenjang as $key => $value): ?>
					<option value="<?php echo $value['id_jenjang']; ?>" <?php if($value['id_jenjang']==$detail_guru['id_jenjang']) {echo "selected";} ?>> <?php echo $value['nama_jenjang'] ?></option>
					
				<?php endforeach ?>

			</select>
		</div>

		<div class="form-group">
						<label>Status Guru</label>
				<select class="form-control" name="status_guru" value="">
					<option value="<?php echo $detail_guru['status_guru']; ?>" hidden><?php echo $detail_guru['status_guru']; ?></option>
					<option value="SDK">SDK</option>
					<option value="SDK HONORER">SDK HONORER</option>
					<option value="OJT">OJT</option>
					<option value="NON SDK">NON SDK</option>
					<option value="TIDAK AKTIF">TIDAK AKTIF</option>
				</select>
		</div>

		<button class="btn btn-primary" name="ubah">UBAH</button>

		<?php
			//jika ada tombol ubah

			if (isset($_POST['ubah']))
			{
				// obyek user mengakses fungsi ubah user berdasarkan id user dari url
				 $guru->ubah_guru($_POST['id_jenjang'], $_POST['nama_guru'], $_POST['nip_guru'], $_GET['id_guru'], $_POST['status_guru']);

				echo "<script>alert('Data berhasil diubah');</script>";
				echo "<script>location='index.php?halaman=guru';</script>";
			  
			  	
			} 
			    
		?>
	</form>

</body>
</html>