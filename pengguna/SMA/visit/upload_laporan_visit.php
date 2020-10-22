
<?php  
	
	$id_visit = $_GET['id_visit'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

$detail_visit = $visit->ambil_visit($id_visit);
$data_mapel = $mapel->tampil_mapel();
$data_kelas = $kelas->tampil_kelas();
$data_guru = $guru->tampil_guru();
$data_jenjang = $jenjang->tampil_jenjang();
$data_semester = $semester->tampil_semester_admin();
$semua_mapel1 = $mapel1->tampil_mapel1();
$semua_mapel2 = $mapel2->tampil_mapel2();
$semua_mapel3 = $mapel3->tampil_mapel3();
$semua_mapel4 = $mapel4->tampil_mapel4();


// echo "<pre>";
// print_r($detail_visit);
// echo "</pre>";
	
// // 	$data_jenjang = $jenjang->tampil_jenjang();

// 	echo "<pre>";
// print_r($semua_mapel1);
// echo "</pre>";



?>

<!DOCTYPE html>
<html>
<head>
	<title>Upload Laporan School Visit SMA</title>
</head>
<body>
	<h1>Upload Laporan School Visit SMA</h1>
	<hr>
	
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">

<div class="row">
	<div class="col-md-6">
		<form method="POST" enctype="multipart/form-data">			
			
		
				
			<div class="form-group">
				<label>Upload Laporan</label>
				<input type="file" name="file_up" class="form-control" >
			</div>
			
			<button class="btn btn-primary" name="upload">Upload</button>

		</form>

		<?php 
			if (isset($_POST['upload']))
			{
				
				$nama = $_FILES['file_up']['name'];
				$lokasi = $_FILES['file_up']['tmp_name'];

				if (!empty($lokasi))
				{

				move_uploaded_file($lokasi, "../../laporan/school_visit/$nama");
				$database = new mysqli("localhost", "root", "kebersamaan", "simfoni");
				$database->query("UPDATE visit SET laporan='$nama' WHERE id_visit='$id_visit'");
				}
				else
				{
					$database = new mysqli("localhost", "root", "kebersamaan", "simfoni");
					$database->query("UPDATE visit SET laporan='$nama' WHERE id_visit='$id_visit'");
				}

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=tampil_visit'</script>";

				
			}
		?>

	</div>
</div>

</body>
</html>