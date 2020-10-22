<?php  
	
	$id_tp = $_GET['id_tp'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

	


// echo "<pre>";
// print_r($detail_pengguna);
// echo "</pre>";
	$detail_tp = $tp->ambil_tp_admin($id_tp);
	$data_tp = $tp->tampil_tp_admin();

	

// 	echo "<pre>";
// print_r($data_level);
// echo "</pre>";



?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Tahun Pelajaran</title>
</head>
<body>
	<h1>Edit Tahun Pelajaran</h1>
	<hr>
	
	<form method="POST">


		
		<div class="form-group">
			<label>Nama Tahun Pelajaran</label>
			<input type="text" name="nama_tp" class="form-control" value="<?php echo $detail_tp['nama_tp']; ?>">
		</div>

		
		

		
		
		<button class="btn btn-primary" name="ubah">Ubah</button>

		<?php
			//jika ada tombol ubah

			if (isset($_POST['ubah']))
			{
				// obyek user mengakses fungsi ubah user berdasarkan id user dari url
				 $tp->ubah_tp($_POST['nama_tp'], $_GET['id_tp']);

				echo "<script>alert('Data berhasil diubah');</script>";
				echo "<script>location='index.php?halaman=tp';</script>";
			  
			  	
			} 
			    
		?>
	</form>

</body>
</html>