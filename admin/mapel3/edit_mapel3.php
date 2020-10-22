<?php  
	
	$id_mapel3 = $_GET['id_mapel3'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

	$detail_mapel3 = $mapel3->ambil_mapel3_admin($id_mapel3);



// echo "<pre>";
// print_r($detail_pengguna);
// echo "</pre>";
	$data_mapel3 = $mapel3->tampil_mapel3_admin();
	$data_jenjang = $jenjang->tampil_jenjang_admin();
	

// 	echo "<pre>";
// print_r($data_level);
// echo "</pre>";



?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Mata Pelajaran Kolaborasi 3</title>
</head>
<body>
	<h1>Edit Mata Pelajaran Kolaborasi 3</h1>
	<hr>
	
	<form method="POST">


		
		<div class="form-group">
			<label>Jenjang</label>
			<select class="form-control" name="id_jenjang">
				<option value="">Pilih Jenjang</option>
				
				<?php foreach ($data_jenjang as $key => $value): ?>
					<option value="<?php echo $value['id_jenjang']; ?>" <?php if($value['id_jenjang']==$detail_mapel3['id_jenjang']) {echo "selected";} ?>> <?php echo $value['nama_jenjang'] ?></option>
					
				<?php endforeach ?>

			</select>
		</div>

		<div class="form-group">
			<label>Mata Pelajaran</label>
			<input type="text" name="nama_mapel3" class="form-control" value="<?php echo $detail_mapel3['nama_mapel3']; ?>">
		</div>

		

		
	
		<button class="btn btn-primary" name="ubah">Ubah</button>

		<?php
			//jika ada tombol ubah

			if (isset($_POST['ubah']))
			{
				// obyek user mengakses fungsi ubah user berdasarkan id user dari url
				 $mapel3->ubah_mapel3( $_POST['id_jenjang'], $_POST['nama_mapel3'], $_GET['id_mapel3']);

				echo "<script>alert('Data berhasil diubah');</script>";
				echo "<script>location='index.php?halaman=mapel3';</script>";
			  
			  	
			} 
			    
		?>
	</form>

</body>
</html>