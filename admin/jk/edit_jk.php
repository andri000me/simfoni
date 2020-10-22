<?php  
	
	$id_jk = $_GET['id_jk'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

	


// echo "<pre>";
// print_r($detail_pengguna);
// echo "</pre>";
	$data_jk = $jk->tampil_jk_admin();

	

// 	echo "<pre>";
// print_r($data_level);
// echo "</pre>";



?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Jenis Kelamin</title>
</head>
<body>
	<h1>Edit Jenis Kelamin</h1>
	<hr>
	
	<form method="POST">


		
		<div class="form-group">
			<label>Nama Jenis Kelamin</label>
			<input type="text" name="nama_jk" class="form-control" value="<?php echo $detail_jk['nama_jk']; ?>">
		</div>

		
		

		
		
		<button class="btn btn-primary" name="ubah">Ubah</button>

		<?php
			//jika ada tombol ubah

			if (isset($_POST['ubah']))
			{
				// obyek user mengakses fungsi ubah user berdasarkan id user dari url
				 $jk->ubah_jk($_POST['nama_jk'], $_GET['id_jk']);

				echo "<script>alert('Data berhasil diubah');</script>";
				echo "<script>location='index.php?halaman=jk';</script>";
			  
			  	
			} 
			    
		?>
	</form>

</body>
</html>