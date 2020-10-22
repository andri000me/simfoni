<?php  
	
	$id_semester = $_GET['id_semester'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

	$detail_semester = $semester->ambil_semester($id_semester);



// echo "<pre>";
// print_r($detail_pengguna);
// echo "</pre>";
	$data_semester = $semester->tampil_semester_admin();
	$data_jenjang = $jenjang->tampil_jenjang_admin();
	

// 	echo "<pre>";
// print_r($data_level);
// echo "</pre>";



?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Semester</title>
</head>
<body>
	<h1>Edit Semester</h1>
	<hr>
	
	<form method="POST">


		
		<div class="form-group">
			<label>Nama Semester</label>
			<input type="text" name="nama_semester" class="form-control" value="<?php echo $detail_semester['nama_semester']; ?>">
			<div class="form-group">
						<label>Status</label>
				<select class="form-control" name="status" value="">
					<option value="<?php echo $detail_semester['status']; ?>" hidden><?php echo $detail_semester['status']; ?></option>
					<option value="Aktif">Aktif</option>
					<option value="Tidak Aktif">Tidak Aktif</option>
				</select>
		</div>
		</div>

		
		

		
		
		<button class="btn btn-primary" name="ubah">Ubah</button>

		<?php
			//jika ada tombol ubah

			if (isset($_POST['ubah']))
			{
				// obyek user mengakses fungsi ubah user berdasarkan id user dari url
				 $semester->ubah_semester($_POST['nama_semester'], $_GET['id_semester'], $_POST['status']);

				echo "<script>alert('Data berhasil diubah');</script>";
				echo "<script>location='index.php?halaman=semester';</script>";
			  
			  	
			} 
			    
		?>
	</form>

</body>
</html>