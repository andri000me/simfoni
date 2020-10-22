<h1>Tambah Data Jenis Kelamin</h1>
<hr>

<?php 
	// $data_mapel1 = $mapel1->tampil_mapel1();
	// $data_mapel2 = $mapel2->tampil_mapel2();
	// $data_mapel3 = $mapel3->tampil_mapel3();
	
	$data_jk = $jk->tampil_jk_admin();
	
	// $data_jenjang = $jenjang->tampil_jenjang_admin();


	// echo "<pre>";
	// print_r($data_jenjang);
	// echo "</pre>";

	// echo "<pre>";
	// print_r($data_mapel);
	// echo "</pre>";

	// echo "<pre>";
	// print_r($data_jenjang);
	// echo "</pre>";
?>
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">

<div class="row">
	<div class="col-md-6">
		<form method="POST">			
					
			<div class="form-group">
				<label>Nama Jenis Kelamin</label>
				<input type="text" name="nama_jk" class="form-control" required="">
			</div>


		
			
			


			
			
			<button class="btn btn-primary" name="simpan">Simpan</button>

		</form>

		<?php 
			if (isset($_POST['simpan']))
			{
				$jk->simpan_jk($_POST['nama_jk']);

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=jk'</script>";
			}
		?>

	</div>
</div>