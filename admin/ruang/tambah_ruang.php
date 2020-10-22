<h3>Tambah Data Ruang</h3>
<hr>

<?php 
	// $data_mapel1 = $mapel1->tampil_mapel1();
	// $data_mapel2 = $mapel2->tampil_mapel2();
	// $data_mapel3 = $mapel3->tampil_mapel3();
	
	$data_ruang = $ruang->tampil_ruang_admin();
	
	
?>
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">

<div class="row">
	<div class="col-md-6">
		<form method="POST">			
					
			<div class="form-group">
				<label>Nama ruang</label>
				<input type="text" name="nama_ruang" class="form-control" required="">
			</div>


			

			
			


			
			
			<button class="btn btn-primary" name="simpan">Simpan</button>

		</form>

		<?php 
			if (isset($_POST['simpan']))
			{
				$ruang->simpan_ruang($_POST['nama_ruang']);

				echo "<script>alert('data tersimpan')</script>";
				echo "<script>location='index.php?halaman=ruang'</script>";
			}
		?>

	</div>
</div>