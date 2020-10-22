<?php  
	
	$id_ruang = $_GET['id_ruang'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

	$detail_ruang = $ruang->ambil_ruang($id_ruang);



// echo "<pre>";
// print_r($detail_pengguna);
// echo "</pre>";
	$data_ruang = $ruang->tampil_ruang_admin();
	

// 	echo "<pre>";
// print_r($data_level);
// echo "</pre>";



?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit ruang</title>
</head>
<body>
	<h1>Edit ruang</h1>
	<hr>
	
	<form method="POST">


		
		<div class="form-group">
			<label>Nama ruang</label>
			<input type="text" name="nama_ruang" class="form-control" value="<?php echo $detail_ruang['nama_ruang']; ?>">
		</div>

		

		
		
		<button class="btn btn-primary" name="ubah">Ubah</button>

		<?php
			//jika ada tombol ubah

			if (isset($_POST['ubah']))
			{
				// obyek user mengakses fungsi ubah user berdasarkan id user dari url
				 $ruang->ubah_ruang($_POST['nama_ruang'], $_GET['id_ruang']);

				echo "<script>alert('Data berhasil diubah');</script>";
				echo "<script>location='index.php?halaman=ruang';</script>";
			  
			  	
			} 
			    
		?>
	</form>

</body>
</html>