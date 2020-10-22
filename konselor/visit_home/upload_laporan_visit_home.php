
<?php  
	
	$id_visit_home = $_GET['id_visit_home'];
// 	echo "<pre>";
// print_r($id_user);
// echo "</pre>";

$detail_visit_home = $visit_home->ambil_visit_home($id_visit_home);
$data_mapel = $mapel->tampil_mapel();
$data_kelas = $kelas->tampil_kelas_admin();
$data_guru = $guru->tampil_guru_admin();
$data_jenjang = $jenjang->tampil_jenjang_admin();
$data_semester = $semester->tampil_semester_admin();
$semua_mapel1 = $mapel1->tampil_mapel1_admin();
$semua_mapel2 = $mapel2->tampil_mapel2_admin();
$semua_mapel3 = $mapel3->tampil_mapel3_admin();
$semua_mapel4 = $mapel4->tampil_mapel4_admin();


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
	<title>Upload Laporan Home Visit</title>
</head>
<body>
	<h1>Upload Laporan Home Visit</h1>
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

				move_uploaded_file($lokasi, "../laporan/visit_home/$nama");
				$database = new mysqli("localhost", "root", "kebersamaan", "simfoni");
				$database->query("UPDATE visit_home SET laporan='$nama' WHERE id_visit_home='$id_visit_home'");
				}
				else
				{
					$database = new mysqli("localhost", "root", "kebersamaan", "simfoni");
					$database->query("UPDATE visit_home SET laporan='$nama' WHERE id_visit_home='$id_visit_home'");
				}

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=tampil_visit_home'</script>";

				
			}
		?>

	</div>
</div>

</body>
</html>