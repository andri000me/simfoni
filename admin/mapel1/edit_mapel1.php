<?php  
	
	$id_mapel1 = $_GET['id_mapel1'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

	$detail_mapel1 = $mapel1->ambil_mapel1_admin($id_mapel1);



// echo "<pre>";
// print_r($detail_pengguna);
// echo "</pre>";
	$data_mapel1 = $mapel1->tampil_mapel1_admin();
	$data_jenjang = $jenjang->tampil_jenjang_admin();
	

// 	echo "<pre>";
// print_r($data_level);
// echo "</pre>";



?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Mata Pelajaran Kolaborasi 1</title>
</head>
<body>
	<h1>Edit Mata Pelajaran Kolaborasi 1</h1>
	<hr>
	
	<form method="POST">


		
		<div class="form-group">
			<label>Jenjang</label>
			<select class="form-control" name="id_jenjang">
				<option value="">Pilih Jenjang</option>
				
				<?php foreach ($data_jenjang as $key => $value): ?>
					<option value="<?php echo $value['id_jenjang']; ?>" <?php if($value['id_jenjang']==$detail_mapel1['id_jenjang']) {echo "selected";} ?>> <?php echo $value['nama_jenjang'] ?></option>
					
				<?php endforeach ?>

			</select>
		</div>

		<div class="form-group">
			<label>Mata Pelajaran</label>
			<input type="text" name="nama_mapel1" class="form-control" value="<?php echo $detail_mapel1['nama_mapel1']; ?>">
		</div>

		

		
	
		<button class="btn btn-primary" name="ubah">Ubah</button>

		<?php
			//jika ada tombol ubah

			if (isset($_POST['ubah']))
			{
				// obyek user mengakses fungsi ubah user berdasarkan id user dari url
				 $mapel1->ubah_mapel1( $_POST['id_jenjang'], $_POST['nama_mapel1'], $_GET['id_mapel1']);

				echo "<script>alert('Data berhasil diubah');</script>";
				echo "<script>location='index.php?halaman=mapel1';</script>";
			  
			  	
			} 
			    
		?>
	</form>

</body>
</html>