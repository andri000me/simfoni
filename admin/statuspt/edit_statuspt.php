<?php  
	
	$id_statuspt = $_GET['id_statuspt'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

	


// echo "<pre>";
// print_r($detail_pengguna);
// echo "</pre>";
	$data_statuspt = $statuspt->tampil_statuspt_admin();

	

// 	echo "<pre>";
// print_r($data_level);
// echo "</pre>";



?>

<!DOCTYPE html>
<html>
<head>
	<title>Status PT</title>
</head>
<body>
	<h1>Status PT</h1>
	<hr>
	
	<form method="POST">


		
		<div class="form-group">
			<label>Status PT</label>
			<input type="text" name="nama_statuspt" class="form-control" value="<?php echo $detail_statuspt['nama_statuspt']; ?>">
		</div>

		
		

		
		
		<button class="btn btn-primary" name="ubah">Ubah</button>

		<?php
			//jika ada tombol ubah

			if (isset($_POST['ubah']))
			{
				// obyek user mengakses fungsi ubah user berdasarkan id user dari url
				 $statuspt->ubah_statuspt($_POST['nama_statuspt'], $_GET['id_statuspt']);

				echo "<script>alert('Data berhasil diubah');</script>";
				echo "<script>location='index.php?halaman=statuspt';</script>";
			  
			  	
			} 
			    
		?>
	</form>

</body>
</html>