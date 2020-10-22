<?php  
	
	$id_jurusan = $_GET['id_jurusan'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

	


// echo "<pre>";
// print_r($detail_pengguna);
// echo "</pre>";
	$data_jurusan = $jurusan->tampil_jurusan_admin();

	

// 	echo "<pre>";
// print_r($data_level);
// echo "</pre>";



?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit jurusan</title>
</head>
<body>
	<h1>Edit jurusan</h1>
	<hr>
	
	<form method="POST">


		
		<div class="form-group">
			<label>Nama jurusan</label>
			<input type="text" name="nama_jurusan" class="form-control" value="<?php echo $detail_jurusan['nama_jurusan']; ?>">
		</div>

		
		

		
		
		<button class="btn btn-primary" name="ubah">Ubah</button>

		<?php
			//jika ada tombol ubah

			if (isset($_POST['ubah']))
			{
				// obyek user mengakses fungsi ubah user berdasarkan id user dari url
				 $jurusan->ubah_jurusan($_POST['nama_jurusan'], $_GET['id_jurusan']);

				echo "<script>alert('Data berhasil diubah');</script>";
				echo "<script>location='index.php?halaman=jurusan';</script>";
			  
			  	
			} 
			    
		?>
	</form>

</body>
</html>