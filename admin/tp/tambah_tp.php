<h1>Tambah Data Tahun Pelajaran</h1>
<hr>

<?php 
	// $data_mapel1 = $mapel1->tampil_mapel1();
	// $data_mapel2 = $mapel2->tampil_mapel2();
	// $data_mapel3 = $mapel3->tampil_mapel3();
	
	$data_tp = $tp->tampil_tp_admin();
	
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
				<label>Nama Tahun Pelajaran</label>
				<input type="text" name="nama_tp" class="form-control" required="">
			</div>


		
			
			


			
			
			<button class="btn btn-primary" name="simpan">Simpan</button>

		</form>

		<?php 
			if (isset($_POST['simpan']))
			{
				$tp->simpan_tp($_POST['nama_tp']);

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=tp'</script>";
			}
		?>

	</div>
</div>